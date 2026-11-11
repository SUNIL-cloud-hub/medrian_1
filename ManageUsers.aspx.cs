using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//new namespace
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace medrian_1
{
    public partial class ManageUsers : System.Web.UI.Page
    {

        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        string fnm;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillGrid();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void fillGrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from users", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        void fillData()
        {
            getcon();
            da = new SqlDataAdapter("select * from users Where Id= '" + ViewState["id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            txtFullName.Text = ds.Tables[0].Rows[0][1].ToString();
            txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            txtPassword.Text = ds.Tables[0].Rows[0]["Password"].ToString();
            txtConfirmPassword.Text = ds.Tables[0].Rows[0]["ConfirmPassword"].ToString();


        }
        void clear()
        {
            txtFullName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_Row(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "cmd_edt")


            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                Button1.Text = "Update";
                fillData();
            }
            else
            {
                getcon();
                cmd = new SqlCommand("delete from users Where Id='" + e.CommandArgument + "'", con);
                cmd.ExecuteNonQuery();
                fillGrid();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Button1.Text == "Save")
            {
                getcon();
                cmd = new SqlCommand("insert into users(FullName,Email,Password,ConfirmPassword)values('" + txtFullName.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "','" + txtConfirmPassword.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                fillGrid();
            }
            else
            {
                //update
                getcon();
                cmd = new SqlCommand("update users set Fullname='" + txtFullName.Text + "',Email='" + txtEmail.Text + "',[Password]='" + txtPassword.Text + "',ConfirmPassword='" + txtConfirmPassword.Text + "' Where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                clear();
                fillGrid();
                Button1.Text = "Save";
            }

        }
    }
}