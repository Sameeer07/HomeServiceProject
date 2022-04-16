using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class userbookings : System.Web.UI.Page
{

    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
        if (Session["uid"] != null && Session["uname"] != null)
        {

            Label1.Text = Session["uid"].ToString();
            Label2.Text = Session["uname"].ToString();
            Label3.Text = Session["umobile"].ToString();
            Label4.Text = Session["uadd"].ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Save user services
        cmd = new SqlCommand("insert into UserServices(uid,uname,umobile,uadd,cid,scid)values(@uid,@uname,@umobile,@uadd,@cid,@scid)", conn);
        cmd.Parameters.AddWithValue("@uid", Label1.Text);
        cmd.Parameters.AddWithValue("@uname", Label2.Text);
        cmd.Parameters.AddWithValue("@umobile", Label3.Text);
        cmd.Parameters.AddWithValue("@uadd", Label4.Text);
        cmd.Parameters.AddWithValue("@cid", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@scid", DropDownList2.SelectedValue);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Label5.Text = "Request Submitted Successfully...!!!!";

    }
}