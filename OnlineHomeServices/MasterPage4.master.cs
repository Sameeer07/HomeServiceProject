using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage4 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["vid"] is null && Session["vpass"] is null)
        {
            Response.Redirect("VendorLogin.aspx");
        }
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if(e.Item.Text.Equals("Professional Home"))
        {
            Response.Redirect("VenderHome.aspx");
        }

        if (e.Item.Text.Equals("View_Profile"))
        {
            Response.Redirect("VenderView.aspx");
        }

        if (e.Item.Text.Equals("Edit Profile"))
        {
            Response.Redirect("VenderEditProfile.aspx");
        }

        if (e.Item.Text.Equals("View Service"))
        {
            Response.Redirect("VenderViewService.aspx");
        }

        if (e.Item.Text.Equals("View Service Status"))
        {
            Response.Redirect("VenderServiceStatus.aspx");
        }

        if (e.Item.Text.Equals("Logout"))
        {
            Session.Abandon();
            Session.Remove("vid");
            Session.Remove("vpass");
            Response.Redirect("VendorLogin.aspx");
        }
    }
}
