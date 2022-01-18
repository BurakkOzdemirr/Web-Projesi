<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="paylasim.aspx.cs" Inherits="projeww.paylasim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
        }
        .auto-style17 {
            height: 27px;
        }
        .auto-style18 {
            height: 18px;
        }
        .auto-style19 {
            height: 27px;
            width: 198px;
        }
        .auto-style20 {
            height: 18px;
            width: 198px;
        }
        .auto-style21 {
            width: 198px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="üst" runat="server">
    <h1 style="text-align:center;font:bold">PAYLAŞIMLARIM</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sagüst" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sol" runat="server">
    <div class="anasayfasol">
        <ul>
            <li><a href="anasayfa.aspx">Geri Dön</a></li>
            
        </ul>
       
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ortaüst" runat="server">
    <div>

        <asp:GridView ID="GridView1" runat="server" Height="148px" Width="588px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="tarih" HeaderText="Tarih" />
                <asp:BoundField DataField="sehir" HeaderText="Şehir" />
                <asp:BoundField DataField="kategori" HeaderText="Kategori" />
                <asp:BoundField DataField="baslik" HeaderText="Başlık" />
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

    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ortaalt" runat="server">
    <div class="geziekle">
    <table cellpadding="0" cellspacing="0" class="auto-style15">
        <tr>
            <td class="auto-style17">
                <asp:Button ID="bdegistir" runat="server" Text="Değiştir" OnClick="bdegistir_Click" />
            </td>
            <td class="auto-style19">
                <asp:Button ID="bsil" runat="server" OnClick="bsil_Click" Text="Sil" Width="57px" />
            </td>
            
            <td class="auto-style17">
                <asp:TextBox ID="tbid" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">
                <asp:Button ID="bgoruntule" runat="server" Text="Görüntüle" OnClick="bgoruntule_Click" />
            </td>
            <td class="auto-style16">
                &nbsp;</td>
        </tr>
    </table>

    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="sagalt" runat="server">
</asp:Content>
