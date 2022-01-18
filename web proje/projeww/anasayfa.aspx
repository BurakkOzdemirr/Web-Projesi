<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="projeww.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
        }
        .auto-style17 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="üst" runat="server">
    <h3 style="text-align:center;font-size:40px;width:auto">Hoşgeldiniz <asp:Label ID="lbhosgeldin" runat="server" Text="Label"></asp:Label></h3>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sagüst" runat="server">
    <a href="kullaniciayar.aspx"><img alt="kullanıcıayarları" style=" margin-left: 121px; height: 39px; width: 46px;" src="giris/resim/icon/kulicon.png" /> </a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sol" runat="server">
    <div class="anasayfasol">
        <ul>
            <li><a href="gezie.aspx">Gezi Ekle</a></li>
            <li><a href="paylasim.aspx" style="color:black;">Paylaşımlarım</a></li>
        </ul>
        <asp:Button ID="bcikis" runat="server" Text="ÇIKIŞ YAP " style="position:relative;top:120px;background-color:red;color:black;width:150px;height:50px;font-size:20px; left: 0px;" OnClick="bcikis_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ortaüst" runat="server">
     <div style=" text-align:center;width:100%">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="id">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
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
             <asp:Button ID="bgoruntule" runat="server" Text="Görüntüle" OnClick="bgoruntule_Click" /> <asp:TextBox ID="tbid" runat="server"></asp:TextBox>
        </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ortaalt" runat="server">
    
  
        
 
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="sagalt" runat="server">
    
   
</asp:Content>
