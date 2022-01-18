<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayitol.aspx.cs" Inherits="projeww.kayitol" UnobtrusiveValidationMode="None"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>KAYIT OL</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="kayit/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="kayit/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="kayit/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="kayit/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="kayit/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="kayit/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="kayit/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="kayit/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="kayit/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="kayit/css/util.css">
	<link rel="stylesheet" type="text/css" href="kayit/css/main.css">
    <script type="text/javascript">
        function onlyNumber(e) {
            var keyCode = event.keyCode;
            if ((keyCode < 46 || keyCode > 57) && keyCode != 8 && keyCode != 9 && keyCode != 0 && keyCode != 47 && (keyCode < 96 || keyCode > 105)) {
                return false;
            }
        }
    </script>

</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('kayit/images/londra.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50" style="height:800px">
				<span class="login100-form-title p-b-41">
					<h1 style="color:black;font:bold">YENİ HESAP</h1>
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" id="form1" runat="server" style="width:400px;height:800px" >
                    <div style="text-align:center;font:bold;color:black">
                        TC NO<asp:TextBox ID="tbtc" runat="server" CssClass="input100" BorderStyle="Solid"  Height="41px" Width="400px" MaxLength="11" onkeydown="return onlyNumber(event)"  ></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbtc" ErrorMessage="Boş Geçilmez " ForeColor="Red"></asp:RequiredFieldValidator>
				    </div>
                    <div style="text-align:center;font:bold;color:black">
                        ADINIZ<asp:TextBox ID="tba" runat="server" CssClass="input100" BorderStyle="Solid"  Height="41px" Width="400px"  ></asp:TextBox>
                        <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ControlToValidate="tba" ErrorMessage="Boş Geçilmez " ForeColor="Red"></asp:RequiredFieldValidator>
				    </div>
					<div style="text-align:center;font:bold;color:black">
                        SOYADINIZ<asp:TextBox ID="tbso" runat="server" CssClass="input100" BorderStyle="Solid"  Height="41px" Width="400px"  ></asp:TextBox>
				    </div>
                   <div style="text-align:center;font:bold;color:black">
                       KULLANICI ADI<asp:TextBox ID="tbka" runat="server" CssClass="input100" BorderStyle="Solid"  Height="41px" Width="400px"  ></asp:TextBox>
				   </div>
                   <div style="text-align:center;font:bold;color:black">
                       ŞİFRE<asp:TextBox ID="tbsi" runat="server" CssClass="input100" BorderStyle="Solid"  Height="41px" Width="400px" TextMode="Password"  ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbsi" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
				   </div>
                    <div style="text-align:center;font:bold;color:black">
                       ŞİFRE DOĞRULAMA<asp:TextBox ID="tbsd" runat="server" CssClass="input100" BorderStyle="Solid"  Height="41px" Width="400px" TextMode="Password"  ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbsd" Display="Dynamic" ErrorMessage="*"  ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbsi" ControlToValidate="tbsd" Display="Dynamic" ErrorMessage="Aynı Şifre Değil !!"  ForeColor="Red"></asp:CompareValidator>
				   </div>
                   <div style="text-align:center;font:bold;color:black">
                       E-POSTA<asp:TextBox ID="tbe" runat="server" CssClass="input100" BorderStyle="Solid"  Height="41px" Width="400px"  ></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbe" Display="Dynamic" ErrorMessage="E-posta formatında girin" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
				   </div>
                    <div style="text-align:center;font:bold;color:black">
                       YAŞ<asp:TextBox ID="tbyas" runat="server" CssClass="input100" BorderStyle="Solid"  Height="41px" Width="400px" TextMode="Number" onkeydown="return onlyNumber(event)" ></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbyas" Display="Dynamic" ErrorMessage="Yaşınızın doğru olduğuna eminmisiniz ?" MaximumValue="120" MinimumValue="0" Type="Integer" ForeColor="Red"></asp:RangeValidator>

					<div class="container-login100-form-btn m-t-32">
                        <asp:Button ID="btnkayit" runat="server" Text="Kayıt Ol" class="login100-form-btn" style="cursor:pointer; top:-19px; left: 1px; " OnClick="btnkayit_Click" />
                        
                    </div>
				   </div>

                   </form>
             </div>
		</div>
	</div>
	
    <script src="kayit/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="kayit/vendor/animsition/js/animsition.min.js"></script>
	<script src="kayit/vendor/bootstrap/js/popper.js"></script>
	<script src="kayit/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="kayit/vendor/select2/select2.min.js"></script>
	<script src="kayit/vendor/daterangepicker/moment.min.js"></script>
	<script src="kayit/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="kayit/vendor/countdowntime/countdowntime.js"></script>
	<script src="kayit/js/main.js"></script>

</body>
</html>
