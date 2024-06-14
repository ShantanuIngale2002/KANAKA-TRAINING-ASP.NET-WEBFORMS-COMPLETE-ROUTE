using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// sql nsamespace
using System.Data.SqlClient;
using System.Configuration;
using System.EnterpriseServices;

namespace SimpleLoginFormWithSQL
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        // get connection
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SignupButton_Click(object sender, EventArgs e)
        {
            // make connection
            SqlConnection con = new SqlConnection(cs);
            // create query
            string query1 = "insert into signup values(@name,@gender,@email,@username,@password)";
            // create command to execute query
            SqlCommand cmd = new SqlCommand(query1, con);
            // add values to parameters
            cmd.Parameters.AddWithValue("@name", NameTextbox.Text);
            cmd.Parameters.AddWithValue("@gender", GenderDropDown.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@email", EmailTextbox.Text);
            cmd.Parameters.AddWithValue("@username", UsernameTextbox.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTextbox.Text);

            // open connection
            con.Open();

            // return rows
            int a = cmd.ExecuteNonQuery(); // query is fired here though.
            if (a > 0)
            {
                // here 2nd arg is only "script" and 3rd w/o <script> tag and 4th is bool ie. true for adding <script> tag itself
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Signup successfull.. w/username : " + UsernameTextbox.Text + "');",true);
                Response.Redirect("Login.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script> alert('Signup Failed !!') </script>");
            }

            // close connection
            con.Close();
        }
    }
}