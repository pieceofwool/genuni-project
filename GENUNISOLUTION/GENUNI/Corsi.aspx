<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Corsi.aspx.cs" Inherits="Corsi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
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
</head>
<body>
    
    <form id="form1" runat="server">

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
            </div>
        </header>
        <!--==========================
      Services Section
    ============================-->
        <section id="services" class="section-bg">
            <div class="container">

                <header class="section-header">
                    <h3>Tipologie corsi</h3>


                    
                    <p>Ecco l'elenco aggiornato dei nostri corsi</p>

                </header>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

                    <asp:Button ID="BtnTutti" runat="server" Text="Tutti i Corsi" OnClick="BtnTutti_Click" />
                    <asp:Button ID="BtnPronti" runat="server" Text="Corsi Pronti" OnClick="BtnPronti_Click" />
                    <asp:Button ID="BtnNonPronti" runat="server" Text="Corsi Non Pronti" OnClick="BtnNonPronti_Click" />

                <div class="row">

                    <%--LITERAL DA RIEMPIRE DINAMICAMENTE--%>

                    <asp:Literal ID="litCorso" runat="server"></asp:Literal>

                    <%--<div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
                        <div class="box">
                            <div class="icon" style="background: #fceef3;"><i class="ion-ios-analytics-outline" style="color: #ff689b;"></i></div>
                            <h4 class="title"><a href="#">Lorem Ipsum</a></h4>
                            <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
                        </div>
                    </div>--%>

                    <%--<div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
                        <div class="box">--%>
                    <%--<div class="icon" style="background: #fceef3;">--%>
                    <%--<img style="width:60%; border-radius: 20%" src="img/genMoney2.png" />--%>

                    <%--</div>--%>
                    <%--<h4 class="title"><a href="#">Lorem Ipsum</a></h4>
                            <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
                        </div>
                    </div>--%>
                </div>
            </div>
        </section>
        <!-- #services -->
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        <!-- Uncomment below i you want to use a preloader -->
        <!-- <div id="preloader"></div> -->

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
        <!-- Contact Form JavaScript File -->
        <script src="contactform/contactform.js"></script>

        <!-- Template Main Javascript File -->
        <script src="assets/js/main.js"></script>
        </div>
    </form>
</body>
</html>
