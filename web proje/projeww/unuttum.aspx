<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="unuttum.aspx.cs" Inherits="projeww.unuttum" UnobtrusiveValidationMode="None"%>

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

</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('kayit/images/londra.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50" style="height: 600px;" >
				<span class="login100-form-title p-b-41">
					<h1 style="color:black;font:bold;text-align:center">ŞİFREMİ UNUTTUM</h1>
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" id="form1" runat="server" style="width:319px; height: 600px;" >
                    <div style="text-align:center;font:bold;color:black">
                       KULLANICI ADI<asp:TextBox ID="tbka" runat="server" CssClass="input100" BorderStyle="Solid"  Height="41px" Width="320px"  ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbka" Display="Dynamic" ErrorMessage="Boş Geçilmez" ForeColor="Red"></asp:RequiredFieldValidator>
				   </div>
                    <div style="text-align:center;font:bold;color:black">
                       TC NO<asp:TextBox ID="tbtc" runat="server" CssClass="input100" BorderStyle="Solid"  Height="41px" Width="320px"  ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbtc" Display="Dynamic" ErrorMessage="Boş Geçilmez" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                     
                     <div class="container-login100-form-btn m-t-32">
                        <asp:Button ID="btntmm" runat="server" Text="Tamam" class="login100-form-btn" style="cursor:pointer; top:0px" OnClick="btntmm_Click" />
                        
                    </div>
                   <div style="text-align:center;font:bold;color:black" id="ysifrediv" runat="server">
                      YENİ ŞİFRE<asp:TextBox ID="tbsi" runat="server" CssClass="input100" BorderStyle="Solid"  Height="41px" Width="320px" TextMode="Password"  ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbsi" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
				   </div>
                    <div style="text-align:center;font:bold;color:black" id="ysifredogrudiv" runat="server">
                       ŞİFRE DOĞRULAMA<asp:TextBox ID="tbsd" runat="server" CssClass="input100" BorderStyle="Solid"  Height="41px" Width="320px" TextMode="Password"  ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbsd" Display="Dynamic" ErrorMessage="*"  ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbsi" ControlToValidate="tbsd" Display="Dynamic" ErrorMessage="Aynı Şifre Değil !!"  ForeColor="Red"></asp:CompareValidator>
				   </div>
                    <div class="container-login100-form-btn m-t-32" >
                        <asp:Button ID="btnkayit" runat="server" Text="Kaydet" class="login100-form-btn" style="cursor:pointer; top:0px" OnClick="btnkayit_Click" />
                        
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
