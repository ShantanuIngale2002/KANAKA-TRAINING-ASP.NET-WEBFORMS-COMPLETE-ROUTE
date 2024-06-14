using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IsPostBack
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void AddListBoxItems()
        {
            ListBox1.Items.Add("Item 1");
            ListBox1.Items.Add("Item 2");
            ListBox1.Items.Add("Item 3");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            // IsPostBack is not true for first or initial page loading.
            // IsPostBack can be true only after a page is loaded 2nd time or more.
            // also refresh and being loaded is different ie. loading happens only on special events such button click.
            
            /*if (IsPostBack) {
                Response.Write("This is post back request !!");
            }
            else {
                Response.Write("Page is freshly loaded now !!");
            }*/

            if (IsPostBack)
            {
                // items will be added later not for initial loading.
                AddListBoxItems();
            }

        }
    }
}