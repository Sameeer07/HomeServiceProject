<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="BookService.aspx.cs" Inherits="BookService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>ADD YOUR SERVICES REQUIREMENT</strong></td>
        </tr>
        
        <tr>
            <td>
                <br />
                <strong>USER ID</strong></td>
            <td>&nbsp;<strong><asp:Label ID="Label4" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <strong>NAME</strong></td>
            <td>
                <strong>
                <asp:Label ID="Label5" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <strong>MOBILE NUMBER</strong></td>
            <td>
                <strong>
                <asp:Label ID="Label6" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <strong>ADDRESS</strong></td>
            <td>
                <strong>
                <asp:Label ID="Label7" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <strong>SELECT CATEGORY</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <strong>SELECT SUB-CATEGORY</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="scname" DataValueField="scid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="SELECT * FROM [SubCategory] WHERE ([cid] = @cid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="cid" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Label ID="Label8" runat="server" ForeColor="Blue"></asp:Label>
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="Book" Width="207px" />
            </td>
        </tr>
    </table>
</asp:Content>

