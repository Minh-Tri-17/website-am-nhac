using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GOODMUSIC.UseControl
{
    public partial class ChiTietCD : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<BAI_HAT> listBH = new List<BAI_HAT>();
        protected void Page_Load(object sender, EventArgs e)
        {
            long inputid;
            if (Request.QueryString["idCD"] != "" && long.TryParse(Request.QueryString["idCD"], out inputid))
            {
                loadBH(inputid);
            }

            else
            {
                Response.Redirect("Error.aspx");
            }
        }
        public void loadBH(long idinputCD)
        {
            try
            {
                var dt1 = (from q in db.BAI_HATs
                           where q.IDCD == idinputCD
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