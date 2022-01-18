<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="adminhak.aspx.cs" Inherits="projeww.adminhakkımızda" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <script type="text/javascript">
           window.onload = function () {
               var editor = CKEDITOR.replace('<%=tbicerik.ClientID%>');
               CKFinder.setupCKEditor(editor, '../ckfinder');


           };
    </script>
       <table style="width: 100%; height: 446px">
           <tr>
               <td colspan="5" style="height: 49px">
                   <h3>Footer Bölümü</h3>
               </td>
           </tr>
           <tr>
               <td style="width: 162px; height: 54px">
                   <a>Başlık:</a>
               </td>
               <td style="height: 54px; " colspan="2">
                   <asp:TextBox ID="tbbaslik" runat="server" Width="234px"></asp:TextBox>
               </td>
               <td style="height: 54px; width: 202px;">
                   <asp:Button ID="byeni" runat="server" OnClick="byeni_Click" Text="Yeni" />
               </td>
               <td style="height: 54px">
                   <asp:TextBox ID="tbid" runat="server" ReadOnly="True"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 162px; height: 58px">
                   <a>İçerik:</a>
               </td>
               <td colspan="4" rowspan="2">
                   <asp:TextBox ID="tbicerik" runat="server" TextMode="MultiLine"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 162px; height: 59px"></td>
           </tr>
           <tr>
               <td style="width: 162px; height: 52px"></td>
               <td style="height: 52px; width: 174px;">
                   <asp:Button ID="bkaydet" runat="server" Text="Kaydet" OnClick="bkaydet_Click" />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   </td>
               <td style="height: 52px; width: 132px;">
                   <asp:Button ID="bsil" runat="server" Text="Sil" OnClick="bsil_Click"  />
               </td>
               <td style="height: 52px" colspan="2"></td>
           </tr>
           <tr>
               <td style="width: 162px">&nbsp;</td>
               <td colspan="4">
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="423px">
                       <AlternatingRowStyle BackColor="#DCDCDC" />
                       <Columns>
                           <asp:CommandField ShowSelectButton="True" />
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
               </td>
           </tr>
       </table>
&nbsp;
</asp:Content>
