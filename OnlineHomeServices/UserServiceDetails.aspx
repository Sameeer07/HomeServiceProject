<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="UserServiceDetails.aspx.cs" Inherits="UserServiceDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Service Details</strong> </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="svid" DataSourceID="SqlDataSource1" Height="200px" HorizontalAlign="Center" Width="800px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="svid" HeaderText="svid" InsertVisible="False" ReadOnly="True" SortExpression="svid" />
                        <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                        <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                        <asp:BoundField DataField="umobile" HeaderText="umobile" SortExpression="umobile" />
                        <asp:BoundField DataField="uadd" HeaderText="uadd" SortExpression="uadd" />
                        <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
                        <asp:BoundField DataField="scid" HeaderText="scid" SortExpression="scid" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mydb %>" DeleteCommand="DELETE FROM [UserServices] WHERE [svid] = @original_svid AND (([uid] = @original_uid) OR ([uid] IS NULL AND @original_uid IS NULL)) AND (([uname] = @original_uname) OR ([uname] IS NULL AND @original_uname IS NULL)) AND (([umobile] = @original_umobile) OR ([umobile] IS NULL AND @original_umobile IS NULL)) AND (([uadd] = @original_uadd) OR ([uadd] IS NULL AND @original_uadd IS NULL)) AND (([cid] = @original_cid) OR ([cid] IS NULL AND @original_cid IS NULL)) AND (([scid] = @original_scid) OR ([scid] IS NULL AND @original_scid IS NULL))" InsertCommand="INSERT INTO [UserServices] ([uid], [uname], [umobile], [uadd], [cid], [scid]) VALUES (@uid, @uname, @umobile, @uadd, @cid, @scid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserServices] WHERE ([uid] = @uid)" UpdateCommand="UPDATE [UserServices] SET [uid] = @uid, [uname] = @uname, [umobile] = @umobile, [uadd] = @uadd, [cid] = @cid, [scid] = @scid WHERE [svid] = @original_svid AND (([uid] = @original_uid) OR ([uid] IS NULL AND @original_uid IS NULL)) AND (([uname] = @original_uname) OR ([uname] IS NULL AND @original_uname IS NULL)) AND (([umobile] = @original_umobile) OR ([umobile] IS NULL AND @original_umobile IS NULL)) AND (([uadd] = @original_uadd) OR ([uadd] IS NULL AND @original_uadd IS NULL)) AND (([cid] = @original_cid) OR ([cid] IS NULL AND @original_cid IS NULL)) AND (([scid] = @original_scid) OR ([scid] IS NULL AND @original_scid IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_svid" Type="Int32" />
                        <asp:Parameter Name="original_uid" Type="Int32" />
                        <asp:Parameter Name="original_uname" Type="String" />
                        <asp:Parameter Name="original_umobile" Type="String" />
                        <asp:Parameter Name="original_uadd" Type="String" />
                        <asp:Parameter Name="original_cid" Type="Int32" />
                        <asp:Parameter Name="original_scid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="uid" Type="Int32" />
                        <asp:Parameter Name="uname" Type="String" />
                        <asp:Parameter Name="umobile" Type="String" />
                        <asp:Parameter Name="uadd" Type="String" />
                        <asp:Parameter Name="cid" Type="Int32" />
                        <asp:Parameter Name="scid" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="uid" SessionField="uid" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="uid" Type="Int32" />
                        <asp:Parameter Name="uname" Type="String" />
                        <asp:Parameter Name="umobile" Type="String" />
                        <asp:Parameter Name="uadd" Type="String" />
                        <asp:Parameter Name="cid" Type="Int32" />
                        <asp:Parameter Name="scid" Type="Int32" />
                        <asp:Parameter Name="original_svid" Type="Int32" />
                        <asp:Parameter Name="original_uid" Type="Int32" />
                        <asp:Parameter Name="original_uname" Type="String" />
                        <asp:Parameter Name="original_umobile" Type="String" />
                        <asp:Parameter Name="original_uadd" Type="String" />
                        <asp:Parameter Name="original_cid" Type="Int32" />
                        <asp:Parameter Name="original_scid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

