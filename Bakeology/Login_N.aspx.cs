using System;
using System.Data.SqlClient;

namespace Bakeology
{
    public partial class Login_N : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=RUPALI\SQLEXPRESS;Initial Catalog=student;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(" SELECT * FROM RegCake WHERE  Email = '" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ", con);
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["Email"] = TextBox1.Text;
                Response.Redirect("Home.aspx");
            }
            else if (TextBox1.Text == "admin" && TextBox2.Text == "pass")
            {
                Response.Redirect("Admindesk.aspx");
            }
            else
            {
                Label2.Text = "Invalid username or password";
            }
            con.Close();
        }
    }
}