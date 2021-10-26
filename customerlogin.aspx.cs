using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; 
using System.Data.SqlClient;

public partial class customerlogin : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\sonu ice cream\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd, cmd1;
    String str2 = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string sql1 = " select * from [registration] where username = @username and password = @password";
        cmd = new SqlCommand(sql1, con);
        cmd.Parameters.AddWithValue("username", TextBox1.Text);
        cmd.Parameters.AddWithValue("password", TextBox2.Text);
        con.Open();
       
        SqlDataReader dr = cmd.ExecuteReader();
        
        if (dr.Read())
        {
           //on.Open();
            con.Close();
            con.Open();
            
            str2 = "insert into [userlogin] ([username],[ldate])";
            str2 = str2 + "VALUES";
            str2 = str2 + "( '" + TextBox1.Text + "','" + DateTime.Now + "') ";
            cmd1= new SqlCommand(str2, con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Session["ID"] = TextBox1.Text;
            Response.Redirect("product.aspx");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Messagebox", "alert('Log in Successfully');", true);

        }
             
        else
        {
            Label1.Text = "Please Enter Valid Username and Paswword";
        }
    }
}