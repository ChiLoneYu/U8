using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace U8.Interface.Bus.ApiService.BLL.TaskLog
{
    public interface ITaskLogMain 
    {
        int Update(Model.Synergismlog log, BaseOp op);

        List<Model.Synergismlog> GetServiceList(string strWhere);
    }
}
