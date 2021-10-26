using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class buynow : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["addproduct"].ToString() == "true")
        {
            Session["addproduct"] = "false";
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("designid");
            dt.Columns.Add("productname");
            dt.Columns.Add("productimg");
            dt.Columns.Add("description");
            dt.Columns.Add("price");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=jewelleryshop;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from productdetails where designid=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["designid"] = ds.Tables[0].Rows[0]["designid"].ToString();
                    dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                    dr["productimg"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                    dr["description"] = ds.Tables[0].Rows[0]["shortdescription"].ToString();
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = "Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=jewelleryshop;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from productdetails where designid=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["designid"] = ds.Tables[0].Rows[0]["designid"].ToString();
                    dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                    dr["productimg"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                    dr["description"] = ds.Tables[0].Rows[0]["shortdescription"].ToString();
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;

                }
            }


        }
        else
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

    }

}  
