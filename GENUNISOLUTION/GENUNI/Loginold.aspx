<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Loginold.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GEN-UNI Login</title>
    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon" />
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,500,600,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet" />

    <!-- Bootstrap CSS File -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Libraries CSS Files -->
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="lib/animate/animate.min.css" rel="stylesheet" />
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet" />
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet" />

    <!-- Main Stylesheet File -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/scss-files.txt" rel="stylesheet" />
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" <%--id="bootstrap-css"--%> />
</head>
<body>
    <!--Inserimento logo solo per pagina corrente-->
    <header id="header">
        <div id="topbar">
            <div class="container">
                <div class="social-links">
                    <form class="form-inline">
                    </form>
                </div>
            </div>
        </div>

        <div class="container">
            <!--========================== Logo ============================-->
            <div class="logo float-left">
                <!-- Uncomment below if you prefer to use an image logo -->
                <a href="#header" class="scrollto">
                    <img src="img/logo.png" alt="" href="Default.aspx" class="img-fluid"></a>
                <h1 class="text-light"><a href="Default.aspx" class="scrollto"><span>Gen Uni</span></a></h1>
            </div>
            <!-- #logo -->
            <nav class="main-nav float-right d-none d-lg-block">
                <ul>
                    <li class="active"><a href="Default.aspx"></a></li>
                    <li><a href="#about"></a></li>
                    <li class="active"><a href="Default.aspx"></a></li>
                    <li><a href="#team"></a></li>
                    <li><a href="#pricing"></a></li>
                    <li><a href="#footer"></a></li>
                    <li>
                        <button class="btn btn-outline-info my-2 my-sm-0"><a href="Default.aspx" id="btnHome">Torna alla Homepage</a></button>
                    </li>
                </ul>

            </nav>
            <!-- .main-nav -->
    </header>
    <form id="form1" runat="server">
        <!--========================== Login ============================-->
        <div id="containerLogin">

            <div class="row" style="margin-top: 20px">
                <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                    <fieldset>
                        <h2>Login</h2>
                        <hr class="colorgraph">
                        <div class="form-group">
                            <asp:TextBox ID="txtMail" runat="server" CssClass="form-control input-lg" placeholder="Email"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control input-lg" placeholder="Password"></asp:TextBox>
                        </div>
                        <%-- <span class="button-checkbox">
                                <button type="button" class="btn" data-color="info">Ricordami</button>
                                <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden" />
                                <a href="" class="btn btn-link pull-right">Password dimenticata?</a>
                            </span>--%>
                        <hr class="colorgraph">
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-lg btn-success btn-block" OnClick="btnLogin_Click" />
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <a href="Registrazione.aspx" class="btn btn-lg btn-primary btn-block">Registrati</a>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
        <!-- //Login -->

        <!-- Uncomment below i you want to use a preloader -->
        <!-- <div id="preloader"></div> -->

    </form>
    <!-- JavaScript Libraries -->
    <script src="lib/jquery/jquery.min.js"></script>
    <script src="lib/jquery/jquery-migrate.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/mobile-nav/mobile-nav.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- Contact Form JavaScript File -->
    <script src="contactform/contactform.js"></script>

    <!-- Template Main Javascript File -->
    <script src="assets/js/main.js"></script>
</body>
</html>
