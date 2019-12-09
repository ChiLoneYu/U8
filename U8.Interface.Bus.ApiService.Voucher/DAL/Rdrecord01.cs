using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using U8.Interface.Bus.DBUtility;

namespace U8.Interface.Bus.ApiService.Voucher.DAL
{


    /// <summary>
    /// 采购入库单
    /// </summary>
    public class Rdrecord01
    {

        string vouchername = "采购入库单";
        string headtable = "zpurRkdHead";
        string bodytable = "v_mom_orderdetail_wf";
        string codename = "ccode";
        string keyname = "moid";



        /// <summary>
        /// 主表
        /// </summary>
        /// <param name="code"></param>
        /// <param name="constring"></param>
        /// <returns></returns>
        public DataSet GetRdrecord01ByCode(string code, string constring)
        {
            string sql = "select * from " + headtable + " with (nolock) where ccode='" + code + "' "; 
            DbHelperSQLP help = new DbHelperSQLP(constring); 
            DataSet ds = help.Query(sql);
            BLL.Common.ErrorMsg(ds, "未能取到采购入库单主表数据"); 
            return ds;

        }
        /// <summary>
        /// 子表
        /// </summary>
        /// <param name="code"></param>
        /// <param name="constring"></param>
        /// <returns></returns>
        public DataSet GetRdrecord01sByCode(string code, string constring)
        {
            string sql = "select s.* from zpurRkdTail s with (nolock) left join rdrecord01 b with (nolock)  on s.ID=b.id where b.ccode='" + code + "' ";
            DbHelperSQLP help = new DbHelperSQLP(constring);
            DataSet ds = help.Query(sql);
            BLL.Common.ErrorMsg(ds, "未能取到采购入库单子表数据");
            return ds;
        }

    }
}
