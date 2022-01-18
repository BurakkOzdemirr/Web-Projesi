<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="footer.aspx.cs" Inherits="projeww.footer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .tut {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="üst" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sagüst" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sol" runat="server">
    <a href="giris.aspx" style=" border:1px; margin:20px; padding:10px; font-size:20px; font:bold; background-color:lightblue;">Giriş Ekranı</a>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ortaüst" runat="server">
    <div style="padding:10px;">
        <table class="tut">
        <tr>
            <td style="background-color:lightblue;color:black;"><h4 style="text-align:center;font:bold;"><%Response.Write(tutbaslik); %></h4></td>
        </tr>
    </table>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ortaalt" runat="server">
    <div style="padding:10px;">
        <table class="tut">
        <tr>
            <td style="font:bold;color:black;">  <%Response.Write(tuticerik);  %></td>
        </tr>
    </table>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="sagalt" runat="server">
</asp:Content>
