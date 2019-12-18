using System;
using System.Data;
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

namespace U8.Interface.Bus.ApiService.Voucher.Factory.XT
{
    /// <summary>
    /// 发货单(HY_DZ_K7_DLLReflect预置的op类)
    /// </summary>
    public class Consignment : OP.Consignment
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
            ApiService.DAL.TaskLog.ITaskLogDetail dtdal = ClassFactory.GetITaskLogDetailDAL(apidata.TaskType);
            Model.ConnectInfo cimodel = dtdal.GetConnectInfo(pdt);
            return U8.Interface.Bus.ApiService.Voucher.DAL.Common.GetSourceMainDataset(pdt.Cvouchertype, pdt.Cvoucherno, cimodel.Constring);
        }




        public override System.Data.DataSet SetFromTabets(Model.Synergismlogdt dt, Model.Synergismlogdt pdt, Model.APIData apidata)
        {
            ApiService.DAL.TaskLog.ITaskLogDetail dtdal = ClassFactory.GetITaskLogDetailDAL(apidata.TaskType);
            Model.ConnectInfo cimodel = dtdal.GetConnectInfo(pdt);
            return U8.Interface.Bus.ApiService.Voucher.DAL.Common.GetSourceDetailDataset(pdt.Cvouchertype, pdt.Cvoucherno, cimodel.Constring);

        }




        

        private string cardNo = "";
        private string headtable = "";
        private string bodytable = "";


        public override Synergismlogdt GetFirst(Synergismlogdt dt)
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
        //获取上一结点
        public override Model.Synergismlogdt GetPrevious(Model.Synergismlogdt dt)
        { return null; }
        //获取上一结点
        public override int Update(Model.Synergismlogdt dt)
        {
            return 1;
        }

        //
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
