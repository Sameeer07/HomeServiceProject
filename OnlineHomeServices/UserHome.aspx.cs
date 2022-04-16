using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class UserProfile : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn= new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
        if (Session["uid"] != null && Session["uname"] != null)
        {
            
            Label1.Text = Session["uname"].ToString();
            Image4.ImageUrl = "Handler.ashx?uid=" + Session["uid"].ToString();
        }
        else
        {
            Response.Redirect("UserLogin.aspx");
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("userbookings.aspx");
    }
}