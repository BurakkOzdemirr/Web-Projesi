<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="kullaniciayar.aspx.cs" Inherits="projeww.kullaniciayar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="üst" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sagüst" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sol" runat="server">
    <a href="anasayfa.aspx" style=" border:1px; margin:20px; padding:10px; font-size:20px; font:bold; background-color:lightblue;">Geri Dön</a>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ortaüst" runat="server">
    <div class="ayar">
    <table cellspacing="1" class="auto-style15">
        <tr>
            <td>TC:</td>
            <td><asp:TextBox ID="tbtc" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Ad:</td>
            <td><asp:TextBox ID="tbad" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Soyad:</td>
            <td><asp:TextBox ID="tbso" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Kullanıcı Adı:</td>
            <td><asp:TextBox ID="tbka" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Şifre:</td>
            <td><asp:TextBox ID="tbsifre" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>E-posta:</td>
            <td><asp:TextBox ID="tbe" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Yaş:</td>
            <td><asp:TextBox ID="tbyas" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="bguncelle" runat="server" Text="Güncelle" OnClick="bguncelle_Click" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ortaalt" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="sagalt" runat="server">
</asp:Content>
