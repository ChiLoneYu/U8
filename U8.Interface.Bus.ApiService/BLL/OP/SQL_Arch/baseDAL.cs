using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using U8.Interface.Bus.ApiService.Model;

namespace DAL
{
    public abstract class baseDAL<T>
    {
        public abstract int Insert(T M, SQLData sqlData);
        public abstract T GetModel(string keyvalue, string connstring);
        public abstract List<T> GetModelList(string field, string keyvalue, string constring);
        public abstract List<T> GetModelList(string field, string keyvalue, SQLData sqlData);
        public abstract bool Initem(T t, List<T> list);
    }
}
