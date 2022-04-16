using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class UserRegistration : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Register User
        try
        {
            cmd = new SqlCommand("Insert into UsrTbl(uid,upass,uname,uemail,gender,umobile,uphoto,uadd)values(@uid,@upass,@uname,@uemail,@gender,@umobile,@uphoto,@uadd)", conn);
            cmd.Parameters.AddWithValue("@uid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@upass", TextBox2.Text);
            cmd.Parameters.AddWithValue("@uname", TextBox3.Text);
            cmd.Parameters.AddWithValue("@uemail", TextBox4.Text);


            if (RadioButton1.Checked == true)
            {
                cmd.Parameters.AddWithValue("@gender", RadioButton1.Text);
            }
            else
            {
                cmd.Parameters.AddWithValue("@gender", RadioButton2.Text);
            }
            cmd.Parameters.AddWithValue("@umobile", TextBox5.Text);

            byte[] imgdata = new byte[FileUpload1.PostedFile.ContentLength];
            FileUpload1.PostedFile.InputStream.Read(imgdata, 0, FileUpload1.PostedFile.ContentLength);
            cmd.Parameters.AddWithValue("@uphoto", imgdata);
            cmd.Parameters.AddWithValue("@uadd", TextBox6.Text);
            conn.Open();
            int k = cmd.ExecuteNonQuery();
            if (k > 0)
            {
                Label1.Text = "RGISTERATION SUCCESSFULL";
                Response.Redirect("Users.aspx");
                
            }
            else
            {
                Label1.Text = "RGISTERATION UNSUCCESSFULL";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}