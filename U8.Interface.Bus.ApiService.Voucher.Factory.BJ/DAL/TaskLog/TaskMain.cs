using System;
using System.Text;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Data;
using System.Configuration;
using U8.Interface.Bus.DBUtility;
using U8.Interface.Bus.ApiService.BLL;

namespace U8.Interface.Bus.ApiService.Voucher.Factory.BJ.DAL
{
    /// <summary>
    /// HY_DZ_K7_SYNERGISMLOGDT
    /// 
    /// </summary>
    public partial class TaskMain : ApiService.DAL.TaskLog.ITaskLogMain
    {

        
        /// <summary>
        /// 更新一条数据
        /// </summary>
        public int Update(Model.Synergismlog model, BaseOp op)
        {
            return op.Update(model);
        }

        /// <summary>
        ///  
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public Model.Synergismlog GetModel(string autoid, BaseOp op)
        {
            return op.GetLogModel(autoid);
        }


        #region ITaskLogMain 成员

        U8.Interface.Bus.ApiService.Model.Synergismlog U8.Interface.Bus.ApiService.DAL.TaskLog.ITaskLogMain.GetModel(string id)
        {
            throw new NotImplementedException();
        }

        U8.Interface.Bus.ApiService.Model.Synergismlog U8.Interface.Bus.ApiService.DAL.TaskLog.ITaskLogMain.GetModel(string id, U8.Interface.Bus.ApiService.BLL.BaseOp op)
        {
            throw new NotImplementedException();
        }

        DataSet U8.Interface.Bus.ApiService.DAL.TaskLog.ITaskLogMain.GetList(string strWhere)
        {
            throw new NotImplementedException();
        }

        DataSet U8.Interface.Bus.ApiService.DAL.TaskLog.ITaskLogMain.GetList(int Top, string strWhere, string order, string ascOrDesc)
        {
            throw new NotImplementedException();
        }

        DataSet U8.Interface.Bus.ApiService.DAL.TaskLog.ITaskLogMain.GetList(int Top, string strWhere, string filedOrder)
        {
            throw new NotImplementedException();
        }

        DataSet U8.Interface.Bus.ApiService.DAL.TaskLog.ITaskLogMain.GetServiceList(string strWhere)
        {
            throw new NotImplementedException();
        }

        int U8.Interface.Bus.ApiService.DAL.TaskLog.ITaskLogMain.Update(U8.Interface.Bus.ApiService.Model.Synergismlog model)
        {
            throw new NotImplementedException();
        }

        int U8.Interface.Bus.ApiService.DAL.TaskLog.ITaskLogMain.Update(U8.Interface.Bus.ApiService.Model.Synergismlog model, U8.Interface.Bus.ApiService.BLL.BaseOp op)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}

