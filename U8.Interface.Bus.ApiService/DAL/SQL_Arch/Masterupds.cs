using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using U8.Interface.Bus.DBUtility;


namespace U8.Interface.Bus.ApiService.DAL
{


    /// <summary>
    /// 
    /// </summary>
    public class Masterupds
    {


        /// <summary>
        /// 
        /// </summary>
        /// <param name="ccode"></param>
        /// <param name="cmaster_accid"></param>
        /// <param name="cslave_accid"></param>
        /// <returns></returns>
        public List<Model.Masterupds> GetModelList(string ccode, string cmaster_accid, string cslave_accid)
        {
            string BASEJOINT_ID = DbHelperSQL.GetSingle("select id from HY_DZ_K7_BASEJOINT where cslave_accid = (select accid from HY_DZ_K7_REGIST where acccode = '" + cslave_accid + "') and cmaster_accid = (select accid from HY_DZ_K7_REGIST where acccode = '" + cmaster_accid + "')  ").ToString();
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT s.*,ISNULL(f.cfieldtype,'') AS cfieldtype,b.cvalue,f.cdefult as cfielddefaultvalue  FROM HY_DZ_K7_MASTERUPDS s ");
            strSql.Append(" left join HY_DZ_K7_BASEJOINTDETAIL b on  s.autoid = b.updautoid and b.id = " + BASEJOINT_ID);
            strSql.Append(" left join HY_DZ_K7_MASTERUPD m on m.id=s.id ");
            strSql.Append(" left join HY_DZ_K7_FIELD f on s.ctable=f.ctable and s.cfield=f.cfield ");
            strSql.Append(" where  bselected=1 and  m.ccode='" + ccode + "' ");
            List<Model.Masterupds> listmodel = new List<Model.Masterupds>();
            DataSet ds = DbHelperSQL.Query(strSql.ToString(), null);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Model.Masterupds model = new Model.Masterupds();
                model.Autoid = ds.Tables[0].Rows[i]["autoid"].ToString();
                model.Cdefine24 = ds.Tables[0].Rows[i]["cdefine24"].ToString();
                model.Cdefine25 = ds.Tables[0].Rows[i]["cdefine25"].ToString();
                if (ds.Tables[0].Rows[i]["cdefine26"].ToString() != "")
                {
                    model.Cdefine26 = decimal.Parse(ds.Tables[0].Rows[i]["cdefine26"].ToString());
                }
                if (ds.Tables[0].Rows[i]["cdefine27"].ToString() != "")
                {
                    model.Cdefine27 = decimal.Parse(ds.Tables[0].Rows[i]["cdefine27"].ToString());
                }
                model.Cdefine28 = ds.Tables[0].Rows[i]["cdefine28"].ToString();
                model.Cdefine29 = ds.Tables[0].Rows[i]["cdefine29"].ToString();
                model.Cdefine30 = ds.Tables[0].Rows[i]["cdefine30"].ToString();
                model.Cdefine31 = ds.Tables[0].Rows[i]["cdefine31"].ToString();
                model.Cdefine32 = ds.Tables[0].Rows[i]["cdefine32"].ToString();
                model.Cdefine33 = ds.Tables[0].Rows[i]["cdefine33"].ToString();
                model.Id = ds.Tables[0].Rows[i]["id"].ToString();
                if (ds.Tables[0].Rows[i]["cdefine34"].ToString() != "")
                {
                    model.Cdefine34 = int.Parse(ds.Tables[0].Rows[i]["cdefine34"].ToString());
                }
                if (ds.Tables[0].Rows[i]["cdefine35"].ToString() != "")
                {
                    model.Cdefine35 = int.Parse(ds.Tables[0].Rows[i]["cdefine35"].ToString());
                }
                if (ds.Tables[0].Rows[i]["cdefine36"].ToString() != "")
                {
                    model.Cdefine36 = DateTime.Parse(ds.Tables[0].Rows[i]["cdefine36"].ToString());
                }
                if (ds.Tables[0].Rows[i]["cdefine37"].ToString() != "")
                {
                    model.Cdefine37 = DateTime.Parse(ds.Tables[0].Rows[i]["cdefine37"].ToString());
                }
                model.Ctable = ds.Tables[0].Rows[i]["ctable"].ToString();
                model.Cfield = ds.Tables[0].Rows[i]["cfield"].ToString();
                model.Bselected = ds.Tables[0].Rows[i]["bselected"].ToString();
                model.Bdefault = ds.Tables[0].Rows[i]["bdefault"].ToString();
                model.Cremark = ds.Tables[0].Rows[i]["cremark"].ToString();
                model.Cdefine22 = ds.Tables[0].Rows[i]["cdefine22"].ToString();
                model.Cdefine23 = ds.Tables[0].Rows[i]["cdefine23"].ToString();
                model.Cfieldtype = ds.Tables[0].Rows[i]["cfieldtype"].ToString();
                model.Cvalue = ds.Tables[0].Rows[i]["cvalue"].ToString();
                model.CFieldDefaultValue = ds.Tables[0].Rows[i]["cfielddefaultvalue"].ToString();
                listmodel.Add(model);
            }

            return listmodel;

        }
    }
}
