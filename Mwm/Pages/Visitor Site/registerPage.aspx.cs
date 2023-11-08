using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Mwm.Pages.Visitor_Site
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ignupBtn_Click(object sender, EventArgs e)
        {
            string username = txtFullName.Text;
            string password = txtPassword.Text;
            string email = txtEmail.Text;
            DateTime dtAdded = DateTime.Now;
            int status = 1;

            //// Save the registration data to the database
            string connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO tblCustomers (name, email, password, dtAdded, status) VALUES (@name, @email, @password, @dtAdded, @status)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@name", username);
                    command.Parameters.AddWithValue("@email", email);
                    command.Parameters.AddWithValue("@password", password);     
                    command.Parameters.AddWithValue("@dtAdded", dtAdded);
                    command.Parameters.AddWithValue("@status", status);

                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }
             
            }


            Response.Redirect("loginPage.aspx");
        }

        protected void SignupBtn_Click(object sender, EventArgs e)
        {
            lblDTAdded.Text = DateTime.Now.ToString();
            lblStauts.Text = "1";
            SqlDSCustomerReg.Insert();
            Response.Write("Account successfully created!");
        }

        protected void SqlDataCustomer_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}