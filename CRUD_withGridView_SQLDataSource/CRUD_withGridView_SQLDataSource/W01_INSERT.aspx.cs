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
    public partial class W01_INSERT : System.Web.UI.Page
    {
        string sc = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sc);

            string query1 = "INSERT INTO [student] ([rollno], [name], [gender], [class], [div]) VALUES (@rollno, @name, @gender, @class, @div)";

            SqlCommand cmd = new SqlCommand(query1, con);


            cmd.Parameters.AddWithValue("@rollno", InsertRollno.Text);
            cmd.Parameters.AddWithValue("@name", InsertName.Text);
            cmd.Parameters.AddWithValue("@gender", InsertGender.SelectedValue);
            cmd.Parameters.AddWithValue("@class", InsertClass.Text);
            cmd.Parameters.AddWithValue("@div", InsertDiv.SelectedValue);

            con.Open();

            int a = cmd.ExecuteNonQuery();

            if (a > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script> alert('Insertion Success !!') </script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script> alert('Insertion Failed !!') </script>");
            }

            InsertRollno.Text = string.Empty;
            InsertName.Text = string.Empty;
            InsertGender.SelectedValue = "Male";
            InsertClass.Text = string.Empty;
            InsertDiv.SelectedValue = "A";

            con.Close();

        }
    }
}