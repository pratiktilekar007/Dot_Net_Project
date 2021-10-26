using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection db = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\sonu ice cream\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        db.Open();
        string insert = "insert into registration(name,mobileno,email,address,username,password,cpassword) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+ TextBox5.Text+"','"+TextBox6.Text +"','"+TextBox7.Text+"')";
        SqlCommand Cmd = new SqlCommand(insert, db);
        int m = Cmd.ExecuteNonQuery();
        if (m != 0)
        {
            Response.Write("<script>alert('Registration confirm!!')</script>");
        }
        else
        {
            Response.Write("<script>alert('Registration not confirm!!')</script>");
        }
        db.Close();
    }
}