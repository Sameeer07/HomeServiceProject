using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

        if(e.Item.Text.Equals("Home"))
        {
            Response.Redirect("Home.aspx");
        }

        if (e.Item.Text.Equals("About Us"))
        {
            Response.Redirect("About.aspx");
        }

        if (e.Item.Text.Equals("Contact Us"))
        {
            Response.Redirect("Contact.aspx");
        }

        if (e.Item.Text.Equals("Services"))
        {
            Response.Redirect("Services.aspx");
        }

        if (e.Item.Text.Equals("Admin Login"))
        {
            Response.Redirect("Admin.aspx");
        }

        if (e.Item.Text.Equals("Users Login/Sign Up"))
        {
            Response.Redirect("Users.aspx");
        }

        if (e.Item.Text.Equals("Register As A Professionals"))
        {
            Response.Redirect("Professionals.aspx");
        }

    }
}
