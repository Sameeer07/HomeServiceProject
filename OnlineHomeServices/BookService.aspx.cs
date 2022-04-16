using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class BookService : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
        if (Session["uid"] != null && Session["uname"] != null)
        {

            Label4.Text = Session["uid"].ToString();
            Label5.Text = Session["uname"].ToString();
            Label6.Text = Session["umobile"].ToString();
            Label7.Text = Session["uadd"].ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Save user services
        cmd = new SqlCommand("insert into UserServices(uid,uname,umobile,uadd,cid,scid)values(@uid,@uname,@umobile,@uadd,@cid,@scid)", conn);
        cmd.Parameters.AddWithValue("@uid", Label4.Text);
        cmd.Parameters.AddWithValue("@uname", Label5.Text);
        cmd.Parameters.AddWithValue("@umobile", Label6.Text);
        cmd.Parameters.AddWithValue("@uadd", Label7.Text);
        cmd.Parameters.AddWithValue("@cid", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@scid", DropDownList2.SelectedValue);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Label8.Text="Request Submitted Successfully...!!!!";

    }
}