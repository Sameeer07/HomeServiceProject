using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class UserServiceStatus : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
        SqlDataAdapter da = new SqlDataAdapter("select s.status,s.svid from Vservice s,UserServices u where s.svid=u.svid and u.uid=@uid", conn);
        da.SelectCommand.Parameters.AddWithValue("@uid", Session["uid"]);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}