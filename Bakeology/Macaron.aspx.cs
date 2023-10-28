using System;
using System.Web.UI.WebControls;

namespace Bakeology
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (Session["Email"] != null)
            {
                if (e.CommandName == "ViewMore")
                {
                    Response.Redirect("Addtocart.aspx?id=" + e.CommandArgument.ToString());
                }

            }
            else
            {
                Response.Write("<script>alert('Please Login to continue')</script>");
                Response.Redirect("Login_N.aspx");
                //< script language = 'javascript' > window.alert('Please Login to continue'); window.location = 'Login_N.aspx';</ script >
            }
        }
    }
}