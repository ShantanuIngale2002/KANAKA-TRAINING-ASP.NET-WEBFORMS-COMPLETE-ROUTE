using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionState
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Session state
            if (Session["user"] != null)
            {
                Response.Write("Welcome on Page 3 " + Session["user"].ToString());

                //Applicatoin state
                if (Application["greet"] != null)
                {
                    Response.Write(Application["greet"].ToString());
                }
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }
        }

        protected void logOutButtonW3_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session["user"] = null;
                Response.Redirect("WebForm1.aspx");
            }

        }
    }
}