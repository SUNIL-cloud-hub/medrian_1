using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//new namespace for DB
using System.Data.SqlClient;    
using System.Data;
using System.Configuration;

namespace medrian_1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con;  
        SqlDataAdapter da;  
        DataSet ds; 
        SqlCommand cmd; 

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();


        }
        void getcon()
        { 
            con = new SqlConnection(s);
            con.Open();
        }

        void clear()
        {
            txtName.Text = "";
            
            txtEmail.Text = "";
            
            
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
        }



        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (btnRegister.Text == "Create account")
            {
                getcon();

                cmd = new SqlCommand(
                    "INSERT INTO users(FullName,Email,Password,ConfirmPassword) " +
                    "VALUES('" + txtName.Text + "','" +
                    txtEmail.Text + "','" + txtPassword.Text +
                    "','" + txtConfirmPassword.Text + "')", con);

                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");

                clear();
                

            }

        }
    }
}