using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using U8.Interface.Bus.ApiService.Model;
using U8.Interface.Bus.ApiService.DAL;

namespace U8.Interface.Bus.ApiService.BLL
{


    /// <summary>
    /// 接口调用
    /// </summary>
    public class InvokeUtility
    {

        private int tasktype = 3;



        /// <summary>
        /// 入口函数
        /// </summary>
        /// <param name="vouchtype"></param>
        /// <param name="dsHead"></param>
        /// <param name="dsBody"></param>
        public void Run(string vouchtype, DataSet dsHead, DataSet dsBody)
        {

            Model.Synergismlog log = new Synergismlog();
            log.OP = (APIOp)ClassFactory.GetBaseOp(vouchtype, tasktype);
            log.TaskType = tasktype;

            DealResult dr = new DealResult();
            dr.ResultNum = Constant.ResultNum_NoError;

            BLL.TaskLog.ITaskLogDetail logdtbll = ClassFactory.GetITaskLogDetailBLL(log.TaskType);
            BLL.TaskLog.ITaskLogMain logbll = ClassFactory.GetITaskLogMainBLL(log.TaskType);

            Model.Synergismlogdt fdt = logdtbll.GetFrist(log, log.OP);
 
            //把记录设为处理中
            log.Cstatus = Constant.SynerginsLog_Cstatus_Dealing;
            log.Endtime = DateTime.Now;
            logbll.Update(log, log.OP);

            //预置为完成
            log.Cstatus = Constant.SynerginsLog_Cstatus_Complete;
 
            //获取下一节点(节点数可能大于1)
            List<Model.Synergismlogdt> listnext = logdtbll.GetNext(fdt, log.OP);

            //协同操作  
            dr = MakeLogDT(vouchtype, dsHead, dsBody,log, dr, logdtbll, logbll, fdt, listnext);  

        }


        /// <summary>
        /// 生单\审核 主函数
        /// </summary>
        /// <param name="log">任务主表信息</param>
        /// <param name="dr"></param>
        /// <param name="logdtbll">任务子表信息</param>
        /// <param name="logbll">任务主表BLL</param>
        /// <param name="fdt">首节点信息</param>
        /// <param name="listnext">当前任务节点信息,档案同步时有可能存在多个子结点</param>
        /// <returns></returns>
        private DealResult MakeLogDT(string vouchtype, DataSet dsHead, DataSet dsBody, Synergismlog log, DealResult dr, BLL.TaskLog.ITaskLogDetail logdtbll, BLL.TaskLog.ITaskLogMain logbll, Model.Synergismlogdt fdt, List<Model.Synergismlogdt> listnext)
        {
            for (int i = 0; i <  listnext.Count; i++)
            {

                Synergismlogdt preDt;
                Model.Synergismlogdt nextdt = listnext[i];
 
                ////处理数据开始 
                try
                {

                    #region 组织op

                    BaseData bd = ClassFactory.GetBaseData(nextdt);
                    bd.Fristsynergismlogdt = fdt;
                    bd.Synergismlogdt = nextdt;

                    APIOp op = (APIOp)ClassFactory.GetBaseOp(nextdt);
                    nextdt.OP = op;

                    op.dsHead = dsHead;
                    op.dsBody = dsBody;

                    preDt = logdtbll.GetPrevious(nextdt, nextdt.OP);
                    if (op == null)
                    {
                        throw new Exception("插件安装错误");
                    }

                    if (nextdt.Cdealmothed == 3)  //删除
                    {
                        TaskOperator t = new TaskOperator();
                        return t.DeleteVouch(0, nextdt);
                    }
                    else if (nextdt.Cdealmothed == 2)  //修改
                    {

                    }
                    #endregion

                    dr = op.MakeData(nextdt, bd);

                    #region 调用并接收返回值


                    string ccode;
                    if (nextdt.Cstatus != DAL.Constant.SynergisnLogDT_Cstatus_NoAudit)
                    {
                        if (nextdt.Cdealmothed == 2)
                        {
                            dr = op.MakeUpdate(bd);
                            return dr;
                        }

                        System.Diagnostics.Trace.WriteLine("  before MakeVouch  ");
                        dr = op.MakeVouch(bd);  //生单、档案协同 
                        System.Diagnostics.Trace.WriteLine("  after MakeVouch  ");

                        if (dr.ResultNum == DAL.Constant.ResultNum_NormalError)
                        {
                            throw new Exception("API错误：" + dr.ResultMsg);
                        }

                        ccode = op.GetCodeorID(dr.VouchIdRet, bd, "code");

                        nextdt.Cstatus = DAL.Constant.SynergisnLogDT_Cstatus_NoAudit;
                        nextdt.Dmaketime = DateTime.Now;
                        nextdt.Cvoucherno = ccode;
                        logdtbll.Update(nextdt, nextdt.OP);
                    }
                    else
                    {
                        ccode = nextdt.Cvoucherno;
                    }


                    if (string.IsNullOrEmpty(ccode))
                    {
                        //throw new Exception("获取上游单据失败"); 
                        if (nextdt.Cstatus != DAL.Constant.SynergisnLogDT_Cstatus_NoAudit) nextdt.Cstatus = DAL.Constant.SynerginsLog_Cstatus_NoDeal;
                        nextdt.Dmaketime = DateTime.Now;
                        nextdt.Cvoucherno = ccode;
                        logdtbll.Update(nextdt, nextdt.OP);
                        break;
                    }

                    if (nextdt.Isaudit == DAL.Constant.SynergisnLogDT_Isaudit_True)
                    {
                        nextdt.Cstatus = DAL.Constant.SynergisnLogDT_Cstatus_Complete;
                        dr = op.MakeAudit(bd, nextdt);   //审核单据
                    }
                    else
                    {
                        nextdt.Cstatus = DAL.Constant.SynergisnLogDT_Cstatus_NoAudit;

                    }
                    //nextdt.Cstatus = Constant.SynergisnLogDT_Cstatus_Complete;
                    nextdt.Dmaketime = DateTime.Now;
                    nextdt.Cvoucherno = ccode;
                    logdtbll.Update(nextdt, nextdt.OP);

                    //log.Cstatus = DAL.Common.SetLogStatus(log.Cstatus, Constant.SynerginsLog_Cstatus_Complete);
                    if (nextdt.Isaudit == DAL.Constant.SynergisnLogDT_Isaudit_True)
                    {
                        log.Cstatus = DAL.Common.SetLogStatus(log.Cstatus, DAL.Constant.SynerginsLog_Cstatus_Complete);
                    }
                    else
                    {
                        log.Cstatus = DAL.Common.SetLogStatus(log.Cstatus, DAL.Constant.SynerginsLog_Cstatus_Wait);
                        break;
                    }
                    List<Model.Synergismlogdt> listnl = logdtbll.GetNext(nextdt, nextdt.OP);
                    MakeLogDT(vouchtype, dsHead, dsBody, log, dr, logdtbll, logbll, fdt, listnl);

                }
                catch (Exception ex)
                {
                    dr.ResultNum = DAL.Constant.ResultNum_NormalError;
                    dr.ResultMsg = ex.Message;
                    Log.WriteWinLog(ex.ToString());
                    nextdt.Cstatus = DAL.Constant.SynergisnLogDT_Cstatus_Error;
                    nextdt.Cerrordesc = ex.Message;
                    nextdt.Errortimes++;
                    nextdt.Dmaketime = DateTime.Now;
                    logdtbll.Update(nextdt, nextdt.OP);
                    preDt = logdtbll.GetPrevious(nextdt, nextdt.OP);

                    log.Cstatus = DAL.Common.SetLogStatus(log.Cstatus, DAL.Constant.SynerginsLog_Cstatus_Error);

                }
                #endregion

                #region 任务日志  结果

                //nextdt.Cstatus = DAL.Constant.SynergisnLogDT_Cstatus_NoAudit;
                //nextdt.Dmaketime = DateTime.Now;
                //nextdt.Cvoucherno = ccode;
                //logdtbll.Update(nextdt, nextdt.OP);

                #endregion
            }

         

            return dr;
          

        }

  


        public bool MakeAudit()
        {

            return true;
        }
    }
}
