using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// newly added below
using System.Configuration;
using System.Data.SqlClient;

namespace SimpleLoginFormWithSQL
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        // save connection string from dbcs2 string in Web.config file.
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            // connect to dbcs2
            SqlConnection con = new SqlConnection(cs);
            //write a read query with custom parameters @user and @pass for which values can be provided later.

            // below query is for only login table from db
            //string query1 = "select * from login where username = @user and password = @pass";

            // but since we want data from signup table we need it like this
            string query1 = "select * from signup where username = @user and password = @pass";


            // generate sql cmd using query and connection
            SqlCommand cmd = new SqlCommand(query1, con);
            // add values to cmd parameters into query from inputs
            cmd.Parameters.AddWithValue("@user", userNameInput.Text);
            cmd.Parameters.AddWithValue("@pass", passwordInput.Text);

            // Now open connection to db
            con.Open();
            
            // fetch rows/data from db using this reader method cmd.ExecuteReader();
            SqlDataReader dr = cmd.ExecuteReader(); // query is fired here though.

            // rows will be fetched for username = @user ~= usernameInput and same for password, THEN check if their exist any result
            // If yes, alert success or else failure.
            if (dr.HasRows)
            {
                // create session of username which we can use into other page into this application.
                Session["user"] = userNameInput.Text; // getting username from input not db bcz this will be executed if and only if user exist in db.

                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts","<script> alert('Login Successful !!') </script>"); // success login alert

                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('Login Failed !!'); </script>"); // failure alert
            }

            // It is imp / good practice to close opened db connection always.
            con.Close();
        }
    }
}