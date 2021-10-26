using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] == null)
        {

            LbLogin.Visible = true;
            LbLogout.Visible = false;

        }

        else
        {
            LbLogin.Visible = false;

            LbLogout.Visible = true;


        }

    }
    protected void button(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
    protected void LbLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("customerlogin.aspx");
    }
    protected void LbLogout_Click(object sender, EventArgs e)
    {
        Session.Remove("ID");
        Response.Redirect("index.aspx");
    }

    }

