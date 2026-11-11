using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace medrian_1
{
    public partial class Add_To_Cart : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

        int uid;

        string s = ConfigurationManager
                    .ConnectionStrings["dbcon"]
                    .ConnectionString;

        void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void fillGrid()
        {
            getCon();

            uid = Convert.ToInt32(Session["uid"]);

            da = new SqlDataAdapter(
                "SELECT " +
                "Cart_Tbl.Cart_Id, " +
                "Add_Products_Tbl.Prod_Id, " +
                "Add_Products_Tbl.Prod_Img, " +
                "Add_Products_Tbl.Prod_Model, " +
                "Add_Products_Tbl.Prod_Price, " +
                "Cart_Tbl.Quentity " +
                "FROM Cart_Tbl " +
                "INNER JOIN Add_Products_Tbl " +
                "ON Cart_Tbl.Cart_Prod_Id = Add_Products_Tbl.Prod_Id " +
                "WHERE Cart_Tbl.Cart_User_Id = " + uid,
                con
            );

            ds = new DataSet();

            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            // Calculate Grand Total
            decimal total = 0;

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                decimal price = Convert.ToDecimal(row["Prod_Price"]);
                int quantity = Convert.ToInt32(row["Quentity"]);

                total = total + (price * quantity);
            }

            grand_total.Text = "Grand Total: ₹" + total.ToString("N2");

            con.Close();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                uid = Convert.ToInt32(Session["uid"]);

               

                fillGrid();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_remove")
            {
                int cartId = Convert.ToInt32(e.CommandArgument);

                getCon();

                cmd = new SqlCommand(
                    "DELETE FROM Cart_Tbl WHERE Cart_Id = " + cartId,
                    con
                );

                cmd.ExecuteNonQuery();

                con.Close();

                fillGrid();

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;

            fillGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            int productId =
                Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            DropDownList ddl =
                (DropDownList)GridView1.Rows[e.RowIndex]
                .FindControl("DropDownList1");

            int quantity =
                Convert.ToInt32(ddl.SelectedValue);

            uid = Convert.ToInt32(Session["uid"]);

            getCon();

            cmd = new SqlCommand(
                "UPDATE Cart_Tbl SET Quentity = " + quantity +
                " WHERE Cart_User_Id = " + uid +
                " AND Cart_Prod_Id = " + productId,
                con
            );

            cmd.ExecuteNonQuery();

            con.Close();

            GridView1.EditIndex = -1;

            fillGrid();
        }

        protected void RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;

            fillGrid();
        }
    }
}