using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into Contact(name,contact,email,roc) values(@name,@contact,@email,@roc)", conn);
        cmd.Parameters.AddWithValue("@name",TextBox1.Text);
        cmd.Parameters.AddWithValue("@contact", TextBox2.Text);
        cmd.Parameters.AddWithValue("@email", TextBox3.Text);
        cmd.Parameters.AddWithValue("@roc", TextBox4.Text);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Label1.Text = "Response Submitted...we'll contact you soon.";
    }
}