using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["uid"] is null && Session["upass"] is null)
        {
            Response.Redirect("UserLogin.aspx");
        }
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if(e.Item.Text.Equals("User Home"))
        {
            Response.Redirect("UserHome.aspx");
        }

        if (e.Item.Text.Equals("Registration"))
        {
            Response.Redirect("UserRegistration.aspx");
        }

        if (e.Item.Text.Equals("Login"))
        {
            Response.Redirect("UserLogin.aspx");
        }

        if (e.Item.Text.Equals("View Profile"))
        {
            Response.Redirect("UserViewProfile.aspx");
        }

        if (e.Item.Text.Equals("Edit Profile"))
        {
            Response.Redirect("UserEditProfile.aspx");
        }

        if (e.Item.Text.Equals("Service Details"))
        {
            Response.Redirect("UserServiceDetails.aspx");
        }

        if (e.Item.Text.Equals("Service Status"))
        {
            Response.Redirect("UserServiceStatus.aspx");
        }

        if (e.Item.Text.Equals("Logout"))
        {
            Session.Abandon();
            Session.Remove("username");
            Session.Remove("password");    
            Response.Redirect("UserLogin.aspx");
        }
    }
}
