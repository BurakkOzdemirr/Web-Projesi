<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="adminbilgi.aspx.cs" Inherits="projeww.adminbilgi" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <script type="text/javascript">
           window.onload = function () {
               var editor = CKEDITOR.replace('<%=tbicerik.ClientID%>');
            CKFinder.setupCKEditor(editor, '../ckfinder');


        };
    </script>
   
    <div class="admin">
     
        <table cellpadding="0" cellspacing="0" style="width: 100%; height: 429px">
            <tr>
                <td colspan="4" style="height: 53px">
                    <h3>İşimize Yarayacak Bilgiler</h3>
                </td>
            </tr>
            <tr>
                <td style="width: 109px; height: 36px">
                    <a>Başlık:</a>
                </td>
                <td style="height: 36px; width: 269px;">
                    <asp:TextBox ID="tbbaslik" runat="server" Width="169px"></asp:TextBox>
                </td>
                <td style="height: 36px">
                    <asp:Button ID="byeni" runat="server" Text="Yeni" OnClick="byeni_Click" />
                </td>
                <td style="height: 36px">
                    <asp:TextBox ID="tbid" runat="server" Width="169px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 109px; height: 57px">
                    <a>İçerik:</a>

                </td>
                <td style="height: 57px; " colspan="3">
                    <asp:TextBox ID="tbicerik" runat="server" TextMode="MultiLine" Width="203px" Height="39px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 109px; height: 63px" rowspan="2">
                    <a>
                        Tarih:
                    </a>

                </td>
                <td style="height: 63px; width: 269px;" rowspan="2">
                    <asp:Calendar ID="tarih" runat="server" Height="102px" Width="144px" ></asp:Calendar>
                </td>
                <td style="height: 63px; width: 195px">
                    
                    <a>Yayınlanma Durumu:</a>
                                        
                </td>
                <td style="height: 63px; width: 237px">
                    
                    <asp:CheckBox ID="cbyayin" runat="server" text="Yayınlansın"/>
                    
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 63px">
                    
                    <asp:Button ID="bkaydet" runat="server" Text="Kaydet" OnClick="bkaydet_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bsil" runat="server" OnClick="bsil_Click" Text="Sil" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="biptal" runat="server" Text="İptal" OnClick="biptal_Click" />
                    
                </td>
            </tr>
            <tr>
                <td style="width: 109px">
                    &nbsp;</td>
                <td class="modal-sm" colspan="3" rowspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" GridLines="Vertical" Height="191px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="702px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="baslik" HeaderText="Başlık" />
                            <asp:BoundField DataField="tarih" HeaderText="Tarih" />
                            <asp:BoundField DataField="yayinda" HeaderText="Yayındamı" />
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
                <td style="width: 109px"></td>
            </tr>
        </table>
     
   </div>
</asp:Content>
