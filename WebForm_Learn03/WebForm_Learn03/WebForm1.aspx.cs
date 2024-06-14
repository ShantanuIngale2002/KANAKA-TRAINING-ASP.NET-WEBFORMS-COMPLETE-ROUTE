using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm_Learn03
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        // well this will not work like this
        /* private string name, password; */

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // submit button

            // this will not work like this since after loading a page script file executed again removing all data values
            // Hence we need View State
            /*
            this.name = NameTextBox.Text;
            this.password = PasswordTextBox.Text;
            */

            ViewState["name"] = NameTextBox.Text;
            ViewState["password"] = PasswordTextBox.Text;

            NameTextBox.Text = string.Empty;
            PasswordTextBox.Text = string.Empty;
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            // reset button

            // this will not work like this since after loading a page script file executed again removing all data values
            // Hence we need View State
            /*
            NameTextBox.Text = this.name;
            PasswordTextBox.Text = this.password;
            */

            if(ViewState["name"] != null)
            {
                NameTextBox.Text = ViewState["name"].ToString();
            }

            if (ViewState["password"] != null) 
            {
                PasswordTextBox.Text = ViewState["password"].ToString();
            }

            // ALSO IF YOU HAVE APPLIED VALIDATIONS THEN RESET MAY NOT WORK SINCE ITS AN BUTTON
            // set Reset button's property >> causesValidation : False
            // This prevents reset button to trigger any validations
        }

    }
}