using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GOODMUSIC.UseControl
{
    public partial class ChiTietT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<BAI_HAT> listBH = new List<BAI_HAT>();
        protected void Page_Load(object sender, EventArgs e)
        {
            long inputid;
            if (Request.QueryString["idT"] != "" && long.TryParse(Request.QueryString["idT"], out inputid))
            {
                loadBH(inputid);
            }

            else
            {
                Response.Redirect("Error.aspx");
            }
        }
        public void loadBH(long idinputT)
        {
            try
            {
                var dt1 = (from q in db.BAI_HATs
                           where q.IDTOP == idinputT
                           select q).ToList();
                if (dt1 != null && dt1.Count() > 0)
                {
                    listBH = dt1.ToList();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
}