using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QueryString
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButtonW1_Click(object sender, EventArgs e)
        {
            // Query String allows us to transport data from one to another webpage
            // Syntax: filename?data1:value1&data2:value2&...

            // Response.Redirect("WebForm2.aspx?id="+IdTextbox.Text + "&name="+NameTextbox.Text + "&age="+AgeTextbox.Text);

            // the url for this will look like "localhost:xxxx/WebForm2aspx?id=1&name=abcd&age=100


            /*  ISSUE
             * Now the issues here is when user enters "abcd&25 or abcd & 25" into name field "&" will treat 25 as other value 
             * and put that into age field into webform2.
             * So what we need to do is that we need url to treate "&" from input textbox as value not querystring "&"
             * we need Sever.UrlEncode(value) method to pass value
             */

            // Response.Redirect("WebForm2.aspx?id="+Server.UrlEncode(IdTextbox.Text) + "&name="+Server.UrlEncode(NameTextbox.Text) + "&age="+Server.UrlEncode(AgeTextbox.Text));

            // UrlEncoder replaces values like here "&" -> "%26"

            // Hence we can also do like :
            Response.Redirect("WebForm2.aspx?id="+IdTextbox.Text.Replace("&","%26") + "&name="+NameTextbox.Text.Replace("&", "%26") + "&age="+AgeTextbox.Text.Replace("&","%26"));


        }
    }
}