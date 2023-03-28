using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GOODMUSIC.UseControl
{
    public partial class ShowMv : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<MV> listMV = new List<MV>() ;
        public static List<CA_SI> listCS = new List<CA_SI>();        
        protected void Page_Load(object sender, EventArgs e)
        {
            loadCS();
            loadMV();
        }
        public void loadMV()
        {
            var dt = (from q in db.MVs select q).ToList();
            if(dt!=null && dt.Count() > 0)
            {
                listMV = dt.ToList();
            }
        }
        public void loadCS()
        {
            var dt = (from q in db.CA_SIs select q).ToList();
            if (dt != null && dt.Count() > 0)
            {
                listCS = dt.ToList();
            }
        }
    }
}