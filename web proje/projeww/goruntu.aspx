<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="goruntu.aspx.cs" Inherits="projeww.goruntu" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style22 {
            height: 50px;
        }
        .auto-style26 {
            width: 100%;
            height: 280px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="üst" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sagüst" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sol" runat="server">
    <div class="anasayfasol">
        <ul>
            <li><a href="<%Response.Write(geri); %>">Geri Dön</a></li>
            
        </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ortaüst" runat="server">
    
    <div class="goruntule"> 
        
        
        <table class="auto-style26">
            <tr>
                <td><%Response.Write(tutsehir); %></td>
                <td>&nbsp;</td>
                <td><%Response.Write(tutkategori); %></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><%Response.Write(tutbaslik); %></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align:center;text-decoration:underline;">Açıklama</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" >
                    <div style="background-color:white;width:100%;text-align:left;padding:10px;" ><%Response.Write(iceriktut); %></div>
                      
                   
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
       
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ortaalt" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="sagalt" runat="server">
</asp:Content>
