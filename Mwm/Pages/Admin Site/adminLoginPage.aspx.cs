using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Mwm.Pages.Admin_Site
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // step 2 - create connection to database
            string connStr = ConfigurationManager.ConnectionStrings["myDatabase"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            // step 3 - create CRUD
            string query = "SELECT * FROM tblAdmin WHERE username=@username AND password=@password";
            SqlCommand command = new SqlCommand(query, conn);

            command.Parameters.AddWithValue("@username", username);
            command.Parameters.AddWithValue("@password", password);

            // step 4 - execute the command
            SqlDataReader reader = command.ExecuteReader();

            // step 5 - manipulate your reader
            if (reader.Read())
            {
                //Response.Write("Record exists!");

                Session["aid"] = reader["aid"].ToString();
                //Session["email"] = reader["email"].ToString();
                Session["username"] = reader["username"].ToString();

                Response.Redirect("adminDashboard.aspx");
            }
            else
            {
                Response.Write("Invalid credentials");
            }

            // step 6 - close all connections
            reader.Close();
            conn.Close();
        }
    }
}