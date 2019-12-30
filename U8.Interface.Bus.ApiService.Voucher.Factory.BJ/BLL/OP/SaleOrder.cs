using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using U8.Interface.Bus;
using U8.Interface.Bus.Comm;
using U8.Interface.Bus.ApiService;

using U8.Interface.Bus.ApiService.Model;
using U8.Interface.Bus.ApiService.BLL;
using U8.Interface.Bus.ApiService.DAL;
using U8.Interface.Bus.DBUtility;


namespace U8.Interface.Bus.ApiService.Voucher.Factory.BJ
{
    /// <summary>
    /// 销售订单(HY_DZ_K7_DLLReflect预置的op类)
    /// </summary>
    public class SaleOrder : OP.SaleOrder
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
        private string voucherTypeName = "销售订单";
        private string targetVoucherNoColumnName = "cSOCode";


        /// <summary>
        /// 获取任务队列
        /// </summary>
        /// <returns></returns>
        public override TaskList GetTask()
        {
            return null;
        }

        #region 单据数据来源

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
        #endregion






        #region 获取结点

        public override Synergismlogdt GetFirst(Synergismlogdt dt)
        {

            Model.Synergismlogdt detail = new U8.Interface.Bus.ApiService.Model.Synergismlogdt();
            detail.TaskType = tasktype;
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
                tmpd.Isaudit = U8.Interface.Bus.ApiService.DAL.Constant.SynergisnLogDT_Isaudit_False; //U8.Interface.Bus.ApiService.DAL.Constant.SynergisnLogDT_Isaudit_True; 
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




        #region 更新任务日志

        ///更新任务日志 子表
        public override int Update(Model.Synergismlogdt dt)
        {
            return 1;
        }

        ///更新任务日志 主表
        public override int Update(Model.Synergismlog dt)
        {
            return 1;
        }
        #endregion
 

    }
}
