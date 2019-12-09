using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using U8.Interface.Bus.ApiService.Model;

namespace U8.Interface.Bus.ApiService.BLL
{


    /// <summary>
    /// 接口调用
    /// </summary>
    public class Invoke
    {
 
        public DealResult MakeVouch(string head,string body)
        {


            #region 组织op
            BaseOp tmpOp = null;
            DataSet ds = U8.Interface.Bus.DBUtility.DbHelperSQL.Query("SELECT * FROM MES_Comm_DLLReflect WITH(NOLOCK) WHERE ClassType='op' "); 
            List<VoucherType> vl = new List<VoucherType>();
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                vl.Add(new VoucherType()
                {
                    CardNo = ds.Tables[0].Rows[i]["cvouchertype"].ToString(),
                    VoucherName = "", // "产成品入库单",
                    SourceCardNo = "", // "MO21",
                    SourceVoucherNo = "", //"00001",

                    VoucherClassDllpath = ds.Tables[0].Rows[i]["Dllpath"].ToString(),
                    VoucherClassNamespace = ds.Tables[0].Rows[i]["Namespace"].ToString(),
                    VoucherClass = ds.Tables[0].Rows[i]["ClassName"].ToString()

                });
            }
            for (int i = 0; i < vl.Count; i++)
            {
                tmpOp = (BaseOp)System.Reflection.Assembly.Load(vl[i].VoucherClassDllpath).CreateInstance(vl[i].VoucherClassNamespace + "." + vl[i].VoucherClass); 
                tmpOp.GetTask();

            }
            #endregion

 
            return tmpOp.MakeVouch(null);
 
        }

        public bool MakeAudit()
        {

            return true;
        }
    }
}
