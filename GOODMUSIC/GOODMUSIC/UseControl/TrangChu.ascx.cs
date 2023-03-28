using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GOODMUSIC.Use_control
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<BAI_HAT> listBH = new List<BAI_HAT>();
        public static List<CA_SI> listCS = new List<CA_SI>();
        public static List<CHU_DE> listCD = new List<CHU_DE>();
        public static List<TOP_20> listTop = new List<TOP_20>();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadBH();
            loadCS();
            loadCD();
            loadTop();
        }
        public void loadTop()
        {
            var dt = (from q in db.TOP_20s select q).ToList();
            if (dt != null && dt.Count()>0)
            {
                listTop = dt.ToList();
            }
        }
        public void loadBH()
        {
            var dt = (from q in db.BAI_HATs select q).Take(10);
            if(dt!=null && dt.Count() > 0)
            {
                listBH = dt.ToList();
            }
        }
        public void loadCS()
        {
            var dt = (from q in db.CA_SIs select q).ToList();
            if(dt!=null && dt.Count() > 0)
            {
                listCS = dt.ToList();
            }
        }
        public void loadCD()
        {
            var dt = (from q in db.CHU_DEs select q).ToList();
            if (dt != null && dt.Count() > 0)
            {
                listCD = dt.ToList();
            }
        }
    }
}