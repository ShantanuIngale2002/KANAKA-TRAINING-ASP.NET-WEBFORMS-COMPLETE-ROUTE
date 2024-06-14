using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_1st
{
    public partial class ValidationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scritps", "<script> alert('Your form has been submitted') </script>");
            // Here this line make use of js scripts, which in this case is alert.
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            // this is custom validation for Gender
            if(MaleRadioButton.Checked || FemaleRadioButton.Checked){
                // args have this flag that validates/invalidates the validator
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            // custom validator for even number field
            if(int.Parse(args.Value) % 2 == 0) { 
                args.IsValid = true; 
            } else {
                args.IsValid = false;
            }
        }
    }
}