using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace medrian_1
{
  
    public partial class ManageShop : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm, nm;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void filUpload()
        {
            fnm = "images/" + imgUpload.FileName;
            imgUpload.SaveAs(Server.MapPath(fnm));
        }

        void clear()
        {
            txtnm.Text = string.Empty;
            txtadd.Text = string.Empty;
            txteml.Text = string.Empty;
            txtonm.Text = string.Empty;

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Add_Products.aspx");
        }

        protected void add_comp_btn_Click(object sender, EventArgs e)
        {

            getCon();
            filUpload();
            cmd = new SqlCommand("insert into Add_Company_Tbl(Comp_Name, Comp_Owner_Name,Comp_Email,Comp_Address,Comp_Cover_Img) values('" + txtnm.Text + "','" + txtonm.Text + "','" + txteml.Text + "','" + txtadd.Text + "','" + fnm + "')", con);
            cmd.ExecuteNonQuery();
            clear();
            Response.Write("<script>alert('Company Added Successfully')</script>");
        }
    }
}