using System;

namespace U8.Interface.Bus.ApiService.Model
{
    /// <summary>
    /// Code By jinjianfeng 2013-10-31 10:40:38
    /// </summary>


    public class Relations
    {
        public Relations()
        {
        }
        #region Private property
        private int? _idx = null;
        private string _cmaintable = null;
        private string _cmainkey = null;
        private string _cftable = null;
        private string _cfkey = null;
        #endregion

        #region public - Property
        /// <summary>
        ///
        /// </summary>
        public int? Idx
        {
            get { return _idx; }
            set { _idx = value; }
        }
        /// <summary>
        ///
        /// </summary>
        public string Cmaintable
        {
            get { return _cmaintable; }
            set { _cmaintable = value; }
        }
        /// <summary>
        ///
        /// </summary>
        public string Cmainkey
        {
            get { return _cmainkey; }
            set { _cmainkey = value; }
        }
        /// <summary>
        ///
        /// </summary>
        public string Cftable
        {
            get { return _cftable; }
            set { _cftable = value; }
        }
        /// <summary>
        ///
        /// </summary>
        public string Cfkey
        {
            get { return _cfkey; }
            set { _cfkey = value; }
        }
        #endregion
    }

}



