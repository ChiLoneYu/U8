using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using U8.Interface.Bus;
using U8.Interface.Bus.Comm;
using U8.Interface.Bus.ApiService;

using U8.Interface.Bus.ApiService.Model;
using U8.Interface.Bus.ApiService.BLL;
using U8.Interface.Bus.ApiService.DAL;

using U8.Interface.Bus.DBUtility;
using System.Data;

namespace U8.Interface.Bus.ApiService.Voucher.Factory.BJ
{

    /// <summary>
    /// 采购订单(HY_DZ_K7_DLLReflect预置的op类)
    /// </summary>
    public class PO_Pomain : OP.PO_Pomain
    {

        private int tasktype = 3;  
 

        /// <summary>
        /// 来源
        /// </summary>
        private string sourceCardNo = "";
        string sourceHeadTable = "";
        string sourceBodyTable = "";


        /// <summary>
        /// 中间表
        /// </summary>
        private string voucherNoColumnName = "";
        private string headtable = "";
        private string bodytable = "";
        private string taskStatusflagColName = "";
        private string opertype = "";

        /// <summary>
        /// 目标表
        /// </summary> 
        private string cardNo = "88";
        private string voucherTypeName = "采购订单";
        private string targetVoucherNoColumnName = "cPOID";


        /// <summary>
        /// 获取任务队列
        /// </summary>
        /// <returns></returns>
        public override TaskList GetTask()
        {
            return null;
        }



        /// <summary>
        /// 组织数据
        /// </summary>
        /// <param name="dt">当前任务节点信息</param>
        /// <param name="bd">HY_DZ_K7_DLLReflect 中预置的 data类</param>
        /// <returns></returns>
        public Model.DealResult MakeData(Model.Synergismlogdt dt, BaseData bd)
        {
            Model.DealResult dr = new Model.DealResult();
            Model.APIData apidata = bd as Model.APIData;         //API实体,包括当前任务节点信息
          
            ApiService.DAL.TaskLog.ITaskLogDetail dtdal = ClassFactory.GetITaskLogDetailDAL(tasktype);

            Model.Synergismlogdt pdt = dtdal.GetPrevious(dt);      //上一任务节点信息

            apidata.ConnectInfo = dtdal.GetConnectInfo(dt);   //获取当前结点的数据串连接串
            apidata.Synergismlogdt = dt;

            if (!apidata.Dodelete)
            {
                DataSet rdds = SetFromTabet(dt, pdt, apidata);    //上一节点 单据头信息
                DataSet rdsds = SetFromTabets(dt, pdt, apidata);  //上一节点 单据体信息

                ApiService.DAL.IFieldcmps fieldcmpdal = ClassFactory.GetIFieldcmpsDAL(apidata.TaskType); //new DAL.Fieldcmps();
                List<Model.Fieldcmps> listfd = fieldcmpdal.GetListFieldcmps(dt, pdt,apidata.TaskType);   //字段对照信息
                ApiService.BLL.U8NameValue u8namevaluebll = new ApiService.BLL.U8NameValue();  //字段赋值
                u8namevaluebll.SetHeadData(apidata, rdds, rdsds, listfd, dt);
                u8namevaluebll.SetBodyData(apidata, rdds, rdsds, listfd, dt);


                //设置订单关联    
                ApiService.DAL.Common.SetInBody(apidata);
                SetNormalValue(apidata, dt);
            }
            return dr;
        }



        /// <summary>
        /// 表头数据
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="pdt"></param>
        /// <param name="apidata"></param>
        /// <returns></returns>
        public override System.Data.DataSet SetFromTabet(Model.Synergismlogdt dt, Model.Synergismlogdt pdt, Model.APIData apidata)
        { 
            return dsHead;
        } 


        /// <summary>
        /// 表体数据
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="pdt"></param>
        /// <param name="apidata"></param>
        /// <returns></returns>
        public override System.Data.DataSet SetFromTabets(Model.Synergismlogdt dt, Model.Synergismlogdt pdt, Model.APIData apidata)
        { 
            return dsBody;
        }
         

        ///获取上一结点
        public override int Update(Model.Synergismlogdt dt)
        {
            return 1;
        }

        //
        public override int Update(Model.Synergismlog dt)
        {
            return 1;
        }




        #region 获取结点

        public override Synergismlogdt GetFirst(Synergismlogdt dt)
        {
            
            Model.Synergismlogdt detail = new U8.Interface.Bus.ApiService.Model.Synergismlogdt();
            detail.Cvouchertype = sourceCardNo;
            detail.Ilineno = 1;
            detail.Id = "";
            detail.Cstatus = ApiService.DAL.Constant.SynergisnLogDT_Cstatus_Complete;
            return detail; 
        }

        /// <summary>
        /// 获取上一结点
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public override Model.Synergismlogdt GetPrevious(Model.Synergismlogdt dt)
        {   
            Model.Synergismlogdt pdt = new Model.Synergismlogdt();
            pdt.Cvouchertype = sourceCardNo;
            pdt.Id = dt.Id;
            pdt.Cvoucherno = "";
            pdt.TaskType = tasktype;
            return pdt;
        }


        /// <summary>
        /// 获取下一任务结点
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public override List<Model.Synergismlogdt> GetNext(Model.Synergismlogdt dt)
        {
            List<Model.Synergismlogdt> logdt = new List<U8.Interface.Bus.ApiService.Model.Synergismlogdt>();
            if (dt.Ilineno == 1)
            {
                Model.Synergismlogdt tmpd = new Model.Synergismlogdt();
                tmpd.Id = dt.Id;
                tmpd.Cvouchertype = cardNo;
                tmpd.Ilineno = 2;
                tmpd.TaskType = tasktype;
                tmpd.Cstatus = U8.Interface.Bus.ApiService.DAL.Constant.SynerginsLog_Cstatus_NoDeal;
                tmpd.Isaudit = U8.Interface.Bus.ApiService.DAL.Constant.SynergisnLogDT_Isaudit_True; 
                tmpd.Cvoucherno = ""; 

                logdt.Add(tmpd);
                return logdt;
            }
            else
            {
                return logdt;
            }
        }

 
        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        /// <param name="autoid">子任务ID</param>
        /// <returns></returns>
        public override Model.Synergismlogdt GetModel(string autoid)
        {
            Model.Synergismlogdt tmpd = new Model.Synergismlogdt();
            tmpd.Id = autoid;
            tmpd.Cvouchertype = cardNo;
            tmpd.Ilineno = 2;
            tmpd.TaskType = tasktype;
            tmpd.Cstatus = U8.Interface.Bus.ApiService.DAL.Constant.SynerginsLog_Cstatus_NoDeal;
            tmpd.Isaudit = U8.Interface.Bus.ApiService.DAL.Constant.SynergisnLogDT_Isaudit_True;
            tmpd.Cvoucherno = "";
            return tmpd;
        }

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        /// <param name="id">主任务ID</param>
        /// <returns></returns>
        public override Model.Synergismlog GetLogModel(string id)
        {
            Synergismlog dt = new Synergismlog();
            dt.TaskType = tasktype; 

            return dt;
        }


    

        #endregion




    }
}
