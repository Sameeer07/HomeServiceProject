<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="VenderManagement.aspx.cs" Inherits="VenderManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vender Details</strong></td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vid" DataSourceID="SqlDataSource1" Height="114px" HorizontalAlign="Center" Width="718px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="vid" HeaderText="vid" ReadOnly="True" SortExpression="vid" />
                        <asp:BoundField DataField="vname" HeaderText="vname" SortExpression="vname" />
                        <asp:BoundField DataField="vpass" HeaderText="vpass" SortExpression="vpass" />
                        <asp:BoundField DataField="vemail" HeaderText="vemail" SortExpression="vemail" />
                        <asp:BoundField DataField="vgender" HeaderText="vgender" SortExpression="vgender" />
                        <asp:BoundField DataField="vmob" HeaderText="vmob" SortExpression="vmob" />
                        <asp:BoundField DataField="vadd" HeaderText="vadd" SortExpression="vadd" />
                        <asp:BoundField DataField="scname" HeaderText="scname" SortExpression="scname" />
                        <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mydb %>" DeleteCommand="DELETE FROM [Professional] WHERE [vid] = @original_vid AND (([vpass] = @original_vpass) OR ([vpass] IS NULL AND @original_vpass IS NULL)) AND (([vname] = @original_vname) OR ([vname] IS NULL AND @original_vname IS NULL)) AND (([vemail] = @original_vemail) OR ([vemail] IS NULL AND @original_vemail IS NULL)) AND (([vgender] = @original_vgender) OR ([vgender] IS NULL AND @original_vgender IS NULL)) AND (([vmob] = @original_vmob) OR ([vmob] IS NULL AND @original_vmob IS NULL)) AND (([cid] = @original_cid) OR ([cid] IS NULL AND @original_cid IS NULL)) AND (([scid] = @original_scid) OR ([scid] IS NULL AND @original_scid IS NULL)) AND (([vadd] = @original_vadd) OR ([vadd] IS NULL AND @original_vadd IS NULL))" InsertCommand="INSERT INTO [Professional] ([vid], [vpass], [vname], [vemail], [vgender], [vmob], [cid], [scid], [vadd]) VALUES (@vid, @vpass, @vname, @vemail, @vgender, @vmob, @cid, @scid, @vadd)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Professional.vid, Professional.vname, Professional.vpass, Professional.vemail, Professional.vgender, Professional.vmob, Professional.vadd, SubCategory.scname, Category.cname FROM Category INNER JOIN Professional ON Category.cid = Professional.cid INNER JOIN SubCategory ON Category.cid = SubCategory.cid AND Professional.scid = SubCategory.scid" UpdateCommand="UPDATE [Professional] SET [vpass] = @vpass, [vname] = @vname, [vemail] = @vemail, [vgender] = @vgender, [vmob] = @vmob, [cid] = @cid, [scid] = @scid, [vadd] = @vadd WHERE [vid] = @original_vid AND (([vpass] = @original_vpass) OR ([vpass] IS NULL AND @original_vpass IS NULL)) AND (([vname] = @original_vname) OR ([vname] IS NULL AND @original_vname IS NULL)) AND (([vemail] = @original_vemail) OR ([vemail] IS NULL AND @original_vemail IS NULL)) AND (([vgender] = @original_vgender) OR ([vgender] IS NULL AND @original_vgender IS NULL)) AND (([vmob] = @original_vmob) OR ([vmob] IS NULL AND @original_vmob IS NULL)) AND (([cid] = @original_cid) OR ([cid] IS NULL AND @original_cid IS NULL)) AND (([scid] = @original_scid) OR ([scid] IS NULL AND @original_scid IS NULL)) AND (([vadd] = @original_vadd) OR ([vadd] IS NULL AND @original_vadd IS NULL))">
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
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

