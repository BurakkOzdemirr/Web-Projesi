<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bilgigoster.aspx.cs" Inherits="projeww.bilgigoster" %>
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
    <a href="kullanicigiris.aspx">
                    <img alt="kullanıcıgirisi" style=" margin-left: 121px; height: 39px; width: 46px;" src="giris/resim/icon/kulicon.png" /> </a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sol" runat="server">
    <h5 style="color:red;font:bold;position:relative;left:10px;">İşinize Yarayacak Bilgiler</h5>
    <asp:Panel ID="Panel1" runat="server" Height="309px" Width="170px">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <a  id="a1" href='<%#Eval("id","~/bilgigoster.aspx?id={0}") %>' runat="server"> 
                    <p style="text-align:left;color:white;font:bold;padding-left:20px;font-size:15px;">
                       <%#Eval("baslik") %> 
                    </p>

                </a>
            </ItemTemplate>
        </asp:Repeater>
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ortaüst" runat="server">

    <div style="padding:10px;">
    <table class="auto-style15">
        <tr>
            <td style="background-color:lightblue;color:black;text-align:center;"><h4 style="text-align:center;font:bold;"><%Response.Write(tutbaslik); %></h4></td>
        </tr>
    </table>
</div>

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ortaalt" runat="server">

    <div style="padding:10px;">
    <table class="auto-style15">
        <tr>
            <td style="font:bold;color:black;">  <%Response.Write(tuticerik);  %></td>
        </tr>
    </table>
 </div>

</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="sagalt" runat="server">
    <a href="giris.aspx" style=" border:1px; margin:20px; padding:10px; font-size:20px; font:bold; background-color:lightblue;">Giriş Ekranı</a>
</asp:Content>
