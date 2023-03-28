using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GOODMUSIC.UseControl
{
    public partial class Admin : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnG_Click(object sender, EventArgs e)
        {
            BAI_HAT infoBH = new BAI_HAT();
            MV infoMV = new MV();
            CHU_DE infoCD = new CHU_DE();
            TOP_20 infoT = new TOP_20();

            try
            {                
                if (TxtIDCS1.Text != "")
                {
                    infoBH.IDCS = int.Parse(TxtIDCS1.Text);
                    infoBH.CASI = TxtTCS1.Text;
                    infoBH.TENBH = TxtTN1.Text;
                    if (FULNhac1.HasFile || FULAN1.HasFile)
                    {
                        infoBH.ANH = FULAN1.FileName;
                        FULAN1.SaveAs(Server.MapPath("imagesBH_MV\\imagesBH\\") + infoBH.ANH);
                        infoBH.LINK = FULNhac1.FileName;
                        FULNhac1.SaveAs(Server.MapPath("LinkMP3\\NhacTT\\") + infoBH.LINK);
                    }
                }
                if (TxtIDCSM2.Text != "")
                {
                    infoMV.IDCS = int.Parse(TxtIDCSM2.Text);
                    infoMV.CASI = TxtTCSM2.Text;
                    infoMV.TENMV = TxtTMV2.Text;
                    if (FULMv2.HasFile || FULAM2.HasFile)
                    {
                        infoMV.ANH = FULAM2.FileName;
                        FULAM2.SaveAs(Server.MapPath("imagesBH_MV\\imagesMV\\") + infoMV.ANH);
                        infoMV.LINK = FULMv2.FileName;
                        FULMv2.SaveAs(Server.MapPath("LinkMV\\") + infoMV.LINK);
                    }
                }
                if (TxtTCD3.Text != "")
                {
                    infoCD.TENCD = TxtTCD3.Text;
                    if (FULChuDe3.HasFile)
                    {
                        infoCD.HINHCD = FULChuDe3.FileName;
                        FULChuDe3.SaveAs(Server.MapPath("images\\") + infoCD.HINHCD);
                    }
                }
                if (TxtTT4.Text != "")
                {
                    infoT.TENTOP = TxtTT4.Text;
                    if (FULTop4.HasFile)
                    {
                        infoT.HINHTOP = FULTop4.FileName;
                        FULTop4.SaveAs(Server.MapPath("images\\") + infoT.HINHTOP);
                    }
                }
                db.SubmitChanges();
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công!!!')", true);
                ClearFrom();
            }
            catch(Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thất bại!!!')", true);                
            }
        }
        
        private void ClearFrom()
        {
            TxtIDCS1.Text = "";
            TxtTCS1.Text = "";
            TxtTN1.Text = "";
            TxtIDCSM2.Text = "";
            TxtNCN2.Text = "";
            TxtTCSM2.Text = "";
            TxtTMV2.Text = "";
            TxtTCD3.Text = "";
            TxtTT4.Text = "";
        }
    }
}
