<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="VenderEditProfile.aspx.cs" Inherits="VenderEditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EDIT YOUR PROFILE</strong></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vid" DataSourceID="SqlDataSource1" Height="120px" Width="879px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="vid" HeaderText="vid" ReadOnly="True" SortExpression="vid" />
                        <asp:BoundField DataField="vpass" HeaderText="vpass" SortExpression="vpass" />
                        <asp:BoundField DataField="vname" HeaderText="vname" SortExpression="vname" />
                        <asp:BoundField DataField="vemail" HeaderText="vemail" SortExpression="vemail" />
                        <asp:BoundField DataField="vgender" HeaderText="vgender" SortExpression="vgender" />
                        <asp:BoundField DataField="vmob" HeaderText="vmob" SortExpression="vmob" />
                        <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
                        <asp:BoundField DataField="scid" HeaderText="scid" SortExpression="scid" />
                        <asp:BoundField DataField="vadd" HeaderText="vadd" SortExpression="vadd" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mydb %>" DeleteCommand="DELETE FROM [Professional] WHERE [vid] = @original_vid AND (([vpass] = @original_vpass) OR ([vpass] IS NULL AND @original_vpass IS NULL)) AND (([vname] = @original_vname) OR ([vname] IS NULL AND @original_vname IS NULL)) AND (([vemail] = @original_vemail) OR ([vemail] IS NULL AND @original_vemail IS NULL)) AND (([vgender] = @original_vgender) OR ([vgender] IS NULL AND @original_vgender IS NULL)) AND (([vmob] = @original_vmob) OR ([vmob] IS NULL AND @original_vmob IS NULL)) AND (([cid] = @original_cid) OR ([cid] IS NULL AND @original_cid IS NULL)) AND (([scid] = @original_scid) OR ([scid] IS NULL AND @original_scid IS NULL)) AND (([vadd] = @original_vadd) OR ([vadd] IS NULL AND @original_vadd IS NULL))" InsertCommand="INSERT INTO [Professional] ([vid], [vpass], [vname], [vemail], [vgender], [vmob], [cid], [scid], [vadd]) VALUES (@vid, @vpass, @vname, @vemail, @vgender, @vmob, @cid, @scid, @vadd)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Professional] WHERE ([vid] = @vid)" UpdateCommand="UPDATE [Professional] SET [vpass] = @vpass, [vname] = @vname, [vemail] = @vemail, [vgender] = @vgender, [vmob] = @vmob, [cid] = @cid, [scid] = @scid, [vadd] = @vadd WHERE [vid] = @original_vid AND (([vpass] = @original_vpass) OR ([vpass] IS NULL AND @original_vpass IS NULL)) AND (([vname] = @original_vname) OR ([vname] IS NULL AND @original_vname IS NULL)) AND (([vemail] = @original_vemail) OR ([vemail] IS NULL AND @original_vemail IS NULL)) AND (([vgender] = @original_vgender) OR ([vgender] IS NULL AND @original_vgender IS NULL)) AND (([vmob] = @original_vmob) OR ([vmob] IS NULL AND @original_vmob IS NULL)) AND (([cid] = @original_cid) OR ([cid] IS NULL AND @original_cid IS NULL)) AND (([scid] = @original_scid) OR ([scid] IS NULL AND @original_scid IS NULL)) AND (([vadd] = @original_vadd) OR ([vadd] IS NULL AND @original_vadd IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_vid" Type="Int32" />
                        <asp:Parameter Name="original_vpass" Type="String" />
                        <asp:Parameter Name="original_vname" Type="String" />
                        <asp:Parameter Name="original_vemail" Type="String" />
                        <asp:Parameter Name="original_vgender" Type="String" />
                        <asp:Parameter Name="original_vmob" Type="String" />
                        <asp:Parameter Name="original_cid" Type="Int32" />
                        <asp:Parameter Name="original_scid" Type="Int32" />
                        <asp:Parameter Name="original_vadd" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="vid" Type="Int32" />
                        <asp:Parameter Name="vpass" Type="String" />
                        <asp:Parameter Name="vname" Type="String" />
                        <asp:Parameter Name="vemail" Type="String" />
                        <asp:Parameter Name="vgender" Type="String" />
                        <asp:Parameter Name="vmob" Type="String" />
                        <asp:Parameter Name="cid" Type="Int32" />
                        <asp:Parameter Name="scid" Type="Int32" />
                        <asp:Parameter Name="vadd" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="vid" SessionField="vid" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="vpass" Type="String" />
                        <asp:Parameter Name="vname" Type="String" />
                        <asp:Parameter Name="vemail" Type="String" />
                        <asp:Parameter Name="vgender" Type="String" />
                        <asp:Parameter Name="vmob" Type="String" />
                        <asp:Parameter Name="cid" Type="Int32" />
                        <asp:Parameter Name="scid" Type="Int32" />
                        <asp:Parameter Name="vadd" Type="String" />
                        <asp:Parameter Name="original_vid" Type="Int32" />
                        <asp:Parameter Name="original_vpass" Type="String" />
                        <asp:Parameter Name="original_vname" Type="String" />
                        <asp:Parameter Name="original_vemail" Type="String" />
                        <asp:Parameter Name="original_vgender" Type="String" />
                        <asp:Parameter Name="original_vmob" Type="String" />
                        <asp:Parameter Name="original_cid" Type="Int32" />
                        <asp:Parameter Name="original_scid" Type="Int32" />
                        <asp:Parameter Name="original_vadd" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

