using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class UserLogin : System.Web.UI.Page
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
        //Login Button
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label1.Text = "Please Fill User Id and Password";
        }
        else
        {
            cmd = new SqlCommand("select uid,uname,umobile,uadd from UsrTbl where uid=@uid and @upass=@upass", conn);
            cmd.Parameters.AddWithValue("@uid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@upass", TextBox2.Text);
            conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["uid"] = dr[0].ToString();
                Session["uname"] = dr[1].ToString();
                Session["umobile"] = dr[2].ToString();
                Session["uadd"] = dr[3].ToString();
                
                Response.Redirect("UserHome.aspx");

            }
            else
            {
                Label1.Text = "Invalid user ID/Password";
            }
            conn.Close();
        }
    }
}