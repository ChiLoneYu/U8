using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

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
    /// 采购入库单 (HY_DZ_K7_DLLReflect预置的op类)
    /// </summary>
    public class PuStoreIn : OP.PuStoreIn
    {
        private int tasktype = 3;


        /// <summary>
        /// 中间
        /// </summary>
        private string headtable = "";
        private string bodytable = ""; 
        private string taskStatusflagColName = "";
        private string voucherNoColumnName = "";
        private string errordescColumnName = ""; 

        /// <summary>
        /// 来源
        /// </summary>
        private string sourceCardNo = "";

        /// <summary>
        /// 目标
        /// </summary>
        private string cardNo = "24";

  
        public override TaskList GetTask()
        {
            string sql = "SELECT * FROM " + headtable + " WHERE operflag = 0 ";
            string curid = "";  
            DataTable dt = new DataTable();
            dt = DbHelperSQL.Query(sql).Tables[0];
            if (null == dt || dt.Rows.Count == 0)
            {
                return null;
            }
            TaskList tl = new TaskList();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Task t = new Task();
                VoucherType v = new VoucherType();
                v.SourceCardNo = sourceCardNo;
                //v.SourceVoucherNo = dt.Rows[i][""].ToString();
                v.CardNo = cardNo;
                v.VoucherName = "采购到货单";
                t.VouchType = v;
                t.taskType = tasktype;   //MES接口任务  
                t.OperType = (int)dt.Rows[i]["OperType"];
                try
                {
                    t.id = dt.Rows[i]["id"].ToString(); // int.Parse(dt.Rows[i]["id"].ToString());
                }
                catch (Exception ee)
                {
                    ApiService.BLL.Common.ErrorMsg(SysInfo.productName, "id 值出错！");
                }
                try
                {
                    t.OperType = int.Parse(dt.Rows[i]["opertype"].ToString());
                }
                catch (Exception ee)
                {
                    ApiService.BLL.Common.ErrorMsg(SysInfo.productName, "opertype 值出错！");
                }
                tl.Add(t);
                curid += "'" + t.id + "',";
            }
            if (!string.IsNullOrEmpty(curid))
            {
                string msql = " update " + headtable + " set " + taskStatusflagColName + " = 2 where id in (" + curid.Substring(0,curid.Length-1) + ") ";
                DbHelperSQL.ExecuteSql(msql);
            }
            return tl;
        }



        #region 获取结点




        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        /// <param name="autoid"> ID</param>
        /// <returns></returns>
        public override Model.Synergismlog GetLogModel(string autoid)
        {
            Model.Synergismlog tmpd = new Synergismlog();
            tmpd.TaskType = tasktype;
            tmpd.Id = autoid;
            tmpd.Cvouchertype = cardNo; 
            tmpd.Cstatus = U8.Interface.Bus.ApiService.DAL.Constant.SynerginsLog_Cstatus_NoDeal;
            DataSet ds = DbHelperSQL.Query("SELECT t.cRdCode,t.id,t.opertype FROM " + headtable + " t with(nolock)  WHERE t.id = '" + autoid + "' ");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                tmpd.Cvoucherno = ds.Tables[0].Rows[i]["cRdCode"].ToString();
                tmpd.Id = ds.Tables[0].Rows[i]["id"].ToString(); //int.Parse(ds.Tables[0].Rows[i]["id"].ToString());
                //tmpd.Cdealmothed = int.Parse(ds.Tables[0].Rows[i]["opertype"].ToString()) + 1; // 0(自动生单/自动审核) 1增 2修改 3删
            }
            return tmpd;
        }


        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        /// <param name="autoid">子任务ID</param>
        /// <returns></returns>
        public override Model.Synergismlogdt GetModel(string autoid)
        {
            Model.Synergismlogdt tmpd =  new Model.Synergismlogdt();
            tmpd.TaskType = tasktype;
            tmpd.Autoid = autoid;
            tmpd.Id = autoid;
            tmpd.Cvouchertype = cardNo;
            tmpd.Ilineno = 2;
            tmpd.Cstatus = U8.Interface.Bus.ApiService.DAL.Constant.SynerginsLog_Cstatus_NoDeal; 
            DataSet ds = DbHelperSQL.Query("SELECT t.cRdCode,t.id,t.opertype FROM " + headtable + " t with(nolock)  WHERE t.id = " + 
                U8.Interface.Bus.Comm.Convert.ConvertDbValueFromPro(autoid,"string"));
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                tmpd.Cvoucherno = ds.Tables[0].Rows[i]["cRdCode"].ToString();
                tmpd.Autoid = ds.Tables[0].Rows[i]["id"].ToString(); // int.Parse(ds.Tables[0].Rows[i]["id"].ToString());
                tmpd.Id = ds.Tables[0].Rows[i]["id"].ToString();  // int.Parse(ds.Tables[0].Rows[i]["id"].ToString());
                tmpd.Cdealmothed = int.Parse(ds.Tables[0].Rows[i]["opertype"].ToString()) + 1; // 0(自动生单/自动审核) 1增 2修改 3删
            }
            return tmpd;
        }



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
                tmpd.Isaudit = U8.Interface.Bus.ApiService.DAL.Constant.SynergisnLogDT_Isaudit_True; //U8.Interface.Bus.ApiService.DAL.Constant.SynergisnLogDT_Isaudit_False; 
                tmpd.Cvoucherno = "";

                logdt.Add(tmpd);
                return logdt;
            }
            else
            {
                return logdt;
            }
        }

        #endregion


        #region 组织来源数据

        /// <summary>
        /// 获取来源表头数据
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
        /// 获取来源表体数据
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


        #region update  log


        public override int Update(Model.Synergismlog log)
        {
            return 1;
            //return Utility.UpdateMainLog(log, headtable, voucherNoColumnName, taskStatusflagColName, errordescColumnName);
        }

        //修改日志
        public override int Update(Model.Synergismlogdt dt)
        {
            return 1;
            // return Utility.UpdateDetailLog(dt, headtable, voucherNoColumnName, taskStatusflagColName, errordescColumnName);
        }

        #endregion


    }
}
