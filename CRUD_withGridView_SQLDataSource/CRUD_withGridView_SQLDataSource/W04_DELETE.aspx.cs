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
    public partial class W04_DELETE : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(cs);
            string query1 = "DELETE FROM [student] WHERE[rollno] = @rollno";
            SqlCommand cmd = new SqlCommand(query1, conn);
            cmd.Parameters.AddWithValue("@rollno", getRollnoTextbox.Text);

            conn.Open();

            int a = cmd.ExecuteNonQuery();

            if (a > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script> alert('Deletion Success !!') </script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script> alert('Deletion Failed !!') </script>");
            }

            getRollnoTextbox.Text = string.Empty;

            conn.Close();
        }
    }
}