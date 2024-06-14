using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionState
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*
             ViewState works on Page / WebForm level
                 - data shared between webform only

             SessionState works on Session / User level
                 - for each user session is different ie. if we paste sessionState file ie. prev learn file 
                   webform2's link into another browser it will redirect to webform1 due to no session found 
                   bcz as browswer change, user changes.

             ApplicationState works on Application Level
                 - works same as session just for all users it will be same
                   ie. for all browsers Application["user"]=val will be same for all
        */

        protected void SubmitButtonW1_Click(object sender, EventArgs e)
        {
            // 1st way to create session
            // Session.Add("user", userTextBoxW1.Text);

            // 2nd way to create session
            Session["user"] = userTextBoxW1.Text;

            // Application creation
            Application["greet"] = "Welcome Student";

            // To redirect to another page use this.
            Response.Redirect("WebForm2.aspx");


            // In Web.config we have added this for session
            /* <sessionState timeout="1"></sessionState> */
            // It is session expire method for timeout = 1 minute
            // it says for 1 minute session will have date and after 1 minute ie. timeout we can redirect to login page ie. webform 1 here
        }
    }
}