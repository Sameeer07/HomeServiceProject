using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin : System.Web.UI.Page
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
        cmd = new SqlCommand("select * from SASSAdmin where id=@id and pass =@pass",conn);
        cmd.Parameters.AddWithValue("@id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
        conn.Open();
        dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            Session["id"] = dr[0].ToString();
            Session["pass"] = dr[1].ToString();
            Response.Redirect("ServiceManagement.aspx");
        }
    }
}