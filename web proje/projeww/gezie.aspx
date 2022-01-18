<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="gezie.aspx.cs" Inherits="projeww.gezie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style17 {
        }
        .auto-style18 {
            width: 132px;
        }
        .auto-style19 {
        }
        .auto-style20 {
            width: 74px;
        }
        .auto-style22 {
            width: 74px;
            height: 19px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="üst" runat="server">
    <h3 style="text-align:center;font-size:40px;">GEZİ EKLE</h3>
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
    <div class="geziekle"> 
       <a style="color:black">Kullanıcı adı:</a><asp:TextBox ID="tbka" runat="server" ReadOnly="True"></asp:TextBox>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ortaalt" runat="server">
     <script type="text/javascript">
         window.onload = function () {
             var editor = CKEDITOR.replace('<%=tbicerik.ClientID%>');
             CKFinder.setupCKEditor(editor, '../ckfinder');


         };
    </script>
    <div class="geziekle">
    <table cellpadding="0" cellspacing="0" class="auto-style15">
        <tr>
            <td class="auto-style19" colspan="2">Şehir:</td>
            <td class="auto-style17">
                <asp:TextBox ID="tbsehir" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style18">Kategori:</td>
            <td colspan="2">
                <asp:DropDownList ID="dlkat" runat="server" Height="16px" Width="111px">
                    <asp:ListItem Value="yemek">Restoran</asp:ListItem>
                    <asp:ListItem Value="tarihi">Tarihi Yerler</asp:ListItem>
                    <asp:ListItem Value="muze">Müze</asp:ListItem>
                    <asp:ListItem Value="park">Park</asp:ListItem>
                    <asp:ListItem Value="meydan">Meydan</asp:ListItem>
                    <asp:ListItem Value="cafe">Cafe</asp:ListItem>
                    <asp:ListItem Value="doga">Doğa  Gezisi</asp:ListItem>
                </asp:DropDownList>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style19" colspan="2">Tarih:</td>
            <td class="auto-style17" rowspan="2">
                <asp:Calendar ID="tarih" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="108px" Width="153px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
            <td class="auto-style18">
                <asp:Label ID="Label1" runat="server"></asp:Label>

            </td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19" colspan="2"></td>
            <td class="auto-style18">Başlık:</td>
            <td colspan="2"><asp:TextBox ID="tbbaslik" runat="server"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td class="auto-style20">İÇERİK:</td>
            <td class="auto-style19" colspan="4" rowspan="2">
                <asp:TextBox ID="tbicerik" runat="server" TextMode="MultiLine" Height="16px"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style19" colspan="2">
                <asp:Button ID="bkaydet" runat="server" Text="KAYDET" OnClick="bkaydet_Click" />
            </td>
            <td class="auto-style19" colspan="2">
                <asp:Button ID="biptal" runat="server" Text="İPTAL" OnClick="biptal_Click" />
            </td>
            <td>
                
            </td>
        </tr>
        
    </table>
  </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="sagalt" runat="server">
</asp:Content>