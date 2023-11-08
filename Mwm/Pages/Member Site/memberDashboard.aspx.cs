using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mwm.Pages.Member_Site
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null) {
                lblUsername.Text = "Welcome back, " + Session["name"].ToString();
            } else
            {
                lblUsername.Text = "Welcome Guest";
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("../Visitor%20Site/loginPage.aspx");
        }
    }
}