using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace medrian_1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (email == "sunny1@gmail.com" && password == "sunny12345")
            {
                Session["uid"] = 1;
                Session["userEmail"] = email;
                Session["userName"] = "Sunny";

                
                if (chkRemember.Checked)
                {   
                    HttpCookie cookie = new HttpCookie("userEmail");
                    cookie.Value = email;
                    cookie.Expires = DateTime.Now.AddDays(30);

                    Response.Cookies.Add(cookie);
                }

                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Email or Password.";
            }
        }
    }
}