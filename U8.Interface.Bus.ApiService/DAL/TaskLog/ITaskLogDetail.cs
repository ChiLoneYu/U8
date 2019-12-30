using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace U8.Interface.Bus.ApiService.DAL.TaskLog
{
    public interface ITaskLogDetail
    {

        /// <summary>
        /// 获取当前任务的数据库连接串
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        Model.ConnectInfo GetConnectInfo(Model.Synergismlogdt dt);
        Model.ConnectInfo getConnectStr(Model.Synergismlogdt dt);

        Model.Synergismlogdt GetModel(string autoid);
        //Model.Synergismlogdt GetModel(string autoid, BLL.BaseOp op);

        /// <summary>
        /// 获取上一条
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        Model.Synergismlogdt GetPrevious(Model.Synergismlogdt dt);

        /// <summary>
        /// 获取第一条
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        Model.Synergismlogdt GetFirst(Model.Synergismlogdt dt);

        DataSet GetList(string strWhere);

        DataSet GetList(int Top, string strWhere, string order, string ascOrDesc);

        int Update(Model.Synergismlogdt dt);

    }
}
