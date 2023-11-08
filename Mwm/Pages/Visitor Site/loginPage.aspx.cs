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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string email = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // step 2 - create connection to database
            string connStr = ConfigurationManager.ConnectionStrings["myDatabase"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            // step 3 - create CRUD
            string query = "SELECT * FROM tblCustomers WHERE email=@email AND password=@password";
            SqlCommand command = new SqlCommand(query, conn);

            command.Parameters.AddWithValue("@email", email);
            command.Parameters.AddWithValue("@password", password);

            // step 4 - execute the command
            SqlDataReader reader = command.ExecuteReader();
            
            // step 5 - manipulate your reader
            if (reader.Read())
            {
                //Response.Write("Record exists!");

                Session["uid"] = reader["uid"].ToString();
                Session["email"] = reader["email"].ToString();
                Session["name"] = reader["name"].ToString();

                Response.Redirect("../Member%20Site/memberDashboard.aspx");
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