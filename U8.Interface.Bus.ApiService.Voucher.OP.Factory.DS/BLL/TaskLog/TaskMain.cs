using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using U8.Interface.Bus.ApiService.BLL;

namespace U8.Interface.Bus.ApiService.Voucher.Factory.DS.BLL
{
    public class TaskMain : ApiService.BLL.TaskLog.ITaskLogMain
    {

        public int Update(Model.Synergismlog log,BaseOp op)
        {
            return op.Update(log);
        }


        #region ITaskLogMain 成员


        public List<U8.Interface.Bus.ApiService.Model.Synergismlog> GetServiceList(string strWhere)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}
