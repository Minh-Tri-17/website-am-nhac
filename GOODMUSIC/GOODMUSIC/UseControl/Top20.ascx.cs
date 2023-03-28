using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GOODMUSIC.Use_control
{
    public partial class Top20 : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<BAI_HAT> listBH = new List<BAI_HAT>();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadBH();
        }
        public void loadBH()
        {
            var dt = (from q in db.BAI_HATs select q).ToList();
            if(dt!=null && dt.Count() > 0)
            {
                listBH = dt.ToList();
            }
        }
    }
}