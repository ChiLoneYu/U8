using System;



namespace U8.Interface.Bus.ApiService.Model
{
    public class Relation
    {
        public Relation()
        {
        }
        #region Private property
        private int _autoid;
        private string _cjointname;
        private string _clinkname;
        private string _cjointfield;
        private string _clinkfield;
        #endregion

        #region public - Property
        /// <summary>
        ///
        /// </summary>
        public int Autoid
        {
            get { return _autoid; }
            set { _autoid = value; }
        }
        /// <summary>
        ///
        /// </summary>
        public string Cjointname
        {
            get { return _cjointname; }
            set { _cjointname = value; }
        }
        /// <summary>
        ///
        /// </summary>
        public string Clinkname
        {
            get { return _clinkname; }
            set { _clinkname = value; }
        }
        /// <summary>
        ///
        /// </summary>
        public string Cjointfield
        {
            get { return _cjointfield; }
            set { _cjointfield = value; }
        }
        /// <summary>
        ///
        /// </summary>
        public string Clinkfield
        {
            get { return _clinkfield; }
            set { _clinkfield = value; }
        }
        #endregion
    }

}



