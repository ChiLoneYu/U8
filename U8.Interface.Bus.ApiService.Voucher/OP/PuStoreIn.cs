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


namespace U8.Interface.Bus.ApiService.Voucher.OP
{
    /// <summary>
    /// 采购入库单 (HY_DZ_K7_DLLReflect预置的op类)
    /// </summary>
    public abstract class PuStoreIn : StockOP
    {  
        public override string SetTableName()
        {
            return "rdrecord01";
        }

        public override string SetVouchType()
        {
            return "01";
        }

        public override string SetApiAddressAdd()
        {
            return "U8API/PuStoreIn/Add";
        }

        public override string SetApiAddressAudit()
        {
            return "U8API/PuStoreIn/Audit";
        }

        public override string SetApiAddressCancelAudit()
        {
            return "U8API/PuStoreIn/CancelAudit";
        }

        public override string SetApiAddressDelete()
        {
            return "U8API/PuStoreIn/Delete";
        }

        public override string SetApiAddressLoad()
        {
            return "U8API/PuStoreIn/Load";
        }

        public override string SetApiAddressUpdate()
        {
            return "U8API/PuStoreIn/Update";
        }


        public override TaskList GetTask()
        { 
            throw new NotImplementedException();
        }

 

        /// <summary>
        /// ID CODE 互查
        /// </summary>
        /// <param name="strID"></param>
        /// <param name="bd"></param>
        /// <param name="codeorid"></param>
        /// <returns></returns>
        public override string GetCodeorID(string strID, BaseData bd, string codeorid)
        {
            string sqlstr = string.Empty;
            if (codeorid == "id")
            {
                sqlstr = "select isnull(id,'') from rdrecord01  with(nolock)  where ccode='" + strID + "'";
            }
            if (codeorid == "code")
            {
                sqlstr = "select isnull(ccode,'') from rdrecord01  with(nolock)  where id='" + strID + "'";
            }
            Model.APIData apidata = bd as Model.APIData;

            DBUtility.DbHelperSQLP sqlp = new DBUtility.DbHelperSQLP(apidata.ConnectInfo.Constring);
            string ret = sqlp.GetSingle(sqlstr).NullToString();
            BLL.Common.ErrorMsg(ret, "未能获采购入库单ID或单号");
            return ret;
        }


        /// <summary>
        /// 获取审核状态
        /// </summary>
        /// <param name="strVoucherNo"></param>
        /// <param name="strConn"></param>
        /// <returns></returns>
        public override bool CheckAuditStatus(string strVoucherNo, string strConn)
        {
            return false;
        }



        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        /// <param name="autoid"> ID</param>
        /// <returns></returns>
        public override Model.Synergismlog GetLogModel(string autoid)
        {
            throw new NotImplementedException();
        }


        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        /// <param name="autoid">子任务ID</param>
        /// <returns></returns>
        public override Model.Synergismlogdt GetModel(string autoid)
        {
            throw new NotImplementedException();
        }


        public override Synergismlogdt GetFirst(Synergismlogdt dt)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// 获取上一结点
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public override Model.Synergismlogdt GetPrevious(Model.Synergismlogdt dt)
        {
            throw new NotImplementedException();
        }


        /// <summary>
        /// 获取下一任务结点
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public override List<Model.Synergismlogdt> GetNext(Model.Synergismlogdt dt)
        {
            throw new NotImplementedException();
        }



        /// <summary>
        /// 获取来源表头数据
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="pdt"></param>
        /// <param name="apidata"></param>
        /// <returns></returns>
        public override System.Data.DataSet SetFromTabet(Model.Synergismlogdt dt, Model.Synergismlogdt pdt, Model.APIData apidata)
        {
            throw new NotImplementedException();
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
            throw new NotImplementedException();
        }
 


        #region update  log
 
        /// <summary>
        /// 修改任务日志主表
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public override int Update(Model.Synergismlog dt)
        { 
            throw new NotImplementedException(); 
        }
 
        /// <summary>
        /// 修改任务日志子表
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public override int Update(Model.Synergismlogdt dt)
        {
            throw new NotImplementedException();
        }


        #endregion


 
 


    }
}
