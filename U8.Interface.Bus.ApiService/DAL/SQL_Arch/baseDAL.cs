using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace U8.Interface.Bus.ApiService.DAL
{
    public abstract class baseDAL<T>
    {
        public abstract int Insert(T M, Model.SQLData sqlData);
        public abstract T GetModel(string keyvalue, string connstring);
        public abstract List<T> GetModelList(string field, string keyvalue, string constring);
        public abstract List<T> GetModelList(string field, string keyvalue, Model.SQLData sqlData);
        public abstract bool Initem(T t, List<T> list);
    }
}
