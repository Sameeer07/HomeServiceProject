<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="UserEditProfile.aspx.cs" Inherits="UserEditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 87px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Edit Your Profile Here...!!!</strong></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style2" DataKeyNames="uid" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="754px">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" SortExpression="uid" />
                        <asp:BoundField DataField="upass" HeaderText="upass" SortExpression="upass" />
                        <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                        <asp:BoundField DataField="uemail" HeaderText="uemail" SortExpression="uemail" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="umobile" HeaderText="umobile" SortExpression="umobile" />
                        <asp:BoundField DataField="uadd" HeaderText="uadd" SortExpression="uadd" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mydb %>" DeleteCommand="DELETE FROM [UsrTbl] WHERE [uid] = @original_uid AND (([upass] = @original_upass) OR ([upass] IS NULL AND @original_upass IS NULL)) AND (([uname] = @original_uname) OR ([uname] IS NULL AND @original_uname IS NULL)) AND (([uemail] = @original_uemail) OR ([uemail] IS NULL AND @original_uemail IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([umobile] = @original_umobile) OR ([umobile] IS NULL AND @original_umobile IS NULL)) AND (([uadd] = @original_uadd) OR ([uadd] IS NULL AND @original_uadd IS NULL))" InsertCommand="INSERT INTO [UsrTbl] ([uid], [upass], [uname], [uemail], [gender], [umobile], [uadd]) VALUES (@uid, @upass, @uname, @uemail, @gender, @umobile, @uadd)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [uid], [upass], [uname], [uemail], [gender], [umobile], [uadd] FROM [UsrTbl] WHERE ([uid] = @uid)" UpdateCommand="UPDATE [UsrTbl] SET [upass] = @upass, [uname] = @uname, [uemail] = @uemail, [gender] = @gender, [umobile] = @umobile, [uadd] = @uadd WHERE [uid] = @original_uid AND (([upass] = @original_upass) OR ([upass] IS NULL AND @original_upass IS NULL)) AND (([uname] = @original_uname) OR ([uname] IS NULL AND @original_uname IS NULL)) AND (([uemail] = @original_uemail) OR ([uemail] IS NULL AND @original_uemail IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([umobile] = @original_umobile) OR ([umobile] IS NULL AND @original_umobile IS NULL)) AND (([uadd] = @original_uadd) OR ([uadd] IS NULL AND @original_uadd IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_uid" Type="Int32" />
                        <asp:Parameter Name="original_upass" Type="String" />
                        <asp:Parameter Name="original_uname" Type="String" />
                        <asp:Parameter Name="original_uemail" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_umobile" Type="String" />
                        <asp:Parameter Name="original_uadd" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="uid" Type="Int32" />
                        <asp:Parameter Name="upass" Type="String" />
                        <asp:Parameter Name="uname" Type="String" />
                        <asp:Parameter Name="uemail" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="umobile" Type="String" />
                        <asp:Parameter Name="uadd" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="uid" SessionField="uid" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="upass" Type="String" />
                        <asp:Parameter Name="uname" Type="String" />
                        <asp:Parameter Name="uemail" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="umobile" Type="String" />
                        <asp:Parameter Name="uadd" Type="String" />
                        <asp:Parameter Name="original_uid" Type="Int32" />
                        <asp:Parameter Name="original_upass" Type="String" />
                        <asp:Parameter Name="original_uname" Type="String" />
                        <asp:Parameter Name="original_uemail" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_umobile" Type="String" />
                        <asp:Parameter Name="original_uadd" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

