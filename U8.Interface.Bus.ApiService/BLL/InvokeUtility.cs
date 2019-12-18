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
            #region 组织op

            APIOp op = (APIOp)ClassFactory.GetBaseOp(vouchtype, tasktype);
            BaseData bd = ClassFactory.GetBaseData(vouchtype, tasktype);
            op.dsHead = dsHead;
            op.dsBody = dsBody;
            #endregion


            #region 调用并接收返回值

            Synergismlogdt dt = op.GetModel("");
            dr = op.MakeData(dt, bd);
            dr = op.MakeVouch(bd);
            string ccode = op.GetCodeorID(dr.VouchIdRet, bd, "code");

            #endregion

            #region 写日志

            //nextdt.Cstatus = DAL.Constant.SynergisnLogDT_Cstatus_NoAudit;
            //nextdt.Dmaketime = DateTime.Now;
            //nextdt.Cvoucherno = ccode;
            //logdtbll.Update(nextdt, nextdt.OP);

            #endregion

            return dr;
          

        }

  


        public bool MakeAudit()
        {

            return true;
        }
    }
}
