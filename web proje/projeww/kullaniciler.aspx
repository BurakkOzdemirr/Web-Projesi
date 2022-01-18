<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="kullaniciler.aspx.cs" Inherits="projeww.kullaniciler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    
    <table cellpadding="0" cellspacing="0" style="width: 100%; height: 313px">
        <tr>
            <td>
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="tc" GridLines="Vertical" Height="193px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1084px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="tc" HeaderText="TC Kimlik" />
            <asp:BoundField DataField="Ad" HeaderText="Ad" />
            <asp:BoundField DataField="soyad" HeaderText="Soyad" />
            <asp:BoundField DataField="ka" HeaderText="Kullanıcı Adı" />
            <asp:BoundField DataField="email" HeaderText="E-posta" />
            <asp:BoundField DataField="yas" HeaderText="Yaş" />
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
        <tr>
            <td class="admin">

                <asp:TextBox ID="tbtc" runat="server" ReadOnly="True"></asp:TextBox>

                <asp:Button ID="bsil" runat="server" Text="SİL" Width="86px" OnClick="bsil_Click" />

            </td>
        </tr>
    </table>
  
    
</asp:Content>
