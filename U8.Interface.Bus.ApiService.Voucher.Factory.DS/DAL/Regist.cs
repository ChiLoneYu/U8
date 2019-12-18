using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Configuration;
using U8.Interface.Bus.DBUtility;

namespace U8.Interface.Bus.ApiService.Voucher.Factory.DS.DAL
{
    public class Regist
    {

        string _tableName = "HY_DZ_K7_REGIST";

        /// <summary>
        /// 获取数据库连接信息
        /// </summary>
        public Model.Regist GetModel(string acccode)
        { 
            Model.Regist model = new Model.Regist();
            model.Accid = "1000000002";
            model.Acccode = "0000000002";

            model.Cservername = ConfigurationManager.AppSettings["u8servername"];
            model.Cacc_id = ConfigurationManager.AppSettings["u8acccode"];  //"888";
            model.Caccname = ConfigurationManager.AppSettings["dbcatalogname"];   //UFDATA_888_2015
            model.Cpassword = ConfigurationManager.AppSettings["u8pwd"];
            model.Benable = "1";
            model.Cuser_id = ConfigurationManager.AppSettings["u8user"];
            model.Cmaker = ConfigurationManager.AppSettings["u8user"];

            return model;
        }

 
    }
}
