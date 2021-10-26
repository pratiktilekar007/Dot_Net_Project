using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class adminlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\sonu ice cream\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql1 = " select * from adminsignup where aname = @aname and password = @password";
        cmd = new SqlCommand(sql1, con);
        cmd.Parameters.AddWithValue("aname", TextBox1.Text);
        cmd.Parameters.AddWithValue("password", TextBox2.Text);

        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            con.Close();
            Session["ID"] = TextBox2.Text;
            Response.Redirect("addproduct.aspx");
        }
        else
        {
            Label1.Text = "Please Enter Valid Username and Paswword";
        }

    }
}