using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

public partial class SubCategory : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into SubCategory(scid,scname,cid) values(@scid,@scname,@cid) ", conn);
        cmd.Parameters.AddWithValue("@cid", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@scid", TextBox1.Text);
        cmd.Parameters.AddWithValue("@scname", TextBox2.Text);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Label1.Text = " Sub=Category Sucessfully Added.";
        DropDownList1.SelectedIndex = 0;
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}