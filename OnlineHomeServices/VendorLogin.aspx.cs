using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class VendorLogin : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label1.Text = "Please Fill Your Professional Id and Password";
        }
        else
        {
            cmd = new SqlCommand("select vid,vname from Professional where vid=@vid and @vpass=@vpass", conn);
            cmd.Parameters.AddWithValue("@vid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@vpass", TextBox2.Text);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["vid"] = dr[0].ToString();
                Session["vname"] = dr[1].ToString();
                Response.Redirect("VenderHome.aspx");

            }
            else
            {
                Label1.Text = "Invalid user ID/Password";
            }
            conn.Close();
        }
    }
}