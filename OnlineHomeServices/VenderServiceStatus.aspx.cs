using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class VenderServiceStatus : System.Web.UI.Page
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
        cmd = new SqlCommand("update Vservice set status=@status where svid=@svid ", conn);
        cmd.Parameters.AddWithValue("@svid",DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@status", false);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("VenderServiceStatus.aspx");
        
    }
}