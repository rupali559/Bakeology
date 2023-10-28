using System;
using System.Web.UI.WebControls;

namespace Bakeology
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Addtocart")
            {
                Response.Redirect("Cart.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}