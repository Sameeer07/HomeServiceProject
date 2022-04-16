<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

public class Handler : IHttpHandler {

    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;

    public void ProcessRequest (HttpContext context)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mydb"].ConnectionString);
        cmd = new SqlCommand("select uphoto from UsrTbl where uid = @uid", conn);
        string uid = context.Request.QueryString["uid"].ToString();
        cmd.Parameters.AddWithValue("@uid",uid);
        conn.Open();
        dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            context.Response.BinaryWrite((byte[])dr[0]);

        }
        conn.Close();
        //context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}