using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace U8.Interface.Bus.ApiService.Model
{
    public class Masterupds
    {

        /// <summary>
        /// autoid
        /// </summary>		
        private string autoid;
        public string Autoid
        {
            get { return autoid; }
            set { autoid = value; }
        }
        /// <summary>
        /// id
        /// </summary>		
        private string id;
        public string Id
        {
            get { return id; }
            set { id = value; }
        }
        /// <summary>
        /// ctable
        /// </summary>		
        private string ctable;
        public string Ctable
        {
            get { return ctable; }
            set { ctable = value; }
        }
        /// <summary>
        /// cfield
        /// </summary>		
        private string cfield;
        public string Cfield
        {
            get { return cfield; }
            set { cfield = value; }
        }
        /// <summary>
        /// 是否选中
        ///--0:未选中;1:已选中;
        /// </summary>		
        private string bselected;
        public string Bselected
        {
            get { return bselected; }
            set { bselected = value; }
        }
        /// <summary>
        /// 是否设置默认值覆盖
        ///--0:否;1:是
        /// </summary>		
        private string bdefault;
        public string Bdefault
        {
            get { return bdefault; }
            set { bdefault = value; }
        }
        /// <summary>
        /// cremark
        /// </summary>		
        private string cremark;
        public string Cremark
        {
            get { return cremark; }
            set { cremark = value; }
        }
        /// <summary>
        /// cdefine22
        /// </summary>		
        private string cdefine22;
        public string Cdefine22
        {
            get { return cdefine22; }
            set { cdefine22 = value; }
        }
        /// <summary>
        /// cdefine23
        /// </summary>		
        private string cdefine23;
        public string Cdefine23
        {
            get { return cdefine23; }
            set { cdefine23 = value; }
        }
        /// <summary>
        /// cdefine24
        /// </summary>		
        private string cdefine24;
        public string Cdefine24
        {
            get { return cdefine24; }
            set { cdefine24 = value; }
        }
        /// <summary>
        /// cdefine25
        /// </summary>		
        private string cdefine25;
        public string Cdefine25
        {
            get { return cdefine25; }
            set { cdefine25 = value; }
        }
        /// <summary>
        /// cdefine26
        /// </summary>		
        private decimal cdefine26;
        public decimal Cdefine26
        {
            get { return cdefine26; }
            set { cdefine26 = value; }
        }
        /// <summary>
        /// cdefine27
        /// </summary>		
        private decimal cdefine27;
        public decimal Cdefine27
        {
            get { return cdefine27; }
            set { cdefine27 = value; }
        }
        /// <summary>
        /// cdefine28
        /// </summary>		
        private string cdefine28;
        public string Cdefine28
        {
            get { return cdefine28; }
            set { cdefine28 = value; }
        }
        /// <summary>
        /// cdefine29
        /// </summary>		
        private string cdefine29;
        public string Cdefine29
        {
            get { return cdefine29; }
            set { cdefine29 = value; }
        }
        /// <summary>
        /// cdefine30
        /// </summary>		
        private string cdefine30;
        public string Cdefine30
        {
            get { return cdefine30; }
            set { cdefine30 = value; }
        }
        /// <summary>
        /// cdefine31
        /// </summary>		
        private string cdefine31;
        public string Cdefine31
        {
            get { return cdefine31; }
            set { cdefine31 = value; }
        }
        /// <summary>
        /// cdefine32
        /// </summary>		
        private string cdefine32;
        public string Cdefine32
        {
            get { return cdefine32; }
            set { cdefine32 = value; }
        }
        /// <summary>
        /// cdefine33
        /// </summary>		
        private string cdefine33;
        public string Cdefine33
        {
            get { return cdefine33; }
            set { cdefine33 = value; }
        }
        /// <summary>
        /// cdefine34
        /// </summary>		
        private int cdefine34;
        public int Cdefine34
        {
            get { return cdefine34; }
            set { cdefine34 = value; }
        }
        /// <summary>
        /// cdefine35
        /// </summary>		
        private int cdefine35;
        public int Cdefine35
        {
            get { return cdefine35; }
            set { cdefine35 = value; }
        }
        /// <summary>
        /// cdefine36
        /// </summary>		
        private DateTime cdefine36;
        public DateTime Cdefine36
        {
            get { return cdefine36; }
            set { cdefine36 = value; }
        }
        /// <summary>
        /// cdefine37
        /// </summary>		
        private DateTime cdefine37;
        public DateTime Cdefine37
        {
            get { return cdefine37; }
            set { cdefine37 = value; }
        }

        private string cfieldtype;
        /// <summary>
        /// 数据类型
        /// </summary>
        public string Cfieldtype
        {
            get { return cfieldtype; }
            set { cfieldtype = value; }
        }
                                        
        private string cvalue;
        /// <summary>
        /// 默认值
        /// </summary>
        public string Cvalue
        {
            get { return cvalue; }
            set { cvalue = value; }
        }

        //值为空时的默认值  added by liuxzha 2015.10.15
        private string cfielddefaultvalue;
        /// <summary>
        /// 值为空时的默认值  
        /// </summary>
        public string CFieldDefaultValue
        {
            get { return cfielddefaultvalue; }
            set { cfielddefaultvalue = value; }
        }


    }
}

