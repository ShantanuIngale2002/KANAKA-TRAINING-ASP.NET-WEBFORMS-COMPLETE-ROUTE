using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_withGridView_SQLDataSource
{
    public partial class W03_UPDATE : System.Web.UI.Page
    {
        string sc = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GetInfoButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sc);
            string query1 = "SELECT * FROM [student] WHERE [rollno]=@rollno";
            SqlCommand cmd = new SqlCommand(query1, con);

            con.Open();

            cmd.Parameters.AddWithValue("@rollno", GetInfoRollno.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    UpdateName.Text = dr["name"].ToString();
                    UpdateGender.SelectedValue = dr["gender"].ToString();
                    UpdateClass.Text = dr["class"].ToString();
                    UpdateDiv.SelectedValue = dr["div"].ToString();
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script> alert('No Data Found !!') </script>");
            }

            con.Close();
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sc);
            string query1 = "UPDATE [student] SET [name] = @name, [gender] = @gender, [class] = @class, [div] = @div WHERE [rollno] = @rollno";
            SqlCommand cmd = new SqlCommand(query1, con);

            cmd.Parameters.AddWithValue("@name", UpdateName.Text);
            cmd.Parameters.AddWithValue("@gender", UpdateGender.SelectedValue);
            cmd.Parameters.AddWithValue("@class", UpdateClass.Text);
            cmd.Parameters.AddWithValue("@div", UpdateDiv.SelectedValue);
            cmd.Parameters.AddWithValue("@rollno", GetInfoRollno.Text);

            con.Open();

            int a = cmd.ExecuteNonQuery();

            if (a > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script> alert('Data Updation Successfull !!') </script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script> alert('Data Updation Failed !!') </script>");
            }

            GetInfoRollno.Text = string.Empty;
            UpdateName.Text = string.Empty;
            UpdateGender.SelectedValue = "Male";
            UpdateClass.Text = string.Empty;
            UpdateDiv.SelectedValue = "A";

            con.Close();
        }


    }
}