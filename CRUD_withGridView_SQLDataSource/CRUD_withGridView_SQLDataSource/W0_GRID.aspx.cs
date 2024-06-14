using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_withGridView_SQLDataSource
{
    public partial class W0_GRID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            // assign values to sqldatasource parameters
            SqlDataSource1.InsertParameters["rollno"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("FooterRollTextbox")).Text;
            SqlDataSource1.InsertParameters["name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("FooterNameTextbox")).Text;
            SqlDataSource1.InsertParameters["gender"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("GenderDropDown1")).SelectedValue;
            SqlDataSource1.InsertParameters["class"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("FooterClassTextbox")).Text;
            SqlDataSource1.InsertParameters["div"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DivDropDown1")).SelectedValue;

            // execute query and get rows as result
            int a = SqlDataSource1.Insert();

            if (a>0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script> alert('Insertion Success!!') </script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script> alert('Insertion Failed!!') </script>");
            }

        }
    }
}