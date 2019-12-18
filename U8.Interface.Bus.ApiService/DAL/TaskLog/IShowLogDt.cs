using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace U8.Interface.Bus.ApiService.DAL.TaskLog
{

    /// <summary>
    /// 详细日志
    /// </summary>
    public interface IShowLogDt
    {
        DataSet GetList(string Top, string strWhere, string order, string ascOrDesc);
        string GetDataName(string cVoucerName, string cVoucherNo);
    }
}
