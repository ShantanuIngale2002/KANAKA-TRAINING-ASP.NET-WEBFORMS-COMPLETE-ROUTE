using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationState
{
    public partial class WebForm1 : System.Web.UI.Page
    {
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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}