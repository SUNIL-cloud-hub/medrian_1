using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace medrian_1
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            if (Request.Cookies["userEmail"] != null)
            {
                HttpCookie cookie = new HttpCookie("userEmail");
                cookie.Expires = DateTime.Now.AddDays(-1);

                Response.Cookies.Add(cookie);
            }

            Response.Redirect("login.aspx");
        }
    }
}