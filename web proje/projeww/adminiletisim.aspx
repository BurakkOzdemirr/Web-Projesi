<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="adminiletisim.aspx.cs" Inherits="projeww.adminiletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="admin">
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td style="height: 30px;" colspan="2">
               <h3>İletişim Bilgileri</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 267px; height: 30px">
                <a>E-posta Adresi:</a>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbe" runat="server" Width="303px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 267px; height: 38px">
                <a>Telefon Numarası:</a>
            </td>
            <td style="height: 38px">
                <asp:TextBox ID="tbtn" runat="server" Width="303px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 267px; height: 58px">
                <a>Adres:</a>
            </td>
            <td style="height: 58px">
                <asp:TextBox ID="tbadres" runat="server" Width="303px" Height="53px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 58px" colspan="2">
               
                <asp:Button ID="Button2" runat="server" Text="GÜNCELLE" OnClick="Button2_Click" />
               
            </td>
        </tr>
    </table>

    </div>
</asp:Content>
