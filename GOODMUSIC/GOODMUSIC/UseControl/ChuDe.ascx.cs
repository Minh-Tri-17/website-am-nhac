using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GOODMUSIC.Use_control
{    
    public partial class ChuDe : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<CHU_DE> listCD = new List<CHU_DE>();
        public static List<CA_SI> listCS = new List<CA_SI>();
        public static List<BAI_HAT> listBH = new List<BAI_HAT>();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadCD();
            loadCS();
            loadBH();
        }
        public void loadCD()
        {
            var dt = (from q in db.CHU_DEs select q).ToList();
            if(dt!=null && dt.Count()>0)
            {
                listCD = dt.ToList();
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
        public void loadBH()
        {
            var dt = (from q in db.BAI_HATs select q).ToList();
            if (dt != null && dt.Count() > 0)
            {
                listBH = dt.ToList();
            }
        }
    }
}