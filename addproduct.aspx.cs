using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class addproduct : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        DropDownList1.Items.Add("FAMILY PACK");
        DropDownList1.Items.Add("Cups");
        DropDownList1.Items.Add("Cones");
        DropDownList1.Items.Add("Candy");
        DropDownList1.Items.Add("Cooldrinks");
        displaydata();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/images/+filename"));
            String f1 = "~/images/" + filename;
            cn.Open();
            cmd = new SqlCommand("insert into product (pname,category,price,photo,qty,description)values(@N,@C,@P,@Q,@I,@D)", cn);

            cmd.Parameters.AddWithValue("@N", TextBox1.Text);
            cmd.Parameters.AddWithValue("@C", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@P", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Q", f1.ToString());
            cmd.Parameters.AddWithValue("@I", TextBox3.Text);
            cmd.Parameters.AddWithValue("@D", TextBox4.Text);

            cmd.ExecuteNonQuery();
            cn.Close();
            Label1.Text = "record save successfully";
            displaydata();
        }
    }
    void displaydata()
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        cn.Open();
        cmd = new SqlCommand("select * from product", cn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        cn.Close();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Photo/+filename"));
            String f1 = "~/Photo/" + filename;
            cn.Open();
            String name1;
            name1 = TextBox1.Text;
            cmd = new SqlCommand("update product set pname=@N,category=@C,price=@P,photo=@Q,qty=@I,description=@D where pname=@n1", cn);
            cmd.Parameters.AddWithValue("@N", TextBox1.Text);
            cmd.Parameters.AddWithValue("@C", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@P", Convert.ToInt32(TextBox2.Text));
            cmd.Parameters.AddWithValue("@Q", f1.ToString());
            cmd.Parameters.AddWithValue("@I", Convert.ToInt32(TextBox3.Text));
            cmd.Parameters.AddWithValue("@D", TextBox4.Text);
            cmd.Parameters.AddWithValue("@n1", name1);


            cmd.ExecuteNonQuery();
            cn.Close();
            Label1.Text = "record updated successfully";
            displaydata();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[3].Text;
        DropDownList1.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[5].Text;
        //FileUpload1.FileName= GridView1.SelectedRow.Cells[6].Text;
        //TextBox5.Text = GridView1.SelectedRow.Cells[7].Text;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();

        cmd = new SqlCommand("delete from product where pname=@n", cn);
        cmd.Parameters.AddWithValue("@n", TextBox1.Text);

        cmd.ExecuteNonQuery();
        Label1.Text = "Record Delete successfully";
        cn.Close();
        displaydata();
    }
}