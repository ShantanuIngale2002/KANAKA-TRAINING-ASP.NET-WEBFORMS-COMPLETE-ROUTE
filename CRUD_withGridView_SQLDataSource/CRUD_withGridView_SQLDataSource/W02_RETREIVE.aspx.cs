using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_withGridView_SQLDataSource
{
    public partial class W02_RETREIVE : System.Web.UI.Page
    {
        string sc = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RetreiveButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sc);

            string query1 = "SELECT * FROM [student] WHERE [rollno] = @rollno";
            SqlCommand cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("@rollno", getRollnoTextbox.Text);

            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script> alert('Data Retreiving Success !!') </script>");

                    RetreiveRollno.Text = getRollnoTextbox.Text;
                    RetreiveName.Text = dr["name"].ToString();
                    RetreiveGender.Text = dr["gender"].ToString();
                    RetreiveClass.Text = dr["class"].ToString();
                    RetreiveDiv.Text = dr["div"].ToString();
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script> alert('Data Retreiving Failed !!') </script>");
            }

            getRollnoTextbox.Text = string.Empty;

            dr.Close();
            con.Close();

        }
    }
}