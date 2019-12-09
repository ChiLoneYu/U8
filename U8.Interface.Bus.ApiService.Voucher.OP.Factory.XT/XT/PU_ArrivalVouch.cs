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

namespace U8.Interface.Bus.ApiService.Voucher.OP.Factory.XT
{
    /// <summary>
    /// 采购到货单(HY_DZ_K7_DLLReflect预置的op类)
    /// envContext.SetApiContext("sBillType", new string()); //上下文数据类型：string，含义：到货单类型， 到货单 0 退货单 1
    /// </summary>
    public class PU_ArrivalVouch : OP.PU_ArrivalVouch
    { 

        /// <summary>
        /// 获取任务队列
        /// </summary>
        /// <returns></returns>
        public override TaskList GetTask()
        {
            return null;
        }

        public override System.Data.DataSet SetFromTabet(Model.Synergismlogdt dt, Model.Synergismlogdt pdt, Model.APIData apidata)
        {
            ApiService.DAL.SynergismLogDt dtdal = new ApiService.DAL.SynergismLogDt();
            Model.ConnectInfo cimodel = dtdal.GetConnectInfo(pdt);
            return U8.Interface.Bus.ApiService.Voucher.DAL.Common.GetSourceMainDataset(pdt.Cvouchertype, pdt.Cvoucherno, cimodel.Constring);

        }

        public override System.Data.DataSet SetFromTabets(Model.Synergismlogdt dt, Model.Synergismlogdt pdt, Model.APIData apidata)
        {
            ApiService.DAL.SynergismLogDt dtdal = new ApiService.DAL.SynergismLogDt();
            Model.ConnectInfo cimodel = dtdal.GetConnectInfo(pdt);
            return U8.Interface.Bus.ApiService.Voucher.DAL.Common.GetSourceDetailDataset(pdt.Cvouchertype, pdt.Cvoucherno, cimodel.Constring);
        }

        public override Model.DealResult MakeAudit(BaseData bd, Model.Synergismlogdt dt)
        {
            Model.DealResult dr = base.MakeAudit(bd, dt);

            ////设置审核日期
            //Model.APIData apidata = bd as Model.APIData;
            //Model.OrderModel o = new Model.OrderModel();
            //o.MainTable = SetTableName();
            //o.HeadPKFld = "cCode";
            //o.HeadPKVal = dt.Cvoucherno;

            //Model.U8NameValue nv;
            //nv = DAL.Common.GetApiDataValue(apidata, "T", 0, "ddate");
            //DateTime date = DateTime.Parse(nv.U8FieldValue);

            //nv = DAL.Common.GetApiDataValue(apidata, "T", 0, "cAuditDate");
            //if (nv.U8FieldValue == "") nv.U8FieldValue = DateTime.Now.ToString("yyyy-MM-dd");
            //if (DateTime.Parse(nv.U8FieldValue) < date) nv.U8FieldValue = date.ToString("yyyy-MM-dd");
            //o.FieldList.Add(nv);
            //nv = DAL.Common.GetApiDataValue(apidata, "T", 0, "cAuditTime");
            //if (nv.U8FieldValue == "") nv.U8FieldValue = o.FieldList[0].U8FieldValue + " " + DateTime.Now.ToShortTimeString();
            //o.FieldList.Add(nv);
            //DAL.Common.SetHeadInfo(o, bd.ConnectInfo.Constring);

            return dr;

        }
 
        /// <summary>
        /// 重写删除
        /// </summary>
        /// <param name="bd"></param>
        /// <param name="dt"></param>
        /// <returns></returns>
        public override Model.DealResult UndoMake(BaseData bd, Model.Synergismlogdt dt)
        {
            Model.DealResult dr = new Model.DealResult();
            dr = base.UndoMake(bd, dt);
            string vouchid = this.GetCodeorID(dt.Cvoucherno, bd, "id");
            string sql1 = string.Format("delete PU_ArrivalVouch_ExtraDefine where id='{0}'", vouchid);
            string sql2 = string.Format("delete PU_ArrivalVouchs where id='{0}'", vouchid);
            string sql3 = string.Format("delete PU_ArrivalVouch where id='{0}'", vouchid);

            try
            {
                DbHelperSQLP help = new DbHelperSQLP(bd.ConnectInfo.Constring);
                help.ExecuteSql(sql1);
                help.ExecuteSql(sql2);
                help.ExecuteSql(sql3);

            }
            catch
            { }
            return dr;

        }


        public override void SetNormalValue(Model.APIData apidata, Model.Synergismlogdt dt)
        {
            base.SetNormalValue(apidata, dt);

            //单据号获取
            string ccode = "ccode";
            Model.U8NameValue nv = ApiService.DAL.Common.U8NameValueFind(apidata.HeadData, ccode);
            if (nv == null) return;
            if (!string.IsNullOrEmpty(nv.U8FieldValue)) return;
            DbHelperSQLP help = new DbHelperSQLP(apidata.ConnectInfo.Constring);
            string sql = "select top 1 ccode from PU_ArrivalVouch  with(nolock) ";
            nv.U8FieldValue = help.GetSingle(sql).NullToString();
            if (string.IsNullOrEmpty(nv.U8FieldValue)) nv.U8FieldValue = "0000000001";
        }
          

        private string cardNo = "";
        private string headtable = "";
        private string bodytable = "";

        public override Model.Synergismlogdt GetFirst(Model.Synergismlogdt dt)
        {
            return null;
        }
        //获取上一结点
        public override Model.Synergismlogdt GetPrevious(Model.Synergismlogdt dt)
        { return null; }
        /// <summary>
        /// 获取下一任务结点
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public override List<Model.Synergismlogdt> GetNext(Model.Synergismlogdt dt)
        {
            throw new NotImplementedException();
        }

        //获取上一结点
        public override int Update(Model.Synergismlogdt dt)
        {
            return 1;
        }

        public override int Update(Model.Synergismlog dt)
        {
            return 1;
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

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        /// <param name="id">主任务ID</param>
        /// <returns></returns>
        public override Model.Synergismlog GetLogModel(string id)
        {
            throw new NotImplementedException();
        }


    }
}
