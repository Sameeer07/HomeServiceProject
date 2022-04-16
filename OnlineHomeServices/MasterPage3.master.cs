using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage3 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["id"] is null && Session["pass"] is null)
        {
            Response.Redirect("admin.aspx");
        }
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if(e.Item.Text.Equals("Service Management"))
        {
            Response.Redirect("ServiceManagement.aspx");
        }

        if (e.Item.Text.Equals("User Management"))
        {
            Response.Redirect("UserManagement.aspx");
        }

        if (e.Item.Text.Equals("Vender Management"))
        {
            Response.Redirect("VenderManagement.aspx");
        }

        if (e.Item.Text.Equals("Query Management"))
        {
            Response.Redirect("QueryManagement.aspx");
        }

        if (e.Item.Text.Equals("Logout"))
        {

            Session.Abandon();
            Session.Remove("id");
            Session.Remove("pass");
            Response.Redirect("Admin.aspx");
        }
    }
}
