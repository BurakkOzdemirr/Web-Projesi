<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="adminresim.aspx.cs" Inherits="projeww.adminresim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="admin"><table cellpadding="0" cellspacing="0" style="width: 100%; height: 447px">
        <tr>
            <td colspan="4" style="height: 50px">
                <h3>Resim Düzenleme</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 269px; height: 54px">
                Resim Seçiniz:</td>
            <td style="height: 54px; width: 284px;">
                <asp:FileUpload ID="resimyukle" runat="server" Width="258px" />
            </td>
            <td rowspan="2" style="width: 69px">
                İD:</td>
            <td rowspan="2">
                <asp:TextBox ID="tbid" runat="server" ReadOnly="True"></asp:TextBox>
                
                </td>
        </tr>
        <tr>
            <td style="width: 269px; height: 67px;">
                Resim Adı:
            </td>
            <td class="modal-sm" style="width: 284px; height: 67px;">
                
                <asp:TextBox ID="tbadi" runat="server" Width="218px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td style="width: 269px; height: 56px;">&nbsp;</td>
            <td class="modal-sm" style="width: 284px; height: 56px;">
                <asp:Button ID="bekle" runat="server" Text="EKLE" OnClick="bekle_Click" />
                <asp:Button ID="bsil" runat="server" Text="SİL" OnClick="bsil_Click" />
            </td>
            <td rowspan="2" colspan="2">
                <asp:Image ID="Image1" runat="server" Height="211px" Width="299px" />
                
                </td>
        </tr>
        <tr>
            <td style="width: 269px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 284px">
                <asp:GridView ID="GridView1" runat="server" Height="153px" Width="219px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="resimadi" HeaderText="Resim Adı" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </td>
        </tr>
    </table></div>
</asp:Content>
