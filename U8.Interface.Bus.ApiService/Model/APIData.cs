﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace U8.Interface.Bus.ApiService.Model
{

    /// <summary>
    /// API实体:
    /// 包括 1. api路径
    ///      2. u8 api 中的单据类型
    ///      3. 当前任务节点信息
    ///      4. 表头数据，表体数据
    /// </summary>
    public  class APIData:BaseData
    { 
        
        public APIData()
        { 
        }

        public APIData(int tasktype):base(tasktype) 
        {

        }

 
        private string apiAddress;
        public string ApiAddress
        {
            get { return apiAddress; }
            set { apiAddress = value; }
        }

        /// <summary>
        /// u8 api 中的单据类型
        /// </summary>
        private string sVouchType;
        /// <summary>
        /// u8 api 中的单据类型
        /// </summary>
        public string SVouchType
        {
            get { return sVouchType; }
            set { sVouchType = value; }
        
        }

        /// <summary>
        /// 表头
        /// </summary>
        private List<Model.U8NameValue> headData;
        public List<Model.U8NameValue> HeadData
        {
            get { return headData; }
            set { headData = value; }
        }


        /// <summary>
        /// 表体
        /// </summary>
        private List<List<Model.U8NameValue>> bodyData;
        public List<List<Model.U8NameValue>> BodyData
        {
            get { return bodyData; }
            set { bodyData = value; }
        }


        /// <summary>
        /// 带子表的表体
        /// </summary>
        private List<BodyRow> sfcbodydata;
        public List<BodyRow> SfcBodyData
        {
            get { return sfcbodydata; }
            set { sfcbodydata = value; }
        }
         

         
        /// <summary>
        /// Api生单类
        /// </summary>
        private BLL.BaseOp op;
        public BLL.BaseOp OP
        {
            get { return op; }
            set { op = value; }
        }



    }
}
