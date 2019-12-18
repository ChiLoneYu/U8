using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace U8.Interface.Bus.ApiService.BLL.TaskLog
{
    public interface ITaskLogDetail
    {

        Model.Synergismlogdt GetFrist(Model.Synergismlog main, BLL.BaseOp op);

        List<Model.Synergismlogdt>  GetNext(Model.Synergismlogdt detail,BLL.BaseOp op);

        Model.Synergismlogdt GetPrevious(Model.Synergismlogdt dt,BLL.BaseOp op);


        /// </summary>
        List<Model.Synergismlogdt> GetModelList(string strWhere);
        /// <summary>
        /// 获得数据列表
        /// </summary>
        List<Model.Synergismlogdt> GetModelList(int Top, string strWhere, string order, string ascOrDesc);


        /// <summary>
        /// 更新到数据库
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        int Update(Model.Synergismlogdt dt, BLL.BaseOp op);
         
    }
}
