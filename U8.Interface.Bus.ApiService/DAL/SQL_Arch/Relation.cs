using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.Collections.Generic;
using U8.Interface.Bus.DBUtility;


namespace U8.Interface.Bus.ApiService.DAL
{
  
 
    public class Relation
    {
        public Relation() { }

        #region ===添加一条记录(HY_DZ_K7_RELATION)===
        /// <summary>
        /// 添加一条记录
        /// </summary>
        public int Insert(Model.Relation M)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into HY_DZ_K7_RELATION(");
            strSql.Append("cjointname,clinkname,cjointfield,clinkfield)");
            strSql.Append(" values (");
            strSql.Append("@cjointname,@clinkname,@cjointfield,@clinkfield)");

            SqlParameter[] parameters = {
                 new SqlParameter("@cjointname",SqlDbType.NVarChar,30),
                 new SqlParameter("@clinkname",SqlDbType.NVarChar,200),
                 new SqlParameter("@cjointfield",SqlDbType.NVarChar,200),
                 new SqlParameter("@clinkfield",SqlDbType.NVarChar,200)};
            parameters[0].Value = M.Cjointname;
            parameters[1].Value = M.Clinkname;
            parameters[2].Value = M.Cjointfield;
            parameters[3].Value = M.Clinkfield;
            return DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }

        #endregion

        #region ===删除一条记录(HY_DZ_K7_RELATION)===
        public int Delete(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from HY_DZ_K7_RELATION ");
            strSql.Append(" where autoid=@autoid ");
            SqlParameter[] parameters = {
					new SqlParameter("@autoid", SqlDbType.Int,4)};
            parameters[0].Value = id;
            return DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        }
        #endregion

        #region ===修改一条记录(HY_DZ_K7_RELATION)===
        public int Update(Model.Relation M)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update HY_DZ_K7_RELATION set ");
            strSql.Append("cjointname=@cjointname,");
            strSql.Append("clinkname=@clinkname,");
            strSql.Append("cjointfield=@cjointfield,");
            strSql.Append("clinkfield=@clinkfield ");
            strSql.Append(" where autoid=@autoid ");
            SqlParameter[] parameters = {
                        new SqlParameter("@autoid",SqlDbType.Int),
                        new SqlParameter("@cjointname",SqlDbType.NVarChar,30),
                        new SqlParameter("@clinkname",SqlDbType.NVarChar,200),
                        new SqlParameter("@cjointfield",SqlDbType.NVarChar,200),
                        new SqlParameter("@clinkfield",SqlDbType.NVarChar,200)};
            parameters[0].Value = M.Autoid;
            parameters[1].Value = M.Cjointname;
            parameters[2].Value = M.Clinkname;
            parameters[3].Value = M.Cjointfield;
            parameters[4].Value = M.Clinkfield;
            return DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);

        }
        /// <summary>
        ///修改单个记录
        /// </summary>
        /// <param name="ID">修改的ID</param>
        /// <param name="RowName">修改的字段</param>
        ///<param name="RowValue">修改字段的值</param>
        /// <returns></returns>
        ///</summary>
        public int Update(int ID, string RowName, string RowValue)
        {
            return DbHelperSQL.UpdateAfield("HY_DZ_K7_RELATION", RowName, RowValue, "id", ID.ToString());
        }
        #endregion



        /// <summary>
        ///获取前几条数据
        /// <param name="Top">查询条数 0为不限</param>
        /// <param name="strWhere">查询条件</param>
        /// <param name="_Order">排序字段</param>
        /// <param name="_By">升序0 ,降序 1</param>
        ///</summary>
        public DataSet GetDataSet(int Top, string strWhere, string _Order, int _By)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");
            if (Top > 0)
            {
                strSql.Append(" top " + Top.ToString());
            }
            strSql.Append(" * FROM HY_DZ_K7_RELATION ");
            if (!string.IsNullOrEmpty(strWhere))
            {
                strSql.Append(" where " + strWhere);
            } if (!string.IsNullOrEmpty(_Order))
            {
                if (_By == 0)
                    strSql.Append(" order by " + _Order + " ASC");
                else
                    strSql.Append(" order by " + _Order + " Desc");
            }
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        ///获取前几条数据
        /// <param name="Top">查询条数 0为不限</param>
        /// <param name="strWhere">查询条件</param>
        /// <param name="_Order">排序字段</param>
        /// <param name="_By">升序0 ,降序 1</param>
        ///</summary>
        public IDataReader GetDataReader(int Top, string strWhere, string _Order, int _By)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");
            if (Top > 0)
            {
                strSql.Append(" top " + Top.ToString());
            }
            strSql.Append(" * FROM HY_DZ_K7_RELATION ");
            if (!string.IsNullOrEmpty(strWhere))
            {
                strSql.Append(" where " + strWhere);
            } if (!string.IsNullOrEmpty(_Order))
            {
                if (_By == 0)
                    strSql.Append(" order by " + _Order + " ASC");
                else
                    strSql.Append(" order by " + _Order + " Desc");
            }
            return DbHelperSQL.ExecuteReader(strSql.ToString());
        }


        #region ===获取一条信息(HY_DZ_K7_RELATION)===
        /// <summary>
        /// 获取一条实体对象
        /// </summary>
        public Model.Relation GetModel(int id)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  * from HY_DZ_K7_RELATION ");
            strSql.Append(" where autoid=@autoid");
            SqlParameter[] parameters = {
					new SqlParameter("@autoid", SqlDbType.Int,4)};
            parameters[0].Value = id;

            Model.Relation model = new Model.Relation();
            SqlDataReader sdr = DbHelperSQL.ExecuteReader(strSql.ToString(), parameters);
            if (sdr.Read())
            {
                model.Cjointname = (string)sdr["cjointname"];
                model.Clinkname = (string)sdr["clinkname"];
                model.Cjointfield = (string)sdr["cjointfield"];
                model.Clinkfield = (string)sdr["clinkfield"];
                sdr.Close();
                return model;
            }
            else
            {
                sdr.Close();
                return null;
            }
        }
        public List<Model.Relation> GetModelList(string where)
        {

            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * from HY_DZ_K7_RELATION ");
            if (!string.IsNullOrEmpty(where))
            {
                strSql.Append(" where " + where);
            }

            List<Model.Relation> list = new List<Model.Relation>();

            SqlDataReader sdr = DbHelperSQL.ExecuteReader(strSql.ToString());
            while (sdr.Read())
            {
                Model.Relation model = new Model.Relation();
                model.Cjointname = (string)sdr["cjointname"];
                model.Clinkname = (string)sdr["clinkname"];
                model.Cjointfield = (string)sdr["cjointfield"];
                model.Clinkfield = (string)sdr["clinkfield"];

                list.Add(model);

            }

            sdr.Close();
            return list;

        }
        #endregion
    }

}
