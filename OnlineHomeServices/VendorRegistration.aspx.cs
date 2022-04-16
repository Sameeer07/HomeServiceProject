using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class VendorRegistration : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //register vendor buttom
        cmd = new SqlCommand("insert into Professional(vid,vpass,vname,vemail,vgender,vmob,cid,scid,vadd)values(@vid,@vpass,@vname,@vemail,@vgender,@vmob,@cid,@scid,@vadd)",conn);
        cmd.Parameters.AddWithValue("@vid", TextBox1.Text);
        cmd.Parameters.AddWithValue("@vpass", TextBox2.Text);
        cmd.Parameters.AddWithValue("@vname", TextBox3.Text);
        cmd.Parameters.AddWithValue("@vemail", TextBox4.Text);

        if (RadioButton1.Checked == true)
        {
            cmd.Parameters.AddWithValue("@vgender", RadioButton1.Text);
        }
        else
        {
            cmd.Parameters.AddWithValue("@vgender", RadioButton2.Text);
        }
        cmd.Parameters.AddWithValue("@vmob", TextBox5.Text);
        cmd.Parameters.AddWithValue("@cid", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@scid", DropDownList2.SelectedValue);
        cmd.Parameters.AddWithValue("@vadd", TextBox6.Text);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Label1.Text = "Registeration Successfull";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
    }
}