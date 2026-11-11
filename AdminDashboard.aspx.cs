using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace medrian_1
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetTotalUsers();
            }

        }
        private void GetTotalUsers()
        {
            string conString =
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

            using (SqlConnection con = new SqlConnection(conString)) 
            {
                string query = "SELECT COUNT(*) FROM users";

                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();

                int totalUsers = Convert.ToInt32(cmd.ExecuteScalar());

                lblTotalUsers.Text = totalUsers.ToString();
            }
        }
    }
}