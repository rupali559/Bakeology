using System;
using System.Web.UI.WebControls;

namespace Bakeology
{
    public partial class Search : System.Web.UI.Page
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
                Response.Write("<script language = 'javascript'> window.alert('Please Login to continue'); window.location = 'Login_N.aspx';</script >");

            }
        }
    }
}