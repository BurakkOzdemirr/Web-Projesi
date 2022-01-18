<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="projeww.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
            height: 0px;
        }
        .auto-style16 {
            width: 418px;
        }
        .auto-style17 {
            width: 166px;
        }
        .auto-style18 {
            width: 212px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="sagüst">
                
                         <a href="kullanicigiris.aspx">
                    <img alt="kullanıcıgirisi" style=" margin-left: 121px; height: 39px; width: 46px;" src="giris/resim/icon/kulicon.png" /> </a>
                        
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="sol">
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
<asp:Content ID="Content4" runat="server" contentplaceholderid="sagalt">
                       
                                <ul style="">
                                    <a style="color:red;font:bold;">İLETİŞİM</a>
                                    <li style="color:white"><%Response.Write(tuteposta); %></li>
                                    <li style="color:white"><%Response.Write(tuttelefon); %></li>
                                    <li style="color:white"><%Response.Write(tutadres); %></li>
                                </ul>
                         
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ortaüst" runat="server">
    <div class="giris">

        <table class="auto-style15">
            <tr>
                <td class="auto-style17"><h3 style="width:274px;">Nereye gitmek istersiniz:</h3></td>
                <td class="auto-style18">
                    
                <asp:DropDownList ID="DropDownList1" runat="server" Height="49px" Width="157px"></asp:DropDownList>
                
                </td>
                <td>
                    <asp:Button ID="bara" runat="server" Text="ARA" OnClick="bara_Click" />
                 </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18"></td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
    
</asp:Content>



<asp:Content ID="Content6" runat="server" contentplaceholderid="ortaalt">
                
                  <div class="slider"style="padding-top:320px;"  >
                     <%Response.Write(resimtut);%>
                     </div>
    
           
</asp:Content>


<asp:Content ID="Content7" runat="server" contentplaceholderid="üst">
      
       <table cellpadding="0" cellspacing="0" class="auto-style15">
           <tr>
               <td class="auto-style16">
                   <h5 style="text-align:center;color:black;font:bold;font-size:30px;">Rotanız Neresi ? 
                       
                   </h5>
    
               </td>
               
           </tr>
       </table>
                            
</asp:Content>


  
