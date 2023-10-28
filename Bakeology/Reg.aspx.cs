using System;
using System.Data.SqlClient;

namespace Bakeology
{
    public partial class Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=RUPALI\SQLEXPRESS;Initial Catalog=student;Integrated Security=True");
            SqlCommand insert = new SqlCommand("INSERT INTO RegCake VALUES(@Email,@Password,@Fname,@lname,@MobileNo)", con);
            con.Open();
            insert.Parameters.AddWithValue("Email", TextBox1.Text);
            insert.Parameters.AddWithValue("Password", TextBox2.Text);
            insert.Parameters.AddWithValue("Fname", TextBox4.Text);
            insert.Parameters.AddWithValue("Lname", TextBox5.Text);
            insert.Parameters.AddWithValue("MobileNo", TextBox6.Text);
            insert.ExecuteNonQuery();
            con.Close();
        }
    }
}