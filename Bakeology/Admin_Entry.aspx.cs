using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakeology
{
    public partial class Admin_Entry : System.Web.UI.Page
    {
        private SqlConnection con;
        private string connStr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "insert")
            {
                // Retrieve the uploaded file from the FileUpload control
                FileUpload fileUpload = (FileUpload)GridView1.FooterRow.FindControl("FileUpload1") as FileUpload;
                if (fileUpload.HasFile)
                {
                    string filename = Path.GetFileName(fileUpload.PostedFile.FileName);
                    fileUpload.SaveAs(Server.MapPath("~/uploads/" + filename));+
                    //Image1.ImageUrl = "~/upload/" + filename;

                    string imgpath = "~/uploads/" + filename;

                    // Insert the new row and file information into the database using your data source's Insert method
                    SqlDataSource1.InsertParameters["C_Name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox8")).Text;
                    SqlDataSource1.InsertParameters["C_Cat"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox9")).Text;
                    SqlDataSource1.InsertParameters["C_Desc"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox10")).Text;
                    SqlDataSource1.InsertParameters["C_Price"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox11")).Text;
                    SqlDataSource1.InsertParameters["C_Type"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox12")).Text;
                    SqlDataSource1.InsertParameters["C_Gms"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox13")).Text;
                    SqlDataSource1.InsertParameters["Keyword"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox14")).Text;
                    SqlDataSource1.InsertParameters["C_img"].DefaultValue = imgpath;
                    SqlDataSource1.Insert();
                    Response.Write("Data Inserted Successfully");

                    // Delete the temporary file
                    //File.Delete(filePath);
                }
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            FileUpload fileUpload = ((FileUpload)GridView1.FooterRow.FindControl("FileUpload1")) as FileUpload;
            if (fileUpload.HasFile)
            {
                string filename = Path.GetFileName(fileUpload.PostedFile.FileName);
                fileUpload.SaveAs(Server.MapPath("~/uploads/" + filename));
                //Image1.ImageUrl = "~/upload/" + filename;

                string imgpath = "~/uploads/" + filename;

                // Insert the new row and file information into the database using your data source's Insert method
                SqlDataSource1.InsertParameters["C_Name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox8")).Text;
                SqlDataSource1.InsertParameters["C_Cat"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox9")).Text;
                SqlDataSource1.InsertParameters["C_Desc"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox10")).Text;
                SqlDataSource1.InsertParameters["C_Price"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox11")).Text;
                SqlDataSource1.InsertParameters["C_Type"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox12")).Text;
                SqlDataSource1.InsertParameters["C_Gms"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox13")).Text;
                SqlDataSource1.InsertParameters["Keyword"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox14")).Text;
                SqlDataSource1.InsertParameters["C_img"].DefaultValue = imgpath;
                SqlDataSource1.Insert();
                Response.Write("Data Inserted Successfully");

                // Delete the temporary file
                //File.Delete(filePath);
            
            }
        }

            protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }
    }
}