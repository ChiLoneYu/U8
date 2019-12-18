using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using U8.Interface.Bus.DBUtility;
using System.Configuration;
using U8.Interface.Bus.ApiService.BLL;


namespace U8.Interface.Bus.ApiService.Voucher.Factory.BLL
{
    public class TaskDetail :ApiService.BLL.TaskLog.ITaskLogDetail
    {

        /// <summary>
        /// 取首结点
        /// 默认首结点为完成
        /// </summary>
        /// <param name="main"></param>
        /// <returns></returns>
        public Model.Synergismlogdt GetFrist(Model.Synergismlog main,ApiService.BLL.BaseOp op)
        {
            Model.Synergismlogdt detail = new U8.Interface.Bus.ApiService.Model.Synergismlogdt();
            detail.Cvouchertype = main.Cvouchertype;
            detail.Ilineno = 1;
            detail.Id = main.Id.ToString();
            detail.Cstatus = ApiService.DAL.Constant.SynergisnLogDT_Cstatus_Complete;
            return detail; 
        }

        /// <summary>
        /// 取下一结点任务
        /// </summary>
        /// <param name="detail"></param>
        /// <returns></returns>
        public List<Model.Synergismlogdt> GetNext(Model.Synergismlogdt detail,BaseOp op)
        {
            return op.GetNext(detail); 
        }


        public Model.Synergismlogdt GetPrevious(Model.Synergismlogdt dt,BaseOp op)
        {
            return op.GetPrevious(dt); 
        }

        /// <summary>
        /// 更新任务状态
        /// 更新到数据库
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public int Update(Model.Synergismlogdt dt,BaseOp op)
        { 
            return op.Update(dt); 
        }




        #region ITaskLogDetail 成员


        public List<U8.Interface.Bus.ApiService.Model.Synergismlogdt> GetModelList(string strWhere)
        {
            throw new NotImplementedException();
        }

        public List<U8.Interface.Bus.ApiService.Model.Synergismlogdt> GetModelList(int Top, string strWhere, string order, string ascOrDesc)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}
