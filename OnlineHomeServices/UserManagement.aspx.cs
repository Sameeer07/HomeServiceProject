using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserManagement : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into Vservice (svid,cid,vid) values(@svid,@cid,@vid)",conn);
        cmd.Parameters.AddWithValue("@svid",DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@cid", DropDownList2.SelectedValue);
        cmd.Parameters.AddWithValue("@vid", DropDownList3.SelectedValue);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    protected void SqlDataSource6_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = int.Parse(DropDownList1.SelectedValue.ToString());
        cmd = new SqlCommand("select * from UserServices where svid=@svid",conn);
        cmd.Parameters.AddWithValue("@svid",id);
        conn.Open();
        dr = cmd.ExecuteReader();
        if(dr.Read())
        DropDownList2.SelectedValue = dr["cid"].ToString();
        conn.Close();

        int cid = int.Parse(DropDownList2.SelectedValue.ToString());
        cmd = new SqlCommand("select * from Professional where cid=@cid", conn);
        cmd.Parameters.AddWithValue("@cid", cid);
        conn.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
            DropDownList3.SelectedValue = dr["vid"].ToString();
        conn.Close();

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}