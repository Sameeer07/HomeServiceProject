using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class VenderViewService : System.Web.UI.Page
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
        cmd = new SqlCommand("select uname,umobile,uadd from UserServices where svid=@svid", conn);
        cmd.Parameters.AddWithValue("@svid",DropDownList1.SelectedValue);
        conn.Open();
        dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            Label1.Text = dr["uname"].ToString();
            Label2.Text = dr["umobile"].ToString();
            Label3.Text = dr["uadd"].ToString();
        }
        conn.Close();
        
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedIndex = 0;
        Label1.Text = "";
        Label2.Text = "";
        Label3.Text = "";
    }
}