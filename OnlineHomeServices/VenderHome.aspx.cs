using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class VenderHome : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
        if (Session["vid"] != null && Session["vname"] != null)
        {

            Label1.Text = Session["vname"].ToString();
            
        }
        else
        {
            Response.Redirect("VendorLogin.aspx");
        }
    }
}