<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="UserManagement.aspx.cs" Inherits="UserManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 531px;
        }
        .auto-style3 {
            width: 531px;
            height: 12px;
        }
        .auto-style4 {
            height: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USER DETAILS</strong></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="uid" DataSourceID="SqlDataSource1" Height="123px" HorizontalAlign="Center" Width="679px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" SortExpression="uid" />
                        <asp:BoundField DataField="upass" HeaderText="upass" SortExpression="upass" />
                        <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                        <asp:BoundField DataField="uemail" HeaderText="uemail" SortExpression="uemail" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="umobile" HeaderText="umobile" SortExpression="umobile" />
                        <asp:BoundField DataField="uadd" HeaderText="uadd" SortExpression="uadd" />
                        <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="uphoto" SortExpression="uphoto">
                            <EditItemTemplate>
                                <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="uphoto" Mode="Edit" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl='<%# "Handler.ashx?uid="+Eval("uid") %>' Width="50px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mydb %>" DeleteCommand="DELETE FROM [UsrTbl] WHERE [uid] = @original_uid AND (([upass] = @original_upass) OR ([upass] IS NULL AND @original_upass IS NULL)) AND (([uname] = @original_uname) OR ([uname] IS NULL AND @original_uname IS NULL)) AND (([uemail] = @original_uemail) OR ([uemail] IS NULL AND @original_uemail IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([umobile] = @original_umobile) OR ([umobile] IS NULL AND @original_umobile IS NULL)) AND (([uphoto] = @original_uphoto) OR ([uphoto] IS NULL AND @original_uphoto IS NULL)) AND (([uadd] = @original_uadd) OR ([uadd] IS NULL AND @original_uadd IS NULL))" InsertCommand="INSERT INTO [UsrTbl] ([uid], [upass], [uname], [uemail], [gender], [umobile], [uphoto], [uadd]) VALUES (@uid, @upass, @uname, @uemail, @gender, @umobile, @uphoto, @uadd)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UsrTbl]" UpdateCommand="UPDATE [UsrTbl] SET [upass] = @upass, [uname] = @uname, [uemail] = @uemail, [gender] = @gender, [umobile] = @umobile, [uphoto] = @uphoto, [uadd] = @uadd WHERE [uid] = @original_uid AND (([upass] = @original_upass) OR ([upass] IS NULL AND @original_upass IS NULL)) AND (([uname] = @original_uname) OR ([uname] IS NULL AND @original_uname IS NULL)) AND (([uemail] = @original_uemail) OR ([uemail] IS NULL AND @original_uemail IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([umobile] = @original_umobile) OR ([umobile] IS NULL AND @original_umobile IS NULL)) AND (([uphoto] = @original_uphoto) OR ([uphoto] IS NULL AND @original_uphoto IS NULL)) AND (([uadd] = @original_uadd) OR ([uadd] IS NULL AND @original_uadd IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_uid" Type="Int32" />
                        <asp:Parameter Name="original_upass" Type="String" />
                        <asp:Parameter Name="original_uname" Type="String" />
                        <asp:Parameter Name="original_uemail" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_umobile" Type="String" />
                        <asp:Parameter Name="original_uphoto" Type="Object" />
                        <asp:Parameter Name="original_uadd" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="uid" Type="Int32" />
                        <asp:Parameter Name="upass" Type="String" />
                        <asp:Parameter Name="uname" Type="String" />
                        <asp:Parameter Name="uemail" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="umobile" Type="String" />
                        <asp:Parameter Name="uphoto" Type="Object" />
                        <asp:Parameter Name="uadd" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="upass" Type="String" />
                        <asp:Parameter Name="uname" Type="String" />
                        <asp:Parameter Name="uemail" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="umobile" Type="String" />
                        <asp:Parameter Name="uphoto" Type="Object" />
                        <asp:Parameter Name="uadd" Type="String" />
                        <asp:Parameter Name="original_uid" Type="Int32" />
                        <asp:Parameter Name="original_upass" Type="String" />
                        <asp:Parameter Name="original_uname" Type="String" />
                        <asp:Parameter Name="original_uemail" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_umobile" Type="String" />
                        <asp:Parameter Name="original_uphoto" Type="Object" />
                        <asp:Parameter Name="original_uadd" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USER SERVICE DETAILS</strong></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="svid" DataSourceID="SqlDataSource2" Height="324px" HorizontalAlign="Center" Width="684px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="svid" HeaderText="svid" InsertVisible="False" ReadOnly="True" SortExpression="svid" />
                        <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                        <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                        <asp:BoundField DataField="umobile" HeaderText="umobile" SortExpression="umobile" />
                        <asp:BoundField DataField="uadd" HeaderText="uadd" SortExpression="uadd" />
                        <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                        <asp:BoundField DataField="scname" HeaderText="scname" SortExpression="scname" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="SELECT UserServices.svid, UserServices.uid, UserServices.uname, UserServices.umobile, UserServices.uadd, Category.cname, SubCategory.scname FROM Category INNER JOIN SubCategory ON Category.cid = SubCategory.cid INNER JOIN UserServices ON Category.cid = UserServices.cid AND SubCategory.scid = UserServices.scid"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <br />
                SERVICE ID </td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="svid" DataValueField="svid" Height="17px" Width="129px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="SELECT [svid] FROM [UserServices]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <br />
                CATEGORY ID</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="cid" DataValueField="cid" Height="19px" Width="129px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="SELECT [cid] FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <br />
                VENDOR ID</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource5" DataTextField="vname" DataValueField="vid" Height="17px" Width="129px" >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:mydb %>" SelectCommand="SELECT [vid], [vname] FROM [Professional]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" Height="28px" Width="223px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

