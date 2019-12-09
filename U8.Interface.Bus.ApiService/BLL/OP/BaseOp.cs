using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using U8.Interface.Bus.ApiService.Model;

namespace U8.Interface.Bus.ApiService.BLL
{
    /// <summary>
    /// HY_DZ_K7_DLLReflect 表中,预置的OP类信息
    /// 单据与档案协同操作类的父类
    /// </summary>
    public abstract class BaseOp
    {
        

        /// <summary>
        /// 获取新任务
        /// </summary>
        /// <returns></returns>
        public abstract  TaskList GetTask();

        //获取上一结点
        public abstract Model.Synergismlogdt GetFirst(Model.Synergismlogdt dt); 
        //获取上一结点
        public abstract Model.Synergismlogdt GetPrevious(Model.Synergismlogdt dt); 
        //获取下一结点
        public abstract List<Model.Synergismlogdt> GetNext(Model.Synergismlogdt dt);


        public abstract Model.Synergismlogdt GetModel(string autoid);
        public abstract Model.Synergismlog GetLogModel(string autoid); 

 
        /// <summary>
        /// 更新任务日志子表
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public abstract int Update(Model.Synergismlogdt dt);  
        /// <summary>
        /// 更新任务日志主表
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public abstract int Update(Model.Synergismlog dt);
  
  
        /// <summary>
        /// 组织数据
        /// </summary>
        /// <param name="dt">任务日志</param>
        /// <param name="bd"></param>
        /// <returns></returns>
        public abstract Model.DealResult MakeData(Model.Synergismlogdt dt, BaseData bd);
 
         
        /// <summary>
        /// 新增单据、档案协同
        /// </summary>
        /// <param name="bd"></param>
        /// <returns></returns>
        public abstract Model.DealResult MakeVouch(BaseData bd);

        //修改单据
        public abstract Model.DealResult MakeUpdate(BaseData bd);

        //审核单据
        public abstract Model.DealResult MakeAudit(BaseData bd, Model.Synergismlogdt dt);

        //删除单据
        public abstract Model.DealResult UndoMake(BaseData bd, Model.Synergismlogdt dt);


        /// <summary>
        /// 获取当前单据号或ID
        /// </summary>
        /// <param name="strID"></param>
        /// <param name="bd"></param>
        /// <param name="codeorid"></param>
        /// <returns></returns>
        public abstract string GetCodeorID(string strID, BaseData bd, string codeorid);


    }

}