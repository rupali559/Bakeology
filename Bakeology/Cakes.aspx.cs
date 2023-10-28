using System;
using System.Web.UI.WebControls;

namespace Bakeology
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (Request.QueryString["cake"] != null)
                {
                    DataList1.DataSource = null;
                    DataList1.DataSource = SqlDataSource2;
                    DataList1.DataBind();
                }
                else if (Request.QueryString["Egg"] != null)
                {
                    DataList1.DataSource = null;
                    DataList1.DataSource = SqlDataSource3;
                    DataList1.DataBind();
                }
                else if (Request.QueryString["Eggless"] != null)
                {
                    DataList1.DataSource = null;
                    DataList1.DataSource = SqlDataSource4;
                    DataList1.DataBind();
                }
                else if (Request.QueryString["gms"] != null)
                {
                    DataList1.DataSource = null;
                    DataList1.DataSource = SqlDataSource5;
                    DataList1.DataBind();
                }
                else if (Request.QueryString["half"] != null)
                {
                    DataList1.DataSource = null;
                    DataList1.DataSource = SqlDataSource6;
                    DataList1.DataBind();
                }

                else
                {
                    DataList1.DataSource = null;
                    DataList1.DataSource = SqlDataSource1;
                    DataList1.DataBind();
                }

            }
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox3.Checked)
            {
                Response.Redirect("Cakes.aspx?Egg=egg");

            }
            else if (CheckBox4.Checked)
            {
                Response.Redirect("Cakes.aspx?Eggless=eggless");
            }
            else if (CheckBox1.Checked)
            {
                Response.Redirect("Cakes.aspx?gms=Gms");
            }
            else if (CheckBox2.Checked)
            {
                Response.Redirect("Cakes.aspx?half=Gms");
            }
            else if (CheckBox5.Checked)
            {
                Response.Redirect("Cakes.aspx?cake=cake");
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            /*foreach (var control in Page.Controls)
            {
                if (control is CheckBox)
                {
                    ((CheckBox)control).Checked = false;
                }
            }*/
        }
    }
}