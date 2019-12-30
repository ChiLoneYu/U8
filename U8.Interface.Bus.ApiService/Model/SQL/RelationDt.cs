using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace U8.Interface.Bus.ApiService.Model
{
  public  class RelationDt
    {

        string tablename;

        public string Tablename
        {
            get { return tablename; }
            set { tablename = value; }
        }
        string field;

        public string Field
        {
            get { return field; }
            set { field = value; }
        }
        string keyvalue;

        public string Keyvalue
        {
            get { return keyvalue; }
            set { keyvalue = value; }
        }
    }
}
