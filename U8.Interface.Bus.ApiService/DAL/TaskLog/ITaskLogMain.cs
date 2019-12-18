using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace U8.Interface.Bus.ApiService.DAL.TaskLog
{
    public interface ITaskLogMain
    {

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        Model.Synergismlog GetModel(string id);

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        Model.Synergismlog GetModel(string id,BLL.BaseOp op);




        /// <summary>
        /// 获得数据列表
        /// </summary>
        DataSet GetList(string strWhere);

        DataSet GetList(int Top, string strWhere, string order, string ascOrDesc);

        /// <summary>
        /// 获得前几行数据
        /// </summary>
        DataSet GetList(int Top, string strWhere, string filedOrder);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="strWhere"></param>
        /// <returns></returns>
        DataSet GetServiceList(string strWhere);

        /// <summary>
        /// 更新一条数据
        /// </summary>
        int Update(Model.Synergismlog model);

        /// <summary>
        /// 更新一条数据
        /// </summary>
        int Update(Model.Synergismlog model, BLL.BaseOp op);
         
    }
}
