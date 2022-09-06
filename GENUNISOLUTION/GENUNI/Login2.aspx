<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageFE.master" AutoEventWireup="true" CodeFile="Login2.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
    <!-- Main Stylesheet File -->
    <%--<link href="assets/css/style.css" rel="stylesheet" />--%>
    <link href="assets/css/scss-files.txt" rel="stylesheet" />
    <link href="assets/css/style_login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="services" class="section-bg">
        <div class="container">
            <header class="section-header">
                <div class="cont" style="zoom: 77%; margin-top: 11px;">
                    <div class="form sign-in">
                        <h2 class="h2Login">ACCEDI</h2>
                       <img src="assets/img/genLoginImg.png" id="genLoginImg" />
                        <%--<img src="assets/img/genGif.gif" id="genLoginImg"/>--%>
                        <table>
                            <tr>
                                <td>
                                    <label>
                                        <span>EMAIL</span>
                                        <input type="email" />
                                    </label>
                                </td>
                                <td>
                                    <label>
                                        <span>PASSWORD</span>
                                        <input type="password" />
                                    </label>
                                </td>
                            </tr>
                        </table>
                        <p class="forgot-pass" href="Default.aspx">Torna alla Home</p>
                        <button type="button" id="accediLogin" class="submit">Accedi</button>
                    </div>
                    <div class="sub-cont">
                        <div class="img">
                            <div class="img__text m--up">
                                <img src="img/logo.png" id="logoSignIn" />
                                <div class="h3Login">Non hai ancora un account? Iscriviti!</div>
                            </div>
                            <div class="img__text m--in">
                                <img src="img/logo.png" id="logoSignUp" />
                                <div class="h3Login">Se hai già un account fai il login</div>
                            </div>
                            <div class="img__btn">
                                <span class="m--up">Iscriviti</span>
                                <span class="m--in">Login</span>
                            </div>
                        </div>
                        <div class="form sign-up">
                            <h2 class="h2Login">Crea un account</h2>
                            <div id="h3SceltaLogin">Sei uno studente o un docente?</div>
                            <table id="tableScetaLogin">
                                <tr>
                                    <td>
                                        <label>
                                            <span>Studente</span>
                                            <asp:RadioButton ID="rdbStudente" Checked="true" runat="server" />
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            <span>Docente</span>
                                            <asp:RadioButton ID="rdbDocente" runat="server" />
                                        </label>
                                    </td>
                                </tr>
                            </table>
                            <table id="tableSignUp">
                                <tr>
                                    <td>
                                        <label>
                                            <span>Email</span>
                                            <input type="email" />
                                        </label>
                                        <label>
                                            <span>Nome</span>
                                            <input type="text" />
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            <span>Password</span>
                                            <input type="password" />
                                        </label>
                                        <label>
                                            <span>Cognome</span>
                                            <input type="text" />
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>
                                            <span>Ragione sociale</span>
                                            <input type="text" />
                                        </label>
                                        <label>
                                            <span>Data di nascita</span>
                                            <input type="date" />
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            <span>Partita Iva</span>
                                            <input type="text" />
                                        </label>
                                        <label>
                                            <span>Codice Fiscale</span>
                                            <input type="text" />
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>
                                            <span>Indirizzo</span>
                                            <input type="text" />
                                        </label>
                                        <label>
                                            <span>Provincia</span>
                                            <input type="text" />
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            <span>Città</span>
                                            <input type="text" />
                                        </label>
                                        <label>
                                            <span>Nazione</span>
                                            <input type="text" />
                                        </label>
                                    </td>
                                </tr>
                            </table>
                            <button type="button" class="submit">Registrati</button>
                        </div>
                    </div>
                </div>
                <script>
                    document.querySelector('.img__btn').addEventListener('click', function () {
                        document.querySelector('.cont').classList.toggle('s--signup');
                    });
                </script>
            </header>
        </div>
    </section>

    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

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

    <!-- Main Javascript File -->
    <script src="assets/js/main.js"></script>
</asp:Content>
