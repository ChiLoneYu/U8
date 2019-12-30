using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.Collections.Generic;
using U8.Interface.Bus.DBUtility;
 


namespace U8.Interface.Bus.ApiService.DAL
{
    public class Relations
    {


        public List<Model.Relations> GetModelList(string where)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * from HY_DZ_K7_RELATIONS ");
            if (!string.IsNullOrEmpty(where))
            {
                strSql.Append(" where " + where);
            }

            List<Model.Relations> list = new List<Model.Relations>();

            SqlDataReader sdr = DbHelperSQL.ExecuteReader(strSql.ToString());
            while (sdr.Read())
            {
                Model.Relations model = new Model.Relations();
                if (sdr["idx"] != DBNull.Value) model.Idx = (int?)sdr["idx"];
                if (sdr["cmaintable"] != DBNull.Value) model.Cmaintable = (string)sdr["cmaintable"];
                if (sdr["cmainkey"] != DBNull.Value) model.Cmainkey = (string)sdr["cmainkey"];
                if (sdr["cftable"] != DBNull.Value) model.Cftable = (string)sdr["cftable"];
                if (sdr["cfkey"] != DBNull.Value) model.Cfkey = (string)sdr["cfkey"];

                list.Add(model);

            }

            sdr.Close();
            return list;

        }
    }
}
