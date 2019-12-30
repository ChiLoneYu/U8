using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace U8.Interface.Bus.ApiService.Model
{
    public  class SQLData:BaseData
    {

        private string sQLMode;

        public string SQLMode
        {
            get { return sQLMode; }
            set { sQLMode = value; }
        }

        private string tableName;

        public string TableName
        {
            get { return tableName; }
            set { tableName = value; }
        }

        private List<Model.U8NameValue> fieldValue;

        public List<Model.U8NameValue> FieldValue
        {
            get { return fieldValue; }
            set { fieldValue = value; }
        }

        private List<Model.U8NameValue> whereValue;

        public List<Model.U8NameValue> WhereValue
        {
            get { return whereValue; }
            set { whereValue = value; }
        }

        private List<Model.Relation> relation;

        public List<Model.Relation> Relation
        {
            get { return relation; }
            set { relation = value; }
        }
       

    }
}
