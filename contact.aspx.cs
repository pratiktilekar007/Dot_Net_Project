using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection db = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\sonu ice cream\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        db.Open();
        string insert = "insert into feedback(name,email,message) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        SqlCommand Cmd = new SqlCommand(insert, db);
        int m = Cmd.ExecuteNonQuery();
        if (m != 0)
        {
            Response.Write("<script>alert('Data Inserted!!')</script>");
        }
        else
        {
            Response.Write("<script>alert('Data Not ot Inserted!!')</script>");
        }
        db.Close();
    }
}