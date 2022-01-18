<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="degistir.aspx.cs" Inherits="projeww.degistir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
        }
        .auto-style17 {
        }
        .auto-style19 {
            width: 305px;
            height: 23px;
        }
        .auto-style20 {
            height: 23px;
        }
        .auto-style21 {
            width: 305px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="üst" runat="server">
    <h1 style="text-align:center;font:bold">DEĞİŞTİR</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sagüst" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sol" runat="server">
     <div class="anasayfasol">
        <ul>
            <li><a href="anasayfa.aspx">Geri Dön</a></li>
        </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ortaüst" runat="server">
    <script type="text/javascript">
        window.onload = function () {
            var editor = CKEDITOR.replace('<%=tbicerik.ClientID%>');
             CKFinder.setupCKEditor(editor, '../ckfinder');


         };
    </script>
    <div class="geziekle">

        <table cellpadding="0" cellspacing="0" class="auto-style15">
            <tr>
                <td class="auto-style21">Kategori:</td>
                <td>
                    <asp:DropDownList ID="dlkat" runat="server" Height="16px" Width="111px">
                    <asp:ListItem Value="yemek">Restoran</asp:ListItem>
                    <asp:ListItem Value="tarihi">Tarihi Yerler</asp:ListItem>
                    <asp:ListItem Value="muze">Müze</asp:ListItem>
                    <asp:ListItem Value="park">Park</asp:ListItem>
                    <asp:ListItem Value="meydan">Meydan</asp:ListItem>
                    <asp:ListItem Value="cafe">Cafe</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Şehir:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="tbsehir" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">Başlık:</td>
                <td>
                    <asp:TextBox ID="tbbaslik" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">İçerik:</td>
                <td class="auto-style16">
                    <asp:Label ID="lbid" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" colspan="2">
                    <asp:TextBox ID="tbicerik" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Button ID="bkaydet" runat="server" Text="KAYDET" OnClick="bkaydet_Click" />
                </td>
                <td>
                    <asp:Button ID="biptal" runat="server" Text="İPTAL" OnClick="biptal_Click" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ortaalt" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="sagalt" runat="server">
</asp:Content>
