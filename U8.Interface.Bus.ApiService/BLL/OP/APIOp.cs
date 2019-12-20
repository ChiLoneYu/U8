﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Runtime.InteropServices;
using UFIDA.U8.MomServiceCommon;
using UFIDA.U8.U8MOMAPIFramework;
using UFIDA.U8.U8APIFramework;
using UFIDA.U8.U8APIFramework.Meta;
using UFIDA.U8.U8APIFramework.Parameter;
using MSXML2;
using System.Data;
using System.Diagnostics;
using U8.Interface.Bus.ApiService.Model;
using U8.Interface.Bus.DBUtility;

namespace U8.Interface.Bus.ApiService.BLL
{
    public abstract class APIOp:BaseOp
    { 
        //设置api地址
        public abstract string SetApiAddressAdd();
        public abstract string SetApiAddressAudit();
        public abstract string SetApiAddressCancelAudit();
        public abstract string SetApiAddressDelete();
        public abstract string SetApiAddressLoad();
        public abstract string SetApiAddressUpdate();


        /// <summary>
        /// 当前单据 主表  表名
        /// </summary>
        /// <returns></returns>
        public abstract string SetTableName();
        public abstract void SetApiContext(U8EnvContext envContext); 
        public abstract bool CheckAuditStatus(string strVoucherNo, string strConn);


        /// <summary>
        /// 表头源数据
        /// 2019.12.17 added by liuxzha
        /// </summary>
        public DataSet dsHead;

        /// <summary>
        /// 表体源数据
        /// 2019.12.17 added by liuxzha
        /// </summary>
        public DataSet dsBody;
 
        /// <summary>
        /// 获取上一节点单据 表头 数据
        /// 生单表头数据
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="pdt"></param>
        /// <param name="apidata"></param>
        /// <returns></returns>
        public abstract DataSet SetFromTabet(Model.Synergismlogdt dt, Model.Synergismlogdt pdt, Model.APIData apidata);
 
        /// <summary>
        /// 获取上一节点单据 表体 数据
        /// 生单表体数据
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="pdt"></param>
        /// <param name="apidata"></param>
        /// <returns></returns>
        public abstract DataSet SetFromTabets(Model.Synergismlogdt dt, Model.Synergismlogdt pdt, Model.APIData apidata); 

        /// <summary>
        /// Invoke
        /// </summary>
        /// <param name="broker"></param>
        /// <returns></returns>
        public abstract Model.DealResult BrokerInvoker(U8ApiBroker broker);


        /// <summary>
        /// U8 Login
        /// </summary>
        public static U8Login.clsLogin _login;

        /// <summary>
        /// 获取Login对象
        /// </summary>
        /// <param name="bd"></param>
        /// <param name="u8Login"></param>
        /// <returns></returns>
        public Model.DealResult GetU8Login_bak(Model.APIData bd, U8Login.clsLogin u8Login)
        {

            System.Diagnostics.Trace.WriteLine("  begin GetU8Login  "); 

            Model.DealResult dr = new Model.DealResult();

            #region 一次登录
            //if (bd.TaskType != 1 && null != _login)
            //{
            //    u8Login = _login;
            //    return dr;
            //}

            #endregion 

            
            System.Diagnostics.Trace.WriteLine("  before  GetU8Login 判断格式 "); 

            #region 判断格式  登录
            string strErr = ",请在［账套档案注册］模块中更新!";
            if (string.IsNullOrEmpty(bd.ConnectInfo.UserId))
            {
                dr.ResultMsg = "默认操作员不能为空" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            if (string.IsNullOrEmpty(bd.ConnectInfo.Source))
            {
                dr.ResultMsg = "数据源不能为空" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            if (string.IsNullOrEmpty(bd.ConnectInfo.AccId))
            {
                dr.ResultMsg = "账套号不能为空" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            if (string.IsNullOrEmpty(bd.ConnectInfo.Srv))
            {
                dr.ResultMsg = "服务器地址不能为空" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            if (string.IsNullOrEmpty(bd.ConnectInfo.YearId))
            {
                dr.ResultMsg = "登陆年度不能为空" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            else
            {
                try { int.Parse(bd.ConnectInfo.YearId); }
                catch
                {
                    dr.ResultMsg = "登陆年度格式错误：" + bd.ConnectInfo.YearId + strErr;
                    dr.ResultNum = -1;
                    Marshal.FinalReleaseComObject(u8Login);
                    throw new Exception(dr.ResultMsg);
                }
            }
            DbHelperSQLP dsp = new DbHelperSQLP(bd.ConnectInfo.Constring);
            string strSql = "SELECT 1 FROM UFSystem.dbo.UA_AccountDatabase A JOIN UFSystem.dbo.UA_Account B ON A.cAcc_Id=B.cAcc_Id WHERE A.cAcc_Id='" + bd.ConnectInfo.AccId + "' ";
            if (!dsp.Exists(strSql))
            {
                dr.ResultMsg = "登陆失败，原因：账套 " + bd.ConnectInfo.AccId + " 在 " + bd.ConnectInfo.Srv + " 上不存在";
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            #endregion

            System.Diagnostics.Trace.WriteLine("  after  GetU8Login 判断格式 "); 

            string subId = U8.Interface.Bus.SysInfo.subId;
            string userId = bd.ConnectInfo.UserId;
            string accId = bd.ConnectInfo.Source + "@" + bd.ConnectInfo.AccId;
            string yearId = bd.ConnectInfo.YearId;
            string password = bd.ConnectInfo.Password;
            string date = bd.ConnectInfo.Date;
            string srv = bd.ConnectInfo.sSrv;
            string serial = bd.ConnectInfo.Serial;


            #region 20140814

            #endregion

            System.Diagnostics.Trace.WriteLine("  before  GetU8Login u8Login.Login   ");
            System.Diagnostics.Trace.WriteLine("  login parameter :  " + subId + "----" + accId + "----" + yearId + "----" + userId + "----" + password + "----" + date + "----" + srv + "----" + serial);

            try
            {
                if (!u8Login.Login(ref subId, ref accId, ref yearId, ref userId, ref password, ref date, ref srv, ref serial))
                {
                    System.Diagnostics.Trace.WriteLine("    GetU8Login  failed  ");
                    dr.ResultMsg = "登陆失败，原因：" + u8Login.ShareString;
                    if (u8Login.ShareString.IndexOf("年度") > 0 || u8Login.ShareString.IndexOf("日期") > 0) dr.ResultMsg += " - " + date;
                    dr.ResultNum = -1;
                    Marshal.FinalReleaseComObject(u8Login);
                    throw new Exception(dr.ResultMsg);
                }
            }
            catch(Exception ee)
            {
                if (dr.ResultNum == -1)
                {
                    throw new Exception(dr.ResultMsg);
                }
                else
                {  
                    System.Diagnostics.Trace.WriteLine("   GetU8Login u8Login.Login Error : " + ee.StackTrace);
                    dr.ResultNum = -1;
                    throw new Exception(ee.Message);
                }
            }


            System.Diagnostics.Trace.WriteLine("  end  GetU8Login u8Login.Login ");  
            System.Diagnostics.Trace.WriteLine("  end GetU8Login  "); 

            //_login = u8Login;
            return dr;
        }

        public Model.DealResult GetU8Login(Model.APIData bd, U8Login.clsLogin u8Login)
        {
            return GetU8LoginNew(bd, null, u8Login);
        }


        /// <summary>
        /// 获取 vb login 和 .net login 
        /// 可绕过login验证
        /// </summary>
        /// <param name="bd"></param>
        /// <param name="oSysLogin"></param>
        /// <param name="u8Login"></param>
        /// <returns></returns>
        private Model.DealResult GetU8LoginNew(Model.APIData bd, UFSoft.U8.Framework.Login.UI.clsLogin oSysLogin, U8Login.clsLogin u8Login)
        {

            Model.DealResult dr = new Model.DealResult();

            System.Diagnostics.Trace.WriteLine("  before  GetU8Login 判断格式 ");
            #region 判断格式  登录
            string strErr = ",请在［账套档案注册］模块中更新!";
            if (string.IsNullOrEmpty(bd.ConnectInfo.UserId))
            {
                dr.ResultMsg = "默认操作员不能为空" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            if (string.IsNullOrEmpty(bd.ConnectInfo.Source))
            {
                dr.ResultMsg = "数据源不能为空" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            if (string.IsNullOrEmpty(bd.ConnectInfo.AccId))
            {
                dr.ResultMsg = "账套号不能为空" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            if (string.IsNullOrEmpty(bd.ConnectInfo.Srv))
            {
                dr.ResultMsg = "服务器地址不能为空" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            if (string.IsNullOrEmpty(bd.ConnectInfo.YearId))
            {
                dr.ResultMsg = "登陆年度不能为空" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            else
            {
                try { int.Parse(bd.ConnectInfo.YearId); }
                catch
                {
                    dr.ResultMsg = "登陆年度格式错误：" + bd.ConnectInfo.YearId + strErr;
                    dr.ResultNum = -1;
                    Marshal.FinalReleaseComObject(u8Login);
                    throw new Exception(dr.ResultMsg);
                }
            }
            DbHelperSQLP dsp = new DbHelperSQLP(bd.ConnectInfo.Constring);
            string strSql = "SELECT 1 FROM UFSystem.dbo.UA_AccountDatabase A JOIN UFSystem.dbo.UA_Account B ON A.cAcc_Id=B.cAcc_Id WHERE A.cAcc_Id='" + bd.ConnectInfo.AccId + "' ";
            if (!dsp.Exists(strSql))
            {
                dr.ResultMsg = "登陆失败，原因：账套 " + bd.ConnectInfo.AccId + " 在 " + bd.ConnectInfo.Srv + " 上不存在";
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
            #endregion

            System.Diagnostics.Trace.WriteLine("  after  GetU8Login 判断格式 ");


            bool bLogined;
            string beginDate;

            oSysLogin = new UFSoft.U8.Framework.Login.UI.clsLogin();

            beginDate = ""; //GetMonthBegindate(acc_ID, iYear, "12")  //用12期间构造login,12期间必有
            oSysLogin.LanguageID = "zh-CN"; // GetAccountLoginLocaleID(modUtility.GetDbName(acc_ID, iYear))

            string subId = U8.Interface.Bus.SysInfo.subId;
            string userId = bd.ConnectInfo.UserId;
            string accId = bd.ConnectInfo.Source + "@" + bd.ConnectInfo.AccId;
            string yearId = bd.ConnectInfo.YearId;
            string password = bd.ConnectInfo.Password;
            string date = bd.ConnectInfo.Date;
            string srv = bd.ConnectInfo.sSrv;
            string serial = bd.ConnectInfo.Serial;

            bLogined = oSysLogin.login(subId, userId, password, srv, date, accId, serial);

            if (!bLogined)
            {
                strErr = oSysLogin.ErrDescript; //& g_fmtr.GetString("String.U8.AA.Admin.4671", g_args)
                //'strErr = oSysLogin.ErrDescript & "内置用户密码不正确！"
                //'Call WriteTransferLog(g_ologin.cAcc_ID, g_ologin.cAccName, g_ologin.cIyear, "", "准备年结环境时出现错误，错误描述：" & oSyslogin.ErrDescript & "内置用户密码不正确！")
                dr.ResultMsg = "登陆失败，原因：" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }

            UFSoft.U8.Framework.LoginContext.ProductContext oLoginContext;
            oLoginContext = new UFSoft.U8.Framework.LoginContext.ProductContext();
            oLoginContext = oSysLogin.SubLogin(U8.Interface.Bus.SysInfo.subId);

            if (null == oLoginContext)
            {
                strErr = oSysLogin.ErrDescript;
                //'MsgBox oSyslogin.ErrDescript
                //'Call WriteTransferLog(g_ologin.cAcc_ID, g_ologin.cAccName, g_ologin.cIyear, "", "准备年结环境时出现错误，错误描述：" & oSyslogin.ErrDescript)
                dr.ResultMsg = "登陆失败，原因：" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }

            //u8Login = new U8Login.clsLogin();

            if (!u8Login.ConstructLogin(oSysLogin.userToken))
            { 
                strErr = u8Login.ShareString;
                //'Call WriteTransferLog(g_ologin.cAcc_ID, g_ologin.cAccName, g_ologin.cIyear, "", "准备年结环境时出现错误，错误描述：" & oLogin.ShareString)
                dr.ResultMsg = "登陆失败，原因：" + strErr;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }
  
            if (!u8Login.Login(ref subId, ref accId, ref yearId, ref userId, ref password, ref date, ref srv, ref serial))
            {
                System.Diagnostics.Trace.WriteLine("    GetU8Login  failed  ");
                dr.ResultMsg = "登陆失败，原因：" + u8Login.ShareString;
                if (u8Login.ShareString.IndexOf("年度") > 0 || u8Login.ShareString.IndexOf("日期") > 0) dr.ResultMsg += " - " + date;
                dr.ResultNum = -1;
                Marshal.FinalReleaseComObject(u8Login);
                throw new Exception(dr.ResultMsg);
            }


            return dr;

        }


        /// <summary>
        /// 获取apibroker
        /// </summary>
        /// <param name="apidata"></param>
        /// <param name="u8Login"></param>
        /// <param name="broker"></param>
        /// <returns></returns>
        public Model.DealResult GetU8ApiBroker(Model.APIData apidata, U8Login.clsLogin u8Login, out  U8ApiBroker broker, string op)
        {
            broker = null;
            Model.DealResult dr = new Model.DealResult();
            
            switch (op)
            {
                case "add":
                    apidata.ApiAddress = SetApiAddressAdd();
                    break;
                case "delete":
                    apidata.ApiAddress = SetApiAddressDelete();
                    break;
                case "audit":
                    apidata.ApiAddress = SetApiAddressAudit();
                    break;
                case "load":
                    apidata.ApiAddress = SetApiAddressLoad();
                    break;
                case "cancelaudit":
                    apidata.ApiAddress = SetApiAddressCancelAudit();
                    break;
                case "update":
                    apidata.ApiAddress = SetApiAddressUpdate();
                    break;
            }


            try
            {
                U8EnvContext envContext = new U8EnvContext();
                envContext.U8Login = u8Login;
                SetApiContext(envContext);
                U8ApiAddress myApiAddress = new U8ApiAddress(apidata.ApiAddress);
                broker = new U8ApiBroker(myApiAddress, envContext);
            }
            catch (Exception ex)
            {
                dr.ResultNum = -1;
                dr.ResultMsg = ex.ToString();
                throw new Exception(dr.ResultMsg);
            } 
            return dr;
        }


        /// <summary>
        /// 清除Login对象占用任务
        /// </summary>
        /// <param name="strConn"></param>
        protected void ClearUATask(BaseData bd)
        {
            DbHelperSQLP dsp = new DbHelperSQLP(bd.ConnectInfo.Constring);
            string sql = string.Format("DELETE UFSystem..ua_Task WHERE cStation='{0}' AND cUser_Id='{1}' AND cAcc_Id='{2}' ", bd.ConnectInfo.Srv, bd.ConnectInfo.UserId, bd.ConnectInfo.AccId);
            dsp.ExecuteSql(sql);
        }


        /// <summary>
        /// 更新协同路线字段
        /// </summary>
        /// <param name="bd"></param>
        /// <param name="dr"></param>
        protected void UpdateTeamworkField(BaseData bd, Model.DealResult dr)
        {
            if (bd.TaskType == 1)
            {
                 DAL.TaskLog.ITaskLogMain logdal =  ClassFactory.GetITaskLogMainDAL(3);
                Model.Synergismlog logmdoel = logdal.GetModel(bd.Synergismlogdt.Id);
                string tablename = SetTableName() + "_extradefine";
                DAL.Common.UpdateTeamworkField(logmdoel.Croutetype, tablename, dr.VouchIdRet, bd.ConnectInfo.Constring);

            }
        }



        /// <summary>
        /// 组织数据
        /// </summary>
        /// <param name="dt">当前任务节点信息</param>
        /// <param name="bd">HY_DZ_K7_DLLReflect 中预置的 data类</param>
        /// <returns></returns>
        public override Model.DealResult MakeData(Model.Synergismlogdt dt, BaseData bd)
        {
            Model.DealResult dr = new Model.DealResult();
            Model.APIData apidata = bd as Model.APIData;         //API实体,包括当前任务节点信息
            
            DAL.TaskLog.ITaskLogDetail dtdal = ClassFactory.GetITaskLogDetailDAL(apidata.TaskType);  //当前任务节点信息 

            Model.Synergismlogdt pdt = dtdal.GetPrevious(dt);      //上一任务节点信息

            apidata.ConnectInfo = dtdal.GetConnectInfo(dt);   //获取当前结点的数据串连接串
            apidata.Synergismlogdt = dt;

            if (!apidata.Dodelete)
            {
                DataSet rdds = SetFromTabet(dt, pdt, apidata);    //上一节点 单据头信息
                DataSet rdsds = SetFromTabets(dt, pdt, apidata);  //上一节点 单据体信息

                DAL.IFieldcmps fieldcmpdal = ClassFactory.GetIFieldcmpsDAL(apidata.TaskType); //new DAL.Fieldcmps();
                List<Model.Fieldcmps> listfd = fieldcmpdal.GetListFieldcmps(dt, pdt,apidata.TaskType);   //字段对照信息
                BLL.U8NameValue u8namevaluebll = new BLL.U8NameValue();  //字段赋值
                u8namevaluebll.SetHeadData(apidata, rdds, rdsds, listfd, dt);
                u8namevaluebll.SetBodyData(apidata, rdds, rdsds, listfd, dt); 

                //设置订单关联    
                DAL.Common.SetInBody(apidata);
                SetNormalValue(apidata, dt);
            }
            return dr;
        }



        /// <summary>
        /// 设置通用变量
        /// </summary>
        /// <param name="apidata"></param>
        /// <param name="dt"></param>
        public virtual void SetNormalValue(Model.APIData apidata, Model.Synergismlogdt dt)
        {
            DAL.APINormal.SetNormalValue(apidata, dt);
        }

  
    }
}
