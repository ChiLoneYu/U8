using System;
using System.Collections.Generic;
using System.Linq;
using System.Text; 
using System.Data;
using System.Diagnostics;
using System.Data.SqlClient;

using System.Runtime.InteropServices;
using U8.Interface.Bus.ApiService.Model;
using U8.Interface.Bus.DBUtility;


namespace U8.Interface.Bus.ApiService.BLL
{

    /// <summary>
    /// 档案操作工厂类
    /// </summary>
    public abstract class SQLOP : BaseOp
    {

        public List<string> tablekey = new List<string>();


        /// <summary>
        /// 插入或修改档案
        /// </summary>
        /// <param name="bd"></param>
        /// <returns></returns>
        public override Model.DealResult MakeVouch(BaseData bd)
        {
            DbHelperSQLP objAdo = new DbHelperSQLP();
            U8Login.clsLogin u8Login = new U8Login.clsLogin();
            Model.DealResult dr = new Model.DealResult();
            SQLData sqlData = bd as SQLData;

            dr.VouchIdRet = sqlData.Fristsynergismlogdt.Cvoucherno;

            string sql = string.Empty;
            bool existdata = CheckExist(sqlData);


            //不存在...不删除
            if (existdata == false && sqlData.SQLMode.ToLower() == "delete")
            {
                if (sqlData.TableName.ToLower() == "vendor" || sqlData.TableName.ToLower() == "customer")
                {
                    objAdo.ExecuteSql("update HY_DZ_K7_ArchivesUnite set iStatus=1 where sFCode='" + sqlData.Fristsynergismlogdt.Cvoucherno + "' and sType='" + sqlData.TableName.ToLower() + "'");
                }
                return dr;
            }

            //不存在...更新变插入
            if (existdata == false && sqlData.SQLMode.ToLower() == "update") sqlData.SQLMode = "insert";

            //存在..插入变更新
            if (existdata && sqlData.SQLMode.ToLower() == "insert") sqlData.SQLMode = "update";


            if (!(sqlData.Synergismlogdt.Cvouchertype == "存货价格列表" || sqlData.Synergismlogdt.Cvouchertype == "客户价格列表" || sqlData.Synergismlogdt.Cvouchertype == "供应商存货价格表"))
                switch (sqlData.SQLMode.ToLower())
                {
                    case "update":
                        sql = MakeUpdateStr(sqlData);
                        break;
                    case "insert":
                        sql = MakeInsertStr(sqlData);
                        break;
                    case "delete":
                        sql = MakeDeleteStr(sqlData);
                        break;
                    default:

                        break;

                }

            //事务开始
            //using (System.Transactions.TransactionScope obj_t = new System.Transactions.TransactionScope())
            {

                if (sqlData.SQLMode.ToLower() != "delete")
                {
                    MakeRelation(sqlData);
                }

                if (sql.IndexOf("Operating ='Unite'>") > -1)
                {

                    Model.DealResult drLogin = new Model.DealResult();

                    drLogin = GetU8Login(sqlData, u8Login);
                    if (drLogin.ResultNum < 0)
                    {
                        throw new Exception("初始化登陆组件失败,并户未完成!");
                    }

                    object objLogin = (object)u8Login;
                    string sMsg = "";
                    bool bSuc = false;
                    string sType = sqlData.TableName.ToLower();

                    U8SrvTrans.IClsCommon objTran = new U8SrvTrans.IClsCommon();
                    if (objTran.InitNew(ref objLogin))
                    {
                        bSuc = objTran.Modify(ref sql, ref sType, ref sMsg);
                        if (bSuc == true)
                        {
                            objAdo.ExecuteSql("update HY_DZ_K7_ArchivesUnite set iStatus=1 where sFCode='" + sqlData.Fristsynergismlogdt.Cvoucherno + "'");
                            dr.Message = "并户成功";
                            return dr;
                        }
                        else
                        {
                            dr.ResultNum = DAL.Constant.ResultNum_NormalError;
                            dr.ResultMsg = "并户失败!失败原因[" + sMsg + "]";
                            throw new Exception("并户失败!失败原因[" + sMsg + "]");
                        }
                    }
                    else
                    {
                        dr.ResultNum = DAL.Constant.ResultNum_NormalError;
                        dr.ResultMsg = "初始化并户组件失败!";
                        throw new Exception("初始化并户组件失败!");
                    }
                }
                else
                {
                    DbHelperSQLP sqlhelp = new DbHelperSQLP(sqlData.ConnectInfo.Constring);
                    string creat = MakeCreatStr(sqlData);
                    if (!string.IsNullOrEmpty(creat) && sqlData.SQLMode.ToLower() != "delete") sqlhelp.ExecuteSql(creat);
                    if (!string.IsNullOrEmpty(sql)) sqlhelp.ExecuteSql(sql);
                }
                //obj_t.Complete();
                return dr;
            }

        }

        public virtual void UpdateRelation(SQLData sqlData) { }


        /// <summary>
        /// 检查是否存在数据
        /// </summary>
        /// <param name="sqlData"></param>
        /// <returns></returns>
        public bool CheckExist(SQLData sqlData)
        {
            DbHelperSQLP sql = new DbHelperSQLP(sqlData.ConnectInfo.Constring);
            bool bExistTable = sql.Exists("SELECT 1 FROM sysobjects WHERE name = '" + sqlData.TableName + "' AND type='U' ");
            if (!bExistTable) return false;


            StringBuilder sb = new StringBuilder();
            sb.Append(string.Format(" select 1 from {0} ", sqlData.TableName));
            sb.Append(" where  1=1 ");
            foreach (Model.U8NameValue nv in sqlData.WhereValue)
            {
                sb.Append(string.Format(" and  {0}='{1}' ", nv.U8FieldName, nv.U8FieldValue));

            }
            return sql.Exists(sb.ToString());

        }


        private string MakeDeleteStr(SQLData sqlData)
        {

            StringBuilder delsb = new StringBuilder();
            string sUpt = "";
            //档案协同后需要处理的事情
            //add by wangdd
            UpdAfterXT(sqlData, ref sUpt);
            if (sqlData.Synergismlogdt.Cvouchertype == "项目档案" && sqlData.TableName.ToLower() == "inventory")
            {
                return string.Empty;
            }
            //删除存货时,同步删除   inventory_sub 和   bas_part   added by liuxzha 2015.05.18 
            else if (sqlData.Synergismlogdt.Cvouchertype == "存货档案" && sqlData.TableName.ToLower() == "inventory")
            {
                string strMsg;
                if (DAL.Common.CheckIsUsed(sqlData.ConnectInfo.Constring, "inventory", sqlData.Fristsynergismlogdt.Cvoucherno, out strMsg))
                {
                    throw new Exception(strMsg);
                }

                DbHelperSQLP helpChild = new DbHelperSQLP(sqlData.ConnectInfo.Constring);
                if (helpChild.Exists("SELECT 1 FROM sysobjects WHERE name = 'Inventory_extradefine' AND type='U' "))
                {
                    delsb.Append(" DELETE FROM Inventory_extradefine where cInvCode =  '" + sqlData.Fristsynergismlogdt.Cvoucherno + "'  ");
                }
                delsb.Append(" DELETE FROM inventory_sub where cInvSubCode = '" + sqlData.Fristsynergismlogdt.Cvoucherno + "'  ");
                delsb.Append(" DELETE FROM bas_part where invcode = '" + sqlData.Fristsynergismlogdt.Cvoucherno + "'  ");
            }
            //删除部门时,校验子账套部门档案是否被使用
            else if (sqlData.Synergismlogdt.Cvouchertype == "部门档案" && sqlData.TableName.ToLower() == "department")
            {
                string strMsg;

                if (DAL.Common.CheckIsUsed(sqlData.ConnectInfo.Constring, "department", sqlData.Fristsynergismlogdt.Cvoucherno, out strMsg))
                {
                    throw new Exception(strMsg);
                }

            }
            //删除人员时，检验从账套人员档案是否被使用
            //add by wangdd
            else if (sqlData.Synergismlogdt.Cvouchertype == "人员档案" && sqlData.TableName.ToLower() == "hr_hi_person")
            {
                string strMsg;
                if (DAL.Common.CheckIsUsed(sqlData.ConnectInfo.Constring, "Person", sqlData.Fristsynergismlogdt.Cvoucherno, out strMsg))
                {
                    throw new Exception(strMsg);
                }
                delsb.Append(" exec proc_hy_dz_K7ArchivesDeleteProxy 'hr_hi_person','" + sqlData.Fristsynergismlogdt.Cvoucherno + "' ");
            }
            //供应商并户操作不组织SQL语句，直接通过构造login调用基础档案服务进行 add by wangdd
            else if (sqlData.Synergismlogdt.Cvouchertype == "供应商档案" && sqlData.TableName.ToLower() == "vendor")
            {
                string sTArchCode = "";

                if (DAL.Common.CheckIsUnite("vendor", sqlData.Fristsynergismlogdt.Cvoucherno, ref sTArchCode))
                {
                    return "<Vendor Operating ='Unite'><Code1>" + sqlData.Fristsynergismlogdt.Cvoucherno + "</Code1><Code2>" + sTArchCode + "</Code2>" + "</Vendor>";
                }
            }
            //客户并户操作不组织SQL语句，直接通过构造login调用基础档案服务进行 add by wangdd
            else if (sqlData.Synergismlogdt.Cvouchertype == "客户档案" && sqlData.TableName.ToLower() == "customer")
            {
                string sTArchCode = "";

                if (DAL.Common.CheckIsUnite("customer", sqlData.Fristsynergismlogdt.Cvoucherno, ref sTArchCode))
                {
                    return "<Customer Operating ='Unite'><Code1>" + sqlData.Fristsynergismlogdt.Cvoucherno + "</Code1><Code2>" + sTArchCode + "</Code2>" + "</Customer>";
                }
            }

            delsb.Append("Delete ");
            delsb.Append(sqlData.TableName);
            delsb.Append(" where ");
            delsb.Append(MakeWhere(sqlData));
            if (sUpt != "")
            {
                delsb.Append(System.Environment.NewLine + sUpt);
            }
            return delsb.ToString();
        }

        private string MakeWhere(SQLData sqlData)
        {
            StringBuilder wheresb = new StringBuilder();
            foreach (Model.U8NameValue nv in sqlData.WhereValue)
            {
                wheresb.Append(nv.U8FieldName);
                wheresb.Append("=");
                wheresb.Append("'");
                wheresb.Append(nv.U8FieldValue);
                wheresb.Append("'");
                wheresb.Append(" and ");
            }
            wheresb.Append(" 1=1 ");
            return wheresb.ToString();
        }

        public virtual bool setIDENTITY_INSERT_ON()
        {
            return false;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="sqlData"></param>
        /// <returns></returns>
        private string MakeCreatStr(SQLData sqlData)
        {
            if (sqlData.Synergismlogdt.Cvouchertypename != "项目档案") return string.Empty;

            StringBuilder creatsb = new StringBuilder();
            DbHelperSQLP helpMain = new DbHelperSQLP();
            DbHelperSQLP helpChild = new DbHelperSQLP(sqlData.ConnectInfo.Constring);
            DataSet dsMain, dsChild, dsFitem;
            object oText;
            string strIsExists = "SELECT 1 FROM sysobjects WHERE name = '" + sqlData.TableName + "' AND type='U' ";
            string strUserCol = "SELECT TABLE_NAME,COLUMN_NAME,DATA_TYPE,ISNULL(CHARACTER_MAXIMUM_LENGTH,0) AS COLUMN_LENGTH,IS_NULLABLE FROM information_schema.columns WHERE TABLE_NAME=N'" + sqlData.TableName + "'  AND ORDINAL_POSITION>=7 ORDER BY ORDINAL_POSITION";
            int iColLength = 0;
            string strIsNull = string.Empty;
            bool bIsExists;

            if (!helpChild.Exists("SELECT 1 FROM fitem WHERE ctable='" + sqlData.TableName + "'"))
            {
                dsFitem = helpMain.Query("SELECT * FROM fitem WHERE ctable='" + sqlData.TableName + "'");
                if (dsFitem != null && dsFitem.Tables[0].Rows.Count > 0)
                {
                    DataRow drFitem = dsFitem.Tables[0].Rows[0];
                    creatsb.Append("INSERT INTO fitem(citem_class,citem_name,citem_text,crule,ctable,cClasstable) ");
                    creatsb.Append("VALUES('" + drFitem["citem_class"] + "','" + drFitem["citem_name"] + "','" + drFitem["citem_text"] + "','" + drFitem["crule"] + "','" + drFitem["ctable"] + "','" + drFitem["cClasstable"] + "'); ");
                }
            }

            if (sqlData.TableName.ToLower() == "inventory") return creatsb.ToString();

            if (!helpMain.Exists(strIsExists)) return string.Empty;
            if (!helpChild.Exists(strIsExists))
            {
                dsMain = helpMain.Query(strUserCol);
                //表体
                creatsb.Append("CREATE TABLE " + sqlData.TableName + " ( ");
                creatsb.Append("[I_id] [int] IDENTITY (1, 1) NOT NULL ,");
                creatsb.Append("[citemcode] [nvarchar] (60) NOT NULL ,");
                creatsb.Append("[citemname] [nvarchar] (255) NOT NULL ,");
                creatsb.Append("[bclose] [bit] NULL ,");
                creatsb.Append("[citemccode] [nvarchar] (22) NOT NULL ,");
                creatsb.Append("[iotherused] [int] NULL ,");

                if (dsMain != null && dsMain.Tables[0].Rows.Count > 0)
                    foreach (DataRow drMain in dsMain.Tables[0].Rows)
                    {
                        iColLength = int.Parse(drMain["COLUMN_LENGTH"].ToString());
                        if (drMain["IS_NULLABLE"].ToString().ToUpper() == "NO")
                            strIsNull = "NOT NULL";
                        else
                            strIsNull = "NULL";

                        if (iColLength <= 0)
                            creatsb.Append("[" + drMain["COLUMN_NAME"].ToString() + "] [" + drMain["DATA_TYPE"].ToString() + "] " + strIsNull + ",");
                        else
                            creatsb.Append("[" + drMain["COLUMN_NAME"].ToString() + "] [" + drMain["DATA_TYPE"].ToString() + "] (" + drMain["COLUMN_LENGTH"].ToString() + ") " + strIsNull + ",");
                    }
                //creatsb = creatsb.Remove(creatsb.Length - 1, 1);
                //creatsb.Append(" ); ");
                creatsb.Append("CONSTRAINT [PK_" + sqlData.TableName + "] PRIMARY KEY CLUSTERED ([I_id] ASC) ");
                //creatsb.Append("WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ");
                creatsb.Append("ON [PRIMARY] ");
                creatsb.Append(") ON [PRIMARY]; ");
                //索引
                creatsb.Append("CREATE NONCLUSTERED INDEX [I_id] ON [" + sqlData.TableName + "] ([I_id] ASC) ");
                //creatsb.Append("WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) "); 
                creatsb.Append("ON [PRIMARY]; ");

                creatsb.Append("CREATE NONCLUSTERED INDEX [citemccode] ON [" + sqlData.TableName + "] ([citemccode] ASC) ");
                //creatsb.Append("WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) "); 
                creatsb.Append("ON [PRIMARY]; ");

                creatsb.Append("CREATE UNIQUE NONCLUSTERED INDEX [citemcode] ON [" + sqlData.TableName + "] ([citemcode] ASC) ");
                //creatsb.Append("WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) "); 
                creatsb.Append("ON [PRIMARY]; ");

                creatsb.Append("CREATE NONCLUSTERED INDEX [citemname] ON [" + sqlData.TableName + "] ([citemname] ASC) ");
                //creatsb.Append("WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) "); 
                creatsb.Append("ON [PRIMARY]; ");

                //外键
                creatsb.Append("ALTER TABLE [" + sqlData.TableName + "] WITH CHECK ADD FOREIGN KEY([citemccode])REFERENCES [" + sqlData.TableName + "class] ([cItemCcode]); ");

                //关联表
                oText = helpMain.GetSingle("SELECT ISNULL(citem_text,'') FROM FITEM WHERE ctable='" + sqlData.TableName + "' ");
                if (oText != null && oText != DBNull.Value && !string.IsNullOrEmpty(oText.ToString().Trim()))
                {
                    if (oText.ToString() == "成本对象")
                    {
                        if (!helpChild.Exists("SELECT 1 FROM sysobjects WHERE name = 'fItemss99contrast' AND type='U' "))
                        {
                            creatsb.Append("CREATE TABLE fItemss99contrast( ");
                            creatsb.Append("[BomId] [int] NULL ,");
                            creatsb.Append("[Version] [int] NULL ,");
                            creatsb.Append("[IdentCode] [nvarchar] (20) NULL ,");
                            creatsb.Append("[PartId] [int] NULL ,");
                            creatsb.Append("[PspCode] [nvarchar] (20) NULL ");
                            creatsb.Append(") ON [PRIMARY]; ");
                        }
                    }
                    else if (oText.ToString() == "存货名称")
                    { }
                }
            }
            else
            {
                dsMain = helpMain.Query(strUserCol);
                dsChild = helpChild.Query(strUserCol);

                //foreach (DataRow drChild in dsChild.Tables[0].Rows)
                //{
                //    bIsExists = false;
                //    foreach (DataRow drMain in dsMain.Tables[0].Rows)
                //    {
                //        if (drMain["COLUMN_NAME"] == null) continue;
                //        if (string.IsNullOrEmpty(drMain["COLUMN_NAME"].ToString().Trim())) continue;

                //        if (drMain["COLUMN_NAME"].ToString().ToLower() == drChild["COLUMN_NAME"].ToString().ToLower())
                //        {
                //            bIsExists = true;
                //            break;
                //        }
                //    }

                //    if (!bIsExists)
                //    {
                //        creatsb.Append("ALTER TABLE [" + sqlData.TableName + "] DROP COLUMN [" + drChild["COLUMN_NAME"].ToString() + "];");
                //    }
                //}

                foreach (DataRow drMain in dsMain.Tables[0].Rows)
                {
                    bIsExists = false;
                    foreach (DataRow drChild in dsChild.Tables[0].Rows)
                    {
                        if (drChild["COLUMN_NAME"] == null) continue;
                        if (string.IsNullOrEmpty(drChild["COLUMN_NAME"].ToString().Trim())) continue;

                        if (drMain["COLUMN_NAME"].ToString().ToLower() == drChild["COLUMN_NAME"].ToString().ToLower())
                        {
                            bIsExists = true;
                            break;
                        }
                    }

                    iColLength = int.Parse(drMain["COLUMN_LENGTH"].ToString());
                    //if (drMain["IS_NULLABLE"].ToString().ToUpper() == "NO")
                    //    strIsNull = "NOT NULL";
                    //else
                    strIsNull = "NULL";

                    if (!bIsExists)
                    {
                        if (iColLength <= 0)
                            creatsb.Append("ALTER TABLE [" + sqlData.TableName + "] ADD [" + drMain["COLUMN_NAME"].ToString() + "] [" + drMain["DATA_TYPE"].ToString() + "] " + strIsNull + "; ");
                        else
                            creatsb.Append("ALTER TABLE [" + sqlData.TableName + "] ADD [" + drMain["COLUMN_NAME"].ToString() + "] [" + drMain["DATA_TYPE"].ToString() + "] (" + drMain["COLUMN_LENGTH"].ToString() + ") " + strIsNull + "; ");
                    }
                    else
                    {
                        if (iColLength <= 0)
                            creatsb.Append("ALTER TABLE [" + sqlData.TableName + "] ALTER COLUMN [" + drMain["COLUMN_NAME"].ToString() + "] [" + drMain["DATA_TYPE"].ToString() + "] " + strIsNull + "; ");
                        else
                            creatsb.Append("ALTER TABLE [" + sqlData.TableName + "] ALTER COLUMN [" + drMain["COLUMN_NAME"].ToString() + "] [" + drMain["DATA_TYPE"].ToString() + "] (" + drMain["COLUMN_LENGTH"].ToString() + ") " + strIsNull + "; ");
                    }
                }

            }

            return creatsb.ToString();
        }



        /// <summary>
        /// 新增档案
        /// </summary>
        /// <param name="sqlData"></param>
        /// <returns></returns>
        private string MakeInsertStr(SQLData sqlData)
        {
            if (sqlData.Synergismlogdt.Cvouchertype == "项目档案" && sqlData.TableName.ToLower() == "inventory")
                return string.Empty;

            StringBuilder insertsb = new StringBuilder();
            StringBuilder fieldsb = new StringBuilder();
            StringBuilder valuesb = new StringBuilder();

            if (setIDENTITY_INSERT_ON())
            {

                insertsb.Append("set  IDENTITY_INSERT " + sqlData.TableName + " ON;");

            }

            foreach (Model.U8NameValue nv in sqlData.FieldValue)
            {
                if (nv.U8FieldName.ToLower() == "i_id") continue;
                if (nv.IsNullAble && nv.IsNull) continue;
                if (nv.U8FieldValue == nv.U8FieldDefaultValue && nv.U8FieldDefaultValue == "[NotNull]") nv.U8FieldValue = "";
                nv.U8FieldValue = nv.U8FieldValue.Replace("'", "’");

                fieldsb.Append(nv.U8FieldName);
                fieldsb.Append(",");

                valuesb.Append("N'");//2017－12－20 添加强制用UNICODE编码
                //valuesb.Append("'");
                valuesb.Append(nv.U8FieldValue);
                valuesb.Append("'");
                valuesb.Append(",");
            }
            if (fieldsb.Length <= 1) return string.Empty;

            fieldsb.Remove(fieldsb.Length - 1, 1);
            valuesb.Remove(valuesb.Length - 1, 1);

            insertsb.Append("insert into ");
            insertsb.Append(sqlData.TableName);
            insertsb.Append("(");
            insertsb.Append(fieldsb.ToString());
            insertsb.Append(")");
            insertsb.Append(" values ");
            insertsb.Append("(");
            insertsb.Append(valuesb.ToString());
            insertsb.Append(") ");

            //部门档案ideporder 在子账套自行修改,而不再因ideporder的变化产生协同任务
            //added by liuxzha 2015.06.17
            if (sqlData.Synergismlogdt.Cvouchertype == "部门档案" && sqlData.TableName.ToLower() == "department")
            {
                string code = DAL.Common.FieldFind(sqlData.FieldValue, "cDepCode");
                string iDepOrder = DAL.Common.FieldFind(sqlData.FieldValue, "iDepOrder");
                string dealOrder = "SELECT cDepCode,iDepOrder FROM Department WITH(NOLOCK) WHERE iDepOrder > " + iDepOrder;
                DataSet dsDealOrder = new DataSet();
                DbHelperSQLP helpMain = new DbHelperSQLP();
                dsDealOrder = helpMain.Query(dealOrder);
                for (int i = 0; i < dsDealOrder.Tables[0].Rows.Count; i++)
                {
                    insertsb.Append(" update Department set iDepOrder = " + dsDealOrder.Tables[0].Rows[i][1].ToString() + " where cDepCode = '" + dsDealOrder.Tables[0].Rows[i][0].ToString() + "'  ");
                }
            }
            //客开处理
            if (sqlData.Synergismlogdt.Cvouchertype == "人员档案" && sqlData.TableName.ToLower() == "hr_hi_person" && DAL.Common.AssignJobinfo())
            {
                StringBuilder sSql = new StringBuilder();
                DbHelperSQLP sqlM = new DbHelperSQLP();
                DataSet ds = new DataSet();
                ds = sqlM.Query("select PK_hr_hi_jobInfo,cjobcode,cJobGradeCode,cJobRankCode,cDepCode,cPsn_Num from hr_hi_jobInfo with (nolock) where blastflag = '1' and cPsn_Num='" + sqlData.Fristsynergismlogdt.Cvoucherno + "' and accid='" + sqlData.ConnectInfo.AccId + "'");
                if (ds.Tables[0].Rows.Count > 0)
                {

                    //修改人员档案 部门
                    sSql.Append(" UPDATE hr_hi_person SET cDept_Num='" + ds.Tables[0].Rows[0]["cDepCode"] + "' WHERE cPsn_Num='" + sqlData.Fristsynergismlogdt.Cvoucherno + "' ");

                    //修改人员档案 职位
                    sSql.Append(" update t1 set cJobCode='" + ds.Tables[0].Rows[0]["cJobCode"] + "',cJobGradeCode='" + ds.Tables[0].Rows[0]["cJobGradeCode"] + "',");
                    sSql.Append("cJobRankCode='" + ds.Tables[0].Rows[0]["cJobRankCode"] + "',cDept_num='" + ds.Tables[0].Rows[0]["cDepCode"] + "' ");
                    sSql.Append("from hr_hi_person t1 ");
                    sSql.Append("where t1.cPsn_Num='" + sqlData.Fristsynergismlogdt.Cvoucherno + "' ");

                    //修改岗位信息 
                    sSql.Append(" UPDATE hr_hi_jobInfo SET bPartJob='0' WHERE cPsn_Num='" + sqlData.Fristsynergismlogdt.Cvoucherno + "' and PK_hr_hi_jobInfo = '" + ds.Tables[0].Rows[0]["PK_hr_hi_jobInfo"] + "'");
                    sSql.Append(" UPDATE hr_hi_jobInfo SET bPartJob='1' WHERE cPsn_Num='" + sqlData.Fristsynergismlogdt.Cvoucherno + "' and PK_hr_hi_jobInfo <> '" + ds.Tables[0].Rows[0]["PK_hr_hi_jobInfo"] + "'");

                    insertsb.Append(sSql.ToString());
                }

            }

            return insertsb.ToString();
        }


        /// <summary>
        /// 修改档案
        /// </summary>
        /// <param name="sqlData"></param>
        /// <returns></returns>
        private string MakeUpdateStr(SQLData sqlData)
        {
            if (sqlData.Synergismlogdt.Cvouchertype == "项目档案" && sqlData.TableName.ToLower() == "inventory")
                return string.Empty;

            StringBuilder updatesb = new StringBuilder();
            updatesb.Append("Update ");
            updatesb.Append(sqlData.TableName);
            updatesb.Append(" set ");
            foreach (Model.U8NameValue nv in sqlData.FieldValue)
            {
                if (nv.U8FieldName.ToLower() == "i_id") continue;

                updatesb.Append(nv.U8FieldName);
                updatesb.Append("=");
                if (nv.IsNullAble && nv.IsNull)
                {
                    updatesb.Append("NULL");
                }
                else if (nv.U8FieldValue == nv.U8FieldDefaultValue && nv.U8FieldDefaultValue == "[NotNull]")
                {
                    updatesb.Append("''");
                }
                else
                {
                    updatesb.Append("N'");//2017－12－20 添加强制用UNICODE编码
                    //updatesb.Append("'");
                    updatesb.Append(nv.U8FieldValue.Replace("'", "’"));
                    updatesb.Append("'");
                }
                updatesb.Append(",");

            }
            updatesb.Remove(updatesb.Length - 1, 1);

            updatesb.Append(" where ");
            updatesb.Append(MakeWhere(sqlData));

            //客开处理
            if (sqlData.Synergismlogdt.Cvouchertype == "人员档案" && sqlData.TableName.ToLower() == "hr_hi_person" && DAL.Common.AssignJobinfo())
            {
                StringBuilder sSql = new StringBuilder();
                DbHelperSQLP sqlM = new DbHelperSQLP();
                DataSet ds = new DataSet();
                ds = sqlM.Query("select PK_hr_hi_jobInfo,cjobcode,cJobGradeCode,cJobRankCode,cDepCode,cPsn_Num from hr_hi_jobInfo with (nolock) where blastflag = '1' and cPsn_Num='" + sqlData.Fristsynergismlogdt.Cvoucherno + "' and accid='" + sqlData.ConnectInfo.AccId + "'");
                if (ds.Tables[0].Rows.Count > 0)
                {

                    //修改人员档案 部门
                    sSql.Append(" UPDATE hr_hi_person SET cDept_Num='" + ds.Tables[0].Rows[0]["cDepCode"] + "' WHERE cPsn_Num='" + sqlData.Fristsynergismlogdt.Cvoucherno + "' ");

                    //修改人员档案 职位
                    sSql.Append(" update t1 set cJobCode='" + ds.Tables[0].Rows[0]["cJobCode"] + "',cJobGradeCode='" + ds.Tables[0].Rows[0]["cJobGradeCode"] + "',");
                    sSql.Append("cJobRankCode='" + ds.Tables[0].Rows[0]["cJobRankCode"] + "',cDept_num='" + ds.Tables[0].Rows[0]["cDepCode"] + "' ");
                    sSql.Append("from hr_hi_person t1 ");
                    sSql.Append("where t1.cPsn_Num='" + sqlData.Fristsynergismlogdt.Cvoucherno + "' ");

                    //修改岗位信息 
                    sSql.Append(" UPDATE hr_hi_jobInfo SET bPartJob='0' WHERE cPsn_Num='" + sqlData.Fristsynergismlogdt.Cvoucherno + "' and PK_hr_hi_jobInfo = '" + ds.Tables[0].Rows[0]["PK_hr_hi_jobInfo"] + "'");
                    sSql.Append(" UPDATE hr_hi_jobInfo SET bPartJob='1' WHERE cPsn_Num='" + sqlData.Fristsynergismlogdt.Cvoucherno + "' and PK_hr_hi_jobInfo <> '" + ds.Tables[0].Rows[0]["PK_hr_hi_jobInfo"] + "'");

                    updatesb.Append(sSql.ToString());
                }

            }

            return updatesb.ToString();

        }



        /// <summary>
        /// 为档案操作组织数据 
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="bd"></param>
        /// <returns></returns>
        public override DealResult MakeData(Synergismlogdt dt, BaseData bd)
        {
            Model.DealResult dr = new DealResult();
            DAL.TaskLog.ITaskLogDetail dtdal = ClassFactory.GetITaskLogDetailDAL(bd.TaskType);
            Model.Synergismlogdt fristdt = dtdal.GetFirst(dt);
            DAL.Masterupds masterupdsdal = new DAL.Masterupds();
            DAL.Relation relationdal = new DAL.Relation();
            List<Model.Masterupds> listmasterupds = masterupdsdal.GetModelList(dt.Cpk, fristdt.Accid, dt.Accid);
            DAL.Common.ErrorMsg(listmasterupds, "未能取到对应的字段");
            SQLData sqldata = bd as SQLData;

            sqldata.OrderPrefix = DAL.Common.GetOrderPrefix(dt);
            sqldata.ConnectInfo = dtdal.GetConnectInfo(dt);

            if (!sqldata.ConnectInfo.BEnable)
            {
                throw new Exception("账套" + sqldata.ConnectInfo.AccId + "未在[账套档案注册]中启用");
            }

            sqldata.Synergismlogdt = dt;
            sqldata.Fristsynergismlogdt = fristdt;



            if (dt.Cdealmothed == 1) sqldata.SQLMode = "insert";
            else if (dt.Cdealmothed == 2) sqldata.SQLMode = "update";
            else if (dt.Cdealmothed == 3) sqldata.SQLMode = "delete";

            if (sqldata.Synergismlogdt.Cvouchertypename == "项目档案")
            {
                sqldata.TableName = DAL.Common.GetItemTable(fristdt.Cvoucherno.Split('|')[0]);
                if (sqldata.TableName.ToLower() != "inventory")
                {
                    sqldata.Relation = relationdal.GetModelList(string.Format("[cjointname]='{0}'", fristdt.Cvouchertype));
                    if (sqldata.TableName.ToLower() == "fitemss99")
                    {
                        sqldata.Relation[0].Cjointfield += ",Invcode";
                        sqldata.Relation[0].Clinkname += ",inventory";
                        sqldata.Relation[0].Clinkfield += ",Cinvcode";
                    }
                }
            }
            else
            {
                sqldata.TableName = listmasterupds[0].Ctable;
                sqldata.Relation = relationdal.GetModelList(string.Format("[cjointname]='{0}'", fristdt.Cvouchertype));
            }


            DataSet ods = null;
            if (dt.Cdealmothed != 3) ods = GetDataSet(fristdt);
            else//等于delete
            {
                ods = GetDataSet(dt);
                if (ods == null || ods.Tables[0].Rows.Count == 0)
                {
                    sqldata.WhereValue = GetWhereNoData();
                    return dr;

                }
            }


            DAL.Common.ErrorMsg(ods, "没有取得原单据的数据");



            SetSQLData(listmasterupds, sqldata, ods);


            return dr;
        }

        private void SetSQLData(List<Model.Masterupds> listmasterupds, SQLData sqldata, DataSet ods)
        {
            sqldata.FieldValue = new List<Model.U8NameValue>();
            Model.U8NameValue nv;

            bool isExists;
            string sUserType;
            DbHelperSQLP helpMain = new DbHelperSQLP();
            DbHelperSQLP helpChild = new DbHelperSQLP(sqldata.ConnectInfo.Constring);
            isExists = helpChild.Exists("SELECT 1 FROM sysobjects WHERE name = '" + sqldata.TableName + "' AND type='U' "); //从账套是否存在表
            DataSet dsColumns;
            string strCols = string.Format("SELECT A.name AS colName, A.isnullable, C.name As colType FROM SYSCOLUMNS A JOIN SYSOBJECTS B ON A.id=B.id JOIN SYSTYPES C ON A.xtype=C.xusertype WHERE B.name='{0}'", sqldata.TableName);
            if (isExists)
                dsColumns = helpChild.Query(strCols);
            else
                dsColumns = helpMain.Query(strCols);
            DataRow[] drColumns;

            if (sqldata.Synergismlogdt.Cvouchertypename == "项目档案" || sqldata.Synergismlogdt.Cvouchertype == "存货价格列表" || sqldata.Synergismlogdt.Cvouchertype == "客户价格列表" || sqldata.Synergismlogdt.Cvouchertype == "供应商存货价格表")
            {
                DataRow dr = ods.Tables[0].Rows[0];
                foreach (DataColumn dc in ods.Tables[0].Columns)
                {
                    nv = new Model.U8NameValue();
                    nv.U8FieldName = dc.Caption;
                    nv.U8FieldValue = dr[dc.Caption].ToString();
                    if (nv.U8FieldValue == "False") nv.U8FieldValue = "0";
                    if (nv.U8FieldValue == "True") nv.U8FieldValue = "1";
                    if (!string.IsNullOrEmpty(nv.U8FieldValue))
                    {
                        nv.IsNull = false;
                    }
                    else
                    {
                        nv.IsNull = true;
                    }

                    drColumns = dsColumns.Tables[0].Select(string.Format("colName='{0}'", nv.U8FieldName));
                    if (drColumns == null || drColumns.Length <= 0)
                    {
                        nv.IsNullAble = false;
                    }
                    else
                    {
                        if (nv.IsNull && drColumns[0]["isnullable"].ToString() == "1")
                        {
                            nv.IsNullAble = true;
                        }

                        //时间格式强制格式化    by cd_yangz 2017-08-17
                        sUserType = drColumns[0]["colType"].ToString().ToLower();
                        if (sUserType == "datetime" && !nv.IsNull)
                        {
                            nv.U8FieldValue = Convert.ToDateTime(nv.U8FieldValue).ToString("yyyy-MM-dd HH:mm:ss");
                        }
                    }

                    sqldata.FieldValue.Add(nv);
                }
            }
            else
            {
                foreach (Model.Masterupds mds in listmasterupds)
                {
                    nv = new Model.U8NameValue();
                    nv.U8FieldName = mds.Cfield;
                    if (mds.Bdefault == "1" && !string.IsNullOrEmpty(mds.Cvalue))
                    {
                        nv.U8FieldValue = mds.Cvalue;
                    }
                    else nv.U8FieldValue = ods.Tables[0].Rows[0][mds.Cfield].ToString();
                    if (nv.U8FieldValue == "False") nv.U8FieldValue = "0";
                    if (nv.U8FieldValue == "True") nv.U8FieldValue = "1";

                    //档案字段默认值处理  added by liuxzha 2015.10.15
                    if (string.IsNullOrEmpty(nv.U8FieldValue) && !string.IsNullOrEmpty(mds.CFieldDefaultValue))
                    {
                        nv.U8FieldValue = mds.CFieldDefaultValue;
                    }

                    if (!string.IsNullOrEmpty(nv.U8FieldValue))
                    {
                        nv.IsNull = false;
                    }
                    else
                    {
                        nv.IsNull = true;
                    }

                    drColumns = dsColumns.Tables[0].Select(string.Format("colName='{0}'", nv.U8FieldName));
                    if (drColumns == null || drColumns.Length <= 0)
                    {
                        nv.IsNullAble = false;
                    }
                    else
                    {
                        if (nv.IsNull && drColumns[0]["isnullable"].ToString() == "1")
                        {
                            nv.IsNullAble = true;
                        }

                        //时间格式强制格式化    by cd_yangz 2017-08-17
                        sUserType = drColumns[0]["colType"].ToString().ToLower();
                        if (sUserType == "datetime" && !nv.IsNull)
                        {
                            nv.U8FieldValue = Convert.ToDateTime(nv.U8FieldValue).ToString("yyyy-MM-dd HH:mm:ss");
                        }
                    }

                    sqldata.FieldValue.Add(nv);
                }
            }

            if (sqldata.Synergismlogdt.Cvouchertypename == "项目档案" && sqldata.TableName.ToLower() == "inventory")
                sqldata.WhereValue = GetWhereNoData();
            else
                sqldata.WhereValue = GetWhere(ods);
        }

        public abstract DataSet GetDataSet(Synergismlogdt fristdt);

        public List<Model.U8NameValue> GetWhere(DataSet ds)
        {
            List<Model.U8NameValue> list = new List<Model.U8NameValue>();

            foreach (string key in SetKeys())
            {
                Model.U8NameValue model = new Model.U8NameValue();
                model.U8FieldName = key;
                model.U8FieldValue = ds.Tables[0].Rows[0][key].ToString();
                list.Add(model);
            }
            return list;
        }

        public List<Model.U8NameValue> GetWhereNoData()
        {
            List<Model.U8NameValue> list = new List<Model.U8NameValue>();
            Model.U8NameValue model = new Model.U8NameValue();
            model.U8FieldName = "1";
            model.U8FieldValue = "2";
            list.Add(model);
            return list;
        }





        public abstract List<string> SetKeys();


        /// <summary>
        /// 关联协同(生成或修改)
        /// </summary>
        /// <param name="sqlData"></param>
        public virtual void MakeRelation(SQLData sqlData)
        {
            if (sqlData.Relation.Count == 0)  //不需要关联协同
            {
                return;
            }


            string key = string.Empty;
            //if (sqlData.WhereValue[0].U8FieldName.ToLower() == "ccode" || sqlData.WhereValue[0].U8FieldName.ToLower() == "id" || sqlData.WhereValue[0].U8FieldName.ToLower() == "autoid")
            //{
            //    key = sqlData.TableName.ToLower() + "@" + sqlData.OrderPrefix + sqlData.WhereValue[0].U8FieldValue;
            //}
            //else
            {
                key = sqlData.TableName.ToLower() + "@" + sqlData.WhereValue[0].U8FieldValue;
            }

            tablekey.Add(key);

            string[] tables = sqlData.Relation[0].Clinkname.Split(',');
            string[] cjointfields = sqlData.Relation[0].Cjointfield.Split(',');
            string[] clinkfields = sqlData.Relation[0].Clinkfield.Split(',');
            for (int i = 0; i < tables.Length; i++)
            {

                string keyvalue = DAL.Common.FieldFind(sqlData.FieldValue, cjointfields[i]);
                if (string.IsNullOrEmpty(keyvalue)) continue;
                Model.RelationDt relationdt = new RelationDt();
                relationdt.Tablename = tables[i];
                relationdt.Field = clinkfields[i];
                relationdt.Keyvalue = keyvalue;

                if (!DAL.Common.RelationExist(relationdt, sqlData))
                { 
                    DAL.TaskLog.ITaskLogDetail dtdal = ClassFactory.GetITaskLogDetailDAL(sqlData.TaskType);  //当前任务节点信息  
                    Model.ConnectInfo fristconnectinfo = dtdal.GetConnectInfo(sqlData.Fristsynergismlogdt);
                    MakeRalationCases(sqlData, fristconnectinfo, relationdt.Tablename, relationdt.Field, relationdt.Keyvalue);
                }

            }
        }
        /// <summary>
        /// 协同成功需要执行的更新操作
        /// add by wangdd
        /// </summary>
        /// <param name="sqlData"></param>
        public virtual void UpdAfterXT(SQLData sqlData, ref string sUpt) { }

 

        public override string GetCodeorID(string strID, BaseData bd, string codeorid)
        {
            return strID;
        }


        public override DealResult MakeAudit(BaseData bd, Model.Synergismlogdt dt)
        {
            return new DealResult();
        }


        /// <summary>
        /// 删除档案
        /// </summary>
        /// <param name="bd"></param>
        /// <param name="dt"></param>
        /// <returns></returns>
        public override DealResult UndoMake(BaseData bd, Model.Synergismlogdt dt)
        {
            DealResult dr = MakeData(dt, bd);
            SQLData sqldata = bd as SQLData;
            string sql = MakeDeleteStr(sqldata);

            DbHelperSQLP sqlhelp = new DbHelperSQLP(sqldata.ConnectInfo.Constring);
            int ret = sqlhelp.ExecuteSql(sql);

            if (ret == 0)
            {
                dr.ResultNum = DAL.Constant.ResultNum_NormalError;
                dr.ResultMsg = "未能找到数据，删除不成功！";
            }

            dt.Cstatus = "已删除";
            dt.Dmaketime = DateTime.Now;

            BLL.TaskLog.ITaskLogDetail logdtbll = ClassFactory.GetITaskLogDetailBLL(bd.TaskType);  
            logdtbll.Update(dt,dt.OP);
            return dr;



        }

        /// <summary>
        /// 从一数据库拷贝到另个数据库
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="basedal"></param>
        /// <param name="con"></param>
        /// <param name="fristcon"></param>
        /// <param name="keyvalue"></param>
        /// <returns></returns>
        public List<T> CopyData<T>(DAL.baseDAL<T> basedal, SQLData sqldata, string fristcon, string field, string keyvalue)
        {
            List<T> flist = basedal.GetModelList(field, keyvalue, fristcon);
            List<T> list = basedal.GetModelList(field, keyvalue, sqldata);

            if (list.Count != flist.Count)
            {
                foreach (T t in flist)
                {

                    if (!basedal.Initem(t, list))
                    {
                        basedal.Insert(t, sqldata);
                    }
                }

            }
            return list;
        }


        public abstract void MakeRalationCases(Model.SQLData sqlData, Model.ConnectInfo fristconnectinfo, string tablename, string field, string keyvalue);

        /// <summary>
        /// HY_DZ_K7_RELATIONS 循环
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="sqlData"></param>
        /// <param name="fristconnectinfo"></param>
        /// <param name="t"></param>
        /// <param name="tablename"></param>
        private void MakeRalationsCase<T>(Model.SQLData sqlData, Model.ConnectInfo fristconnectinfo, T t, string tablename)
        {
            if (t == null) return;
            if (string.IsNullOrEmpty(tablename)) return;
            List<Relations> listrelationss = new DAL.Relations().GetModelList("cmaintable='" + tablename + "'");

            string strv = string.Empty;
            foreach (Relations relation in listrelationss)
            {
                try
                {
                    Type tt = typeof(T);
                    object v1 = null;
                    try { v1 = tt.GetProperty(relation.Cmainkey).GetValue(t, null); }
                    catch { v1 = null; }

                    if (v1 == null) continue;
                    strv = v1.ToString();

                    if (!string.IsNullOrEmpty(strv))
                    {
                        MakeRalationCases(sqlData, fristconnectinfo, relation.Cftable, relation.Cfkey, strv);
                    }
                }
                catch
                {

                    DAL.Common.WriteWinLog(string.Format("cmaintable:{0},Cmainkey:{1},Cftable:{2},Cfkey:{3},KayValue:{4}", tablename, relation.Cmainkey, relation.Cftable, relation.Cfkey, strv));
                    throw new Exception(string.Format("获取[{0}]关联表时出错!", tablename));


                }
            }

        }


        /// <summary>
        /// 获取Login对象
        /// </summary>
        /// <param name="bd"></param>
        /// <param name="u8Login"></param>
        /// <returns></returns>
        private Model.DealResult GetU8Login(Model.SQLData bd, U8Login.clsLogin u8Login)
        {
            Model.DealResult dr = new Model.DealResult();

            #region 判断格式
            string strErr = ",请在［账套档案注册］模块中更新!";
            if (string.IsNullOrEmpty(bd.ConnectInfo.UserId))
            {
                dr.ResultMsg = "默认操作员不能为空" + strErr;
                dr.ResultNum = DAL.Constant.ResultNum_NormalError;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            if (string.IsNullOrEmpty(bd.ConnectInfo.Source))
            {
                dr.ResultMsg = "数据源不能为空" + strErr;
                dr.ResultNum = DAL.Constant.ResultNum_NormalError;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            if (string.IsNullOrEmpty(bd.ConnectInfo.AccId))
            {
                dr.ResultMsg = "账套号不能为空" + strErr;
                dr.ResultNum = DAL.Constant.ResultNum_NormalError;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            if (string.IsNullOrEmpty(bd.ConnectInfo.Srv))
            {
                dr.ResultMsg = "服务器地址不能为空" + strErr;
                dr.ResultNum = DAL.Constant.ResultNum_NormalError;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            if (string.IsNullOrEmpty(bd.ConnectInfo.YearId))
            {
                dr.ResultMsg = "登陆年度不能为空" + strErr;
                dr.ResultNum = DAL.Constant.ResultNum_NormalError;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            else
            {
                try { int.Parse(bd.ConnectInfo.YearId); }
                catch
                {
                    dr.ResultMsg = "登陆年度格式错误：" + bd.ConnectInfo.YearId + strErr;
                    dr.ResultNum = DAL.Constant.ResultNum_NormalError;
                    Marshal.FinalReleaseComObject(u8Login);
                    throw new Exception(dr.ResultMsg);
                }
            }
            DbHelperSQLP dsp = new DbHelperSQLP(bd.ConnectInfo.Constring);
            string strSql = "SELECT 1 FROM UFSystem.dbo.UA_AccountDatabase A JOIN UFSystem.dbo.UA_Account B ON A.cAcc_Id=B.cAcc_Id WHERE A.cAcc_Id='" + bd.ConnectInfo.AccId + "' ";
            if (!dsp.Exists(strSql))
            {
                dr.ResultMsg = "登陆失败，原因：账套 " + bd.ConnectInfo.AccId + " 在 " + bd.ConnectInfo.Srv + " 上不存在";
                dr.ResultNum = DAL.Constant.ResultNum_NormalError;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            #endregion

            string subId = "DP";    //SetSubId();  
            string userId = bd.ConnectInfo.UserId;
            string accId = bd.ConnectInfo.Source + "@" + bd.ConnectInfo.AccId;
            string yearId = bd.ConnectInfo.YearId;
            string password = bd.ConnectInfo.Password;
            string date = bd.ConnectInfo.Date;  //DateTime.Now.ToString("yyyy-MM-dd"); 
            //string srv = bd.ConnectInfo.Srv.Split('\\')[0]; edit by wangdd1
            string srv = bd.ConnectInfo.sSrv;
            string serial = bd.ConnectInfo.Serial;

            //object varLogin;
            //varLogin = u8Login.GetProcessVariate();
            //u8Login.SetProcessVariate(varLogin);

            #region 20140814


            #endregion

            if (!u8Login.Login(ref subId, ref accId, ref yearId, ref userId, ref password, ref date, ref srv, ref serial))
            {
                dr.ResultMsg = "登陆失败，原因：" + u8Login.ShareString;
                if (u8Login.ShareString.IndexOf("年度") > 0 || u8Login.ShareString.IndexOf("日期") > 0) dr.ResultMsg += " - " + date;
                dr.ResultNum = DAL.Constant.ResultNum_NormalError;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }

            return dr;
        }
        /// <summary>
        /// 具体业务流程
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="sqlData"></param>
        /// <param name="fristconnectinfo"></param>
        /// <param name="basedal"></param>
        /// <param name="keyvalue"></param>
        /// <param name="tablename"></param>
        public void MakeRalations<T>(Model.SQLData sqlData, Model.ConnectInfo fristconnectinfo, DAL.baseDAL<T> basedal, string keyvalue, string tablename, string field)
        {
            List<T> flist;
            List<T> list;
            try
            {
                flist = basedal.GetModelList(field, keyvalue, fristconnectinfo.Constring);
                list = basedal.GetModelList(field, keyvalue, sqlData);
            }
            catch (Exception ex)
            {
                throw new Exception(string.Format("MakeRalations<{0}>.GetModelList出错:{1}{2}{3}", tablename, ex.Message, Environment.NewLine, ex.TargetSite));
            }

            if (tablename.ToLower().Equals("bas_part"))
            {
                string strMsg;
                StringBuilder sbDel = new StringBuilder();
                Type tt = typeof(T);

                foreach (T t in list)
                {

                    bool bmainExist = flist.Exists(
                        delegate(T nv)
                        {
                            if (tt.GetProperty("InvCode").GetValue(nv, null).Equals(tt.GetProperty("InvCode").GetValue(t, null))
                                && tt.GetProperty("Free1").GetValue(nv, null).Equals(tt.GetProperty("Free1").GetValue(t, null))
                                && tt.GetProperty("Free2").GetValue(nv, null).Equals(tt.GetProperty("Free2").GetValue(t, null))
                                && tt.GetProperty("Free3").GetValue(nv, null).Equals(tt.GetProperty("Free3").GetValue(t, null))
                                && tt.GetProperty("Free4").GetValue(nv, null).Equals(tt.GetProperty("Free4").GetValue(t, null))
                                && tt.GetProperty("Free5").GetValue(nv, null).Equals(tt.GetProperty("Free5").GetValue(t, null))
                                && tt.GetProperty("Free6").GetValue(nv, null).Equals(tt.GetProperty("Free6").GetValue(t, null))
                                && tt.GetProperty("Free7").GetValue(nv, null).Equals(tt.GetProperty("Free7").GetValue(t, null))
                                && tt.GetProperty("Free8").GetValue(nv, null).Equals(tt.GetProperty("Free8").GetValue(t, null))
                                && tt.GetProperty("Free9").GetValue(nv, null).Equals(tt.GetProperty("Free9").GetValue(t, null))
                                && tt.GetProperty("Free10").GetValue(nv, null).Equals(tt.GetProperty("Free10").GetValue(t, null))
                                )
                            {
                                return true;
                            }
                            return false;

                        }
                    );
                    if (!bmainExist)
                    {
                        if (DAL.Common.CheckIsUsed(sqlData.ConnectInfo.Constring, "bas_part", tt.GetProperty("PartId").GetValue(t, null).ToString(), out strMsg))
                        {
                            throw new Exception(strMsg);
                        }


                        sbDel.Append(" delete from bas_part where partid = '" + tt.GetProperty("PartId").GetValue(t, null).ToString() + "' ");
                    }
                }

                foreach (T t in flist)
                {
                    MakeRalationsCase(sqlData, fristconnectinfo, t, tablename);
                    basedal.Insert(t, sqlData);
                }

                //DbHelperSQLP helpMain = new DbHelperSQLP();
                if (sbDel.Length > 0)
                {
                    DbHelperSQLP helpChild = new DbHelperSQLP(sqlData.ConnectInfo.Constring);
                    helpChild.ExecuteSql(sbDel.ToString());
                }
            }
            else if (tablename.ToLower().Equals("hr_hi_jobinfo") && DAL.Common.AssignJobinfo())   //客开
            {
                Type tt = typeof(T);
                string accidColName = "Accid";
                foreach (T t in flist)
                {
                    #region 是否协同条件判断
                    if (tt.GetProperty(accidColName).GetValue(t, null) == null || string.IsNullOrEmpty(tt.GetProperty(accidColName).GetValue(t, null).ToString()))  //为空
                    {

                    }
                    else if (tt.GetProperty(accidColName).GetValue(t, null) != null)   //不为空
                    {
                        //fristconnectinfo 来源账套连接对象
                        if (tt.GetProperty(accidColName).GetValue(t, null).Equals(sqlData.ConnectInfo.AccId))  //账套对应正确
                        {
                        }
                        else if (tt.GetProperty(accidColName).GetValue(t, null).Equals(fristconnectinfo.AccId))  //账套号为主账套
                        {
                            //tt.GetProperty(accidColName).SetValue(t, null, null);
                            continue;
                        }
                        else
                        {
                            continue;
                        }
                    }
                    else
                    {
                        continue;
                    }
                    #endregion

                    #region 执行协同
                    if (!basedal.Initem(t, list))
                    {
                        MakeRalationsCase(sqlData, fristconnectinfo, t, tablename);
                        basedal.Insert(t, sqlData);
                    }
                    #endregion

                }
            }
            //else if (tablename.ToLower().Equals("ua_user"))
            //{
            //    if (list.Count != flist.Count)
            //    {
            //        foreach (T t in flist)
            //        {
            //            if (!basedal.Initem(t, list))
            //            {
            //                //MakeRalationsCase(sqlData, fristconnectinfo, t, tablename);  ua_user 不再递归,如果递归存在死循环
            //                basedal.Insert(t, sqlData);
            //            }
            //        }

            //    }
            //}
            else if (list.Count != flist.Count)
            {
                foreach (T t in flist)
                {
                    if (!basedal.Initem(t, list))
                    {
                        MakeRalationsCase(sqlData, fristconnectinfo, t, tablename);
                        basedal.Insert(t, sqlData);
                    }
                }

            }
        }



    }
}