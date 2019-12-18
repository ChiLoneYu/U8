using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Script.Serialization;
using System.Collections;
using System.Data;

namespace LxzLib.Comm.DataFormatConvert
{   

    /// <summary>
    /// 利用JavaScriptSerializer实现互转
    /// .NET FRAMEWORK 3.5以上支持
    /// 不能序列化带有循环引用的对象，例如：System.Globalization.CultureInfo、dataset
    /// </summary>
    public class JsSerialize
    {
        /// <summary> 
        /// DataTable转Json 
        /// </summary> 
        /// <param name="dtb"></param> 
        /// <returns></returns> 
        public static string Dtb2Json(DataTable dtb)
        {
            JavaScriptSerializer jss = new JavaScriptSerializer();
            ArrayList dic = new ArrayList();
            foreach (DataRow row in dtb.Rows)
            {
                Dictionary<string, object> drow = new Dictionary<string, object>();
                foreach (DataColumn col in dtb.Columns)
                {
                    drow.Add(col.ColumnName, row[col.ColumnName]);
                }
                dic.Add(drow);
            }
            return jss.Serialize(dic);
        }

        /// <summary> 
        /// Json转DataTable 
        /// </summary> 
        /// <param name="json"></param> 
        /// <returns></returns> 
        public static DataTable Json2Dtb(string json)
        {
            JavaScriptSerializer jss = new JavaScriptSerializer();
            ArrayList dic = jss.Deserialize<ArrayList>(json);
            DataTable dtb = new DataTable();
            if (dic.Count > 0)
            {
                foreach (Dictionary<string, object> drow in dic)
                {
                    if (dtb.Columns.Count == 0)
                    {
                        foreach (string key in drow.Keys)
                        {
                            dtb.Columns.Add(key, drow[key].GetType());
                        }
                    }
                    DataRow row = dtb.NewRow();
                    foreach (string key in drow.Keys)
                    {
                        row[key] = drow[key];
                    }
                    dtb.Rows.Add(row);
                }
            }
            return dtb;
        } 
    }


}
