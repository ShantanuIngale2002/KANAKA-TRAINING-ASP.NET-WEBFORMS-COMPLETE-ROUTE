using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionState
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // session state
            if (Session["user"] != null)
            {
                Response.Write("Welcom " + Session["user"].ToString());
                   
                // Application state
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
    }
}