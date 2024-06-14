using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QueryString
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // likewise we can de indexing
            /*
                IdTextboxW2.Text = Request.QueryString[0];
                NameTextboxW2.Text = Request.QueryString[1];
                AgeTextboxW2.Text = Request.QueryString[2];
            */

            // but below is an good practice
            IdTextboxW2.Text = Request.QueryString["id"];
            NameTextboxW2.Text = Request.QueryString["name"];
            AgeTextboxW2.Text = Request.QueryString["age"];

        }
    }
}