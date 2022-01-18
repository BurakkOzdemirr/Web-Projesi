<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanicigiris.aspx.cs" Inherits="projeww.kullanicigiris" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>GİRİŞ</title>
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
			<div class="wrap-login100 p-t-30 p-b-50" style="height:430px">
				<span class="login100-form-title p-b-41">
					<h1 style="color:black;font:bold">HESAP GİRİŞİ</h1>
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" id="form1" runat="server" style="height:430px" >

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
                        <asp:TextBox ID="tbka" runat="server" CssClass="input100" ></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<asp:TextBox ID="tbs" runat="server" CssClass="input100" TextMode="Password"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

					<div class="container-login100-form-btn m-t-32">
                        <asp:Button ID="buton" runat="server" Text="GİRİŞ" class="login100-form-btn" style="cursor:pointer" OnClick="buton_Click" />
                    </div>
                    <br />
                     <div style="width: 404px" >
                          <a href="kayitol.aspx"> 
                             <img alt="yenikullanici" class="auto-style30" style=" padding-left:15px; height: 32px; width: 40px;" src="kayit/images/icons/yenikullanici.png" />
                            <b><u style="color:red">KAYIT OL</u></b>
                          </a>
                         <a href="unuttum.aspx" style="padding-left:150px"><b><u style="color:red">ŞİFREMİ UNUTTUM</u></b></a> 
                            
                          
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
