using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace medrian_1
{
    public partial class Show_Company : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager
                    .ConnectionStrings["dbcon"]
                    .ConnectionString;
        void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillDataList()
        {
            getCon();

            da = new SqlDataAdapter(
                "SELECT * FROM Add_Company_Tbl",
                con
            );

            ds = new DataSet();

            da.Fill(ds);

            DataList1.DataSource = ds;
            DataList1.DataBind();

            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillDataList();
            }

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_cid")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                ViewState["cid"] = id;

                Response.Redirect(
                    "Show_Products.aspx?cid=" + ViewState["cid"]
                );
            }

        }
    }
}