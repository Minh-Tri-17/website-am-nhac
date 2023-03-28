using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GOODMUSIC.UseControl
{
    public partial class ChiTietMv : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static MV infoMv = new MV();
        protected void Page_Load(object sender, EventArgs e)
        {
            long inputid;
            if(Request.QueryString["idMv"]!=""&&long.TryParse(Request.QueryString["idMv"],out inputid))
            {
                inputid = Convert.ToInt64(Request.QueryString["idMv"]);
                loadinfo(inputid);
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
        }
        public void loadinfo(long idinput)
        {
            try
            {
                var dt = from q in db.MVs
                         where q.IDMV == idinput
                         select q;
            }
            catch(Exception ex)
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
}