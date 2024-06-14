using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleLoginFormWithSQL
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Write("Welcome to my site Mr./Miss. " + Session["user"]);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session["user"] = null;
            }
            Response.Redirect("Login.aspx");

        }
    }
}