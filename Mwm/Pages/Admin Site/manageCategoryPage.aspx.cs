using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mwm.Pages.Admin_Site
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            lbldtAdded.Text = DateTime.Now.ToString();
            lblStatus.Text = "1";
            SqlDataSource1.Insert();
            lblMessage.Text = "Category successfully added.";
        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            lblMessage.Text = "Category successfully updated.";
            clearData();
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            lblMessage.Text = "Category successfully deleted.";
            clearData();
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            lblCID.Text = GridView1.SelectedRow.Cells[1].Text;
            txtCategoryName.Text = GridView1.SelectedRow.Cells[2].Text;
            txtDescription.Text = GridView1.SelectedRow.Cells[3].Text;
        }

        private void clearData() {
            txtCategoryName.Text = "";
            txtDescription.Text = "";
        }
    }
}