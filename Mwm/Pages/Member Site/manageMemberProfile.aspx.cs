using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Mwm.Pages.Member_Site
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadProfile();
            }
        }

        private void loadProfile()
        {
            // Check if the Session["uid"] is not null
            if (Session["uid"] != null)
            {
                // Convert the Session["uid"] to a string and set it as the Text property of lblId
                lblId.Text = Session["uid"].ToString();
            }

            string connstr = ConfigurationManager.ConnectionStrings["myDatabase"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();
            string query = "SELECT * FROM tblCustomers WHERE uid=@uid";
            SqlCommand comm = new SqlCommand(query, conn);
            comm.Parameters.AddWithValue("@uid", Session["uid"].ToString());
            SqlDataReader reader = comm.ExecuteReader();
            if (reader.Read())
            {
                //pass the value to the textbox
                txtFullName.Text = reader["name"].ToString();
                txtEmail.Text = reader["email"].ToString();
                //txtpass.Text = reader["Password"].ToString();
            }
            reader.Close();
            conn.Close();
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            string username = txtFullName.Text.Trim();

            //// Save the registration data to the database
            string connectionString = ConfigurationManager.ConnectionStrings["myDatabase"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE tblCustomers SET name=@name WHERE uid=@uid";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@name", username);
                    command.Parameters.AddWithValue("@uid", Session["uid"].ToString());

                    connection.Open();
                    
                    int result = command.ExecuteNonQuery(); // 1 successful - 0 error

                    if (result > 0) {
                        Response.Write("Updated Successfully!");
                    } else
                    {
                        Response.Write("Something went wrong, Please try again!");
                    }

                    connection.Close();
                }

            }


            //Response.Redirect("loginPage.aspx");
        }

        protected void BackBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("memberDashboard.aspx");
        }
    }
}