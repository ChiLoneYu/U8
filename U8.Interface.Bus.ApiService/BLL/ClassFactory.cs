using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using U8.Interface.Bus.ApiService.Model;
using U8.Interface.Bus.ApiService.DAL;

namespace U8.Interface.Bus.ApiService.BLL
{


    /// <summary>
    /// 类工厂
    /// </summary>
    public class ClassFactory
    {


        #region 获取数据对象

        /// <summary>
        /// 获取数据对象
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public static BaseData GetBaseData(Model.Synergismlogdt dt)
        { 
            return GetBaseData(dt.Cvouchertype,dt.TaskType);
        }


        /// <summary>
        /// 获取数据对象
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public static BaseData GetBaseData(string voucherType,int taskType)
        {
            DAL.DLLReflect dal = new DAL.DLLReflect();
            Model.DLLReflect model = dal.GetModel("cvouchertype='" + voucherType + "' and ClassType='data' and tasktype = " + taskType);
            Common.ErrorMsg(model, "未能取到数据对象");
            return (BaseData)System.Reflection.Assembly.Load(model.Dllpath).CreateInstance(model.Npace + "." + model.ClassName, true, System.Reflection.BindingFlags.CreateInstance, null, new object[] { model.TaskType }, null, null);
        }
 
        #endregion


        #region 获取操作对象

        /// <summary>
        /// 获取操作对象
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public static BaseOp GetBaseOp(Model.Synergismlog dt)
        { 
            return GetBaseOp(dt.Cvouchertype, dt.TaskType);
        }


        /// <summary>
        /// 获取操作对象
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public static BaseOp GetBaseOp(Model.Synergismlogdt dt)
        { 
            return GetBaseOp(dt.Cvouchertype,dt.TaskType);
        }


        /// <summary>
        /// 获取操作对象
        /// </summary>
        /// <param name="voucherType"></param>
        /// <param name="taskType"></param>
        /// <returns></returns>
        public static BaseOp GetBaseOp(string voucherType,int taskType)
        {
            DAL.DLLReflect dal = new DAL.DLLReflect();
            string swhere = "cvouchertype='" + voucherType + "' and ClassType='op' and tasktype = " + taskType;
            Model.DLLReflect model = dal.GetModel(swhere);
            Common.ErrorMsg(model, "未能取到操作类型对象");
            return (BaseOp)System.Reflection.Assembly.Load(model.Dllpath).CreateInstance(model.Npace + "." + model.ClassName);
        }

        #endregion


        #region 获取日志BLL
        /// <summary>
        /// 任务Main BLL 工厂
        /// </summary>
        /// <param name="tasktype"></param>
        /// <returns></returns>
        public static BLL.TaskLog.ITaskLogMain GetITaskLogMainBLL(int taskType)
        {

            DAL.DLLReflect dal = new DAL.DLLReflect();
            Model.DLLReflect model = dal.GetModel("ClassType='logBLL' and tasktype = " + taskType);
            Common.ErrorMsg(model, "未能取到数据对象");
            return (BLL.TaskLog.ITaskLogMain)System.Reflection.Assembly.Load(model.Dllpath).CreateInstance(model.Npace + "." + model.ClassName, true, System.Reflection.BindingFlags.CreateInstance, null, null, null, null);
         
        }


        /// <summary>
        /// 任务detail BLL 工厂
        /// </summary>
        /// <param name="tasktype"></param>
        /// <returns></returns>
        public static BLL.TaskLog.ITaskLogDetail GetITaskLogDetailBLL(int taskType)
        {
            DAL.DLLReflect dal = new DAL.DLLReflect();
            Model.DLLReflect model = dal.GetModel("ClassType='logsBLL' and tasktype = " + taskType);
            Common.ErrorMsg(model, "未能取到数据对象");
            return (BLL.TaskLog.ITaskLogDetail)System.Reflection.Assembly.Load(model.Dllpath).CreateInstance(model.Npace + "." + model.ClassName, true, System.Reflection.BindingFlags.CreateInstance, null, null, null, null);
          
        }

        #endregion

        #region 获取日志DAL
        /// <summary>
        /// 任务main DAL 工厂
        /// </summary>
        /// <param name="tasktype"></param>
        /// <returns></returns>
        public static DAL.TaskLog.ITaskLogMain GetITaskLogMainDAL(int taskType)
        {
            DAL.DLLReflect dal = new DAL.DLLReflect();
            Model.DLLReflect model = dal.GetModel("ClassType='logDAL' and tasktype = " + taskType);
            Common.ErrorMsg(model, "未能取到数据对象");
            return (DAL.TaskLog.ITaskLogMain)System.Reflection.Assembly.Load(model.Dllpath).CreateInstance(model.Npace + "." + model.ClassName, true, System.Reflection.BindingFlags.CreateInstance, null, null, null, null);
      

        }


        /// <summary>
        /// 任务detail DAL 工厂
        /// </summary>
        /// <param name="tasktype"></param>
        /// <returns></returns>
        public static DAL.TaskLog.ITaskLogDetail GetITaskLogDetailDAL(int taskType)
        {
            DAL.DLLReflect dal = new DAL.DLLReflect();
            Model.DLLReflect model = dal.GetModel("ClassType='logsDAL' and tasktype = " + taskType);
            Common.ErrorMsg(model, "未能取到数据对象");
            return (DAL.TaskLog.ITaskLogDetail)System.Reflection.Assembly.Load(model.Dllpath).CreateInstance(model.Npace + "." + model.ClassName, true, System.Reflection.BindingFlags.CreateInstance, null, null, null, null);
      

        }

        #endregion

        #region 界面日志


        public static BLL.TaskLog.IShowLog GetIShowLogMainBLL(int taskType)
        {
            DAL.DLLReflect dal = new DAL.DLLReflect();
            Model.DLLReflect model = dal.GetModel("ClassType='showBLL' and tasktype = " + taskType);
            Common.ErrorMsg(model, "未能取到数据对象");
            return (BLL.TaskLog.IShowLog)System.Reflection.Assembly.Load(model.Dllpath).CreateInstance(model.Npace + "." + model.ClassName, true, System.Reflection.BindingFlags.CreateInstance, null, null, null, null);

        }

        public static BLL.TaskLog.IShowLogDt GetIShowLogDetailBLL(int taskType)
        {
            DAL.DLLReflect dal = new DAL.DLLReflect();
            Model.DLLReflect model = dal.GetModel("ClassType='showsBLL' and tasktype = " + taskType);
            Common.ErrorMsg(model, "未能取到数据对象");
            return (BLL.TaskLog.IShowLogDt)System.Reflection.Assembly.Load(model.Dllpath).CreateInstance(model.Npace + "." + model.ClassName, true, System.Reflection.BindingFlags.CreateInstance, null, null, null, null);

        }


        /// <summary>
        /// main DAL 工厂
        /// </summary>
        /// <param name="tasktype"></param>
        /// <returns></returns>
        public static DAL.TaskLog.IShowLog GetIShowLogMainDAL(int taskType)
        {
            DAL.DLLReflect dal = new DAL.DLLReflect();
            Model.DLLReflect model = dal.GetModel("ClassType='showDAL' and tasktype = " + taskType);
            Common.ErrorMsg(model, "未能取到数据对象");
            return (DAL.TaskLog.IShowLog)System.Reflection.Assembly.Load(model.Dllpath).CreateInstance(model.Npace + "." + model.ClassName, true, System.Reflection.BindingFlags.CreateInstance, null, null, null, null);


        }


        /// <summary>
        /// detail DAL 工厂
        /// </summary>
        /// <param name="tasktype"></param>
        /// <returns></returns>
        public static DAL.TaskLog.IShowLogDt GetIShowLogDetailDAL(int taskType)
        {
            DAL.DLLReflect dal = new DAL.DLLReflect();
            Model.DLLReflect model = dal.GetModel("ClassType='showsDAL' and tasktype = " + taskType);
            Common.ErrorMsg(model, "未能取到数据对象");
            return (DAL.TaskLog.IShowLogDt)System.Reflection.Assembly.Load(model.Dllpath).CreateInstance(model.Npace + "." + model.ClassName, true, System.Reflection.BindingFlags.CreateInstance, null, null, null, null);


        }

        #endregion

        #region 字段对照
        /// <summary>
        /// fieldcmps 工厂
        /// </summary>
        /// <param name="tasktype"></param>
        /// <returns></returns>
        public static DAL.IFieldcmps GetIFieldcmpsDAL(int tasktype)
        {
            DAL.IFieldcmps dal;
            switch (tasktype)
            {
                case 0:
                    dal = new DAL.CQ.Fieldcmps();
                    break;
                case 1:
                    dal = new DAL.Fieldcmps();
                    break;
                case 2:
                    dal = new DAL.DS.Fieldcmps();
                    break;
                case 3:
                    dal = new DAL.Fieldcmps();
                    break;
                default: 
                    dal = new DAL.Fieldcmps();
                    break;
                    //BLL.Common.ErrorMsg(SysInfo.productName, "tasktype" + tasktype + "未适配!");
                    //return null;
            }

            return dal;

        }

        #endregion


    }
}
