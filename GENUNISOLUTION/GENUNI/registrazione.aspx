<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrazione.aspx.cs" Inherits="registrazione" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Reistrazione</title>
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
    <link href="assets/css/bootstrap-contents.scss" rel="stylesheet" />
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
        </header>
        <!--========================== Registrazione ============================-->
        <div id="containerRegistrazione">
            <section class="h-100 bg-info">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col">
                            <div class="card card-registration my-4">
                                <div class="row g-0">
                                    <div class="col-xl-6 d-none d-xl-block">
                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                                            alt="Sample photo" class="img-fluid"
                                            style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="card-body p-md-5 text-black">
                                            <h3 class="mb-5 text-uppercase" id="h1Registrazione">REGISTRAZIONE</h3>

                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input type="text" id="form3Example1m" class="form-control form-control-lg" />
                                                        <label class="form-label" for="form3Example1m">Nome</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input type="text" id="form3Example1n" class="form-control form-control-lg" />
                                                        <label class="form-label" for="form3Example1n">Cognome</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="text" id="form3Example8" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example8">Indirizzo</label>
                                            </div>

                                            <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                                                <h6 class="mb-0 me-4">Gender: </h6>

                                                <div class="form-check form-check-inline mb-0 me-4">
                                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender"
                                                        value="option1" />
                                                    <label class="form-check-label" for="femaleGender">Donna</label>
                                                </div>

                                                <div class="form-check form-check-inline mb-0 me-4">
                                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender"
                                                        value="option2" />
                                                    <label class="form-check-label" for="maleGender">Uomo</label>
                                                </div>

                                                <div class="form-check form-check-inline mb-0">
                                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="otherGender"
                                                        value="option3" />
                                                    <label class="form-check-label" for="otherGender">Altro</label>
                                                </div>

                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="text" id="form3Example8" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example8">Indirizzo</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="text" id="form3Example8" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example8">Indirizzo</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="text" id="form3Example9" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example9">Provincia</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="text" id="form3Example90" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example90">Cap</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="text" id="form3Example99" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example99">Corso</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="text" id="form3Example97" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example97">Email</label>
                                            </div>

                                            <div class="d-flex justify-content-end pt-3">
                                                <button type="button" class="btn btn-warning btn-lg ms-2">Invia form</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <!-- //Registrazione -->

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
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!-- Contact Form JavaScript File -->
        <script src="contactform/contactform.js"></script>

        <!-- Template Main Javascript File -->
        <script src="assets/js/main.js"></script>
    </form>
</body>
</html>
