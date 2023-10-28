using System;

namespace Bakeology
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                Label1.Visible = true;
                Label1.Text = "Hii.." + Session["email"];
            }
            else
                Label1.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["search"] = TextBox1.Text;

            if (Session["search"] != null)
            {
                Response.Redirect("Search.aspx");
            }



        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }
    }
}