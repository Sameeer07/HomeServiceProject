using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Category : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into Category(cid,cname) values(@cid,@cname) ",conn);
        cmd.Parameters.AddWithValue("@cid",TextBox1.Text);
        cmd.Parameters.AddWithValue("@cname", TextBox2.Text);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Label1.Text = "Category Sucessfully Added.";
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}