<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageFE.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--========================== Intro Section ============================-->
    <section id="intro" class="clearfix">
        <div class="container d-flex h-100" id="containerIntro">
            <div class="row justify-content-center align-self-center">
                <div class="col-md-6 intro-info order-md-first order-last" id="">
                    <h2>Gen Uni
                        <br>
                        Inizia la tua <span>formazione!</span></h2>
                    <div>
                        <a href="registrazione.aspx" class="btn-get-started scrollto" id="btnIscrivitiIntro">Iscriviti</a>
                    </div>
                </div>

                <div class="col-md-6 intro-img order-md-last order-first">
                    <img src="img/intro-img.png" alt="" class="img-fluid">
                </div>
            </div>
        </div>
    </section>

    <!-- #intro -->

    <%-- 
         &#39;   '
         &#176;  °
         &#224;  à
         &#232;  è
         &#236;  ì
         &#242;  ò
         &#249;  ù
         &#8364; €   
    --%>

    <main id="main">
        <!--========================== About Us Section ============================-->
        <section id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6">
                        <div class="about-img">
                            <img src="img/about-img.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6">
                        <div class="about-content">
                            <h2 id="h2AboutUs">Chi siamo</h2>
                            <h3 id="h3AboutUs">Leader nella formazione in Italia</h3>
                            <p id="pAboutUs">
                                GenUni &#233; un ente autorizzato alla vendita di corsi di formazione riconosciuti dal MIUL.
                                Qualificato all&#39;erogazione e alla gestione di corsi di formazione e-learning, GenUni offre professionalit&#224;, innovazione e seriet&#224;.
                                I titoli conseguiti al termine dei corsi di formazione professionale e aggiornamento, sono validi in Italia e all&#39;estero per:
                            </p>
                            <ul>
                                <li><i class="ion-android-checkmark-circle"></i>La libera professione</li>
                                <li><i class="ion-android-checkmark-circle"></i>L&#39;avanzamento di carriera</li>
                                <li><i class="ion-android-checkmark-circle"></i>I crediti formativi professionali</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- #about -->

        <!--========================== Why Us Section ============================-->
        <section id="why-us" class="wow fadeIn">
            <div class="container-fluid">
                <header class="section-header">
                    <h3>La nostra mission</h3>
                </header>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="why-us-img">
                            <img src="assets/img/why-us.png" alt="" class="img-fluid" style="margin-top: -46px">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="why-us-content">
                            <p class="pMission">Offriamo la possibilit&#224; di svolgere molteplici corsi, sia in ambito informatico che in ambito amministrativo in maniera del tutto innovativa.</p>
                            <p class="pMission">
                                Ti forniremo una preparazione a 360&#176; per aiutarti ad affrontare il percorso lavorativo futuro pi&#249; adatto a te. 
                                Il nostro obiettivo &#232; quello di farti raggiungere un livello di conoscenza adeguato, fornendoti indicatori e strumenti professionali e culturali 
                                affinch&#232; tu possa investirli su te stesso e determinare il tuo successo.
                            </p>
                            <div class="features wow bounceInUp clearfix" style="margin-top: -3px">
                                <img src="img/genMoney2.png" class="iconeMission" />
                                <div class="titoliMission">
                                    <h4>Gen Money</h4>
                                    <p>Commodi quia voluptatum. Est cupiditate voluptas quaerat officiis ex alias dignissimos et ipsum. Soluta at enim modi ut incidunt dolor et.</p>
                                </div>
                            </div>
                            <div class="features wow bounceInUp clearfix">
                                <img src="img/videolezioni.png" class="iconeMission" />
                                <div class="titoliMission">
                                    <h4>Video lezioni</h4>
                                    <p>Molestias eius rerum iusto voluptas et ab cupiditate aut enim. Assumenda animi occaecati. Quo dolore fuga quasi autem aliquid ipsum odit. Perferendis doloremque iure nulla aut.</p>
                                </div>
                            </div>
                            <div class="features wow bounceInUp clearfix">
                                <img src="img/assistenza.png" class="iconeMission" />
                                <div class="titoliMission">
                                    <h4>Supporto</h4>
                                    <p>Voluptates nihil et quis omnis et eaque omnis sint aut. Ducimus dolorum aspernatur. Totam dolores ut enim ullam voluptas distinctio aut.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--========================== Aggiornamento dati Gen Uni ============================-->
            <div class="container">
                <div class="row counters">

                    <div class="col-lg-3 col-6 text-center">
                        <span data-toggle="counter-up">123</span>
                        <p>Studenti</p>
                    </div>

                    <div class="col-lg-3 col-6 text-center">
                        <span data-toggle="counter-up">67</span>
                        <p>Progetti</p>
                    </div>

                    <div class="col-lg-3 col-6 text-center">
                        <span data-toggle="counter-up">364</span>
                        <p>Ore di supporto</p>
                    </div>

                    <div class="col-lg-3 col-6 text-center">
                        <span data-toggle="counter-up">18</span>
                        <p>Progetti importanti</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- #aggiornamento-dati-GenUni -->

        <!--========================== Call To Action Section ============================-->
        <section id="call-to-action" class="wow fadeInUp">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 text-center text-lg-left">
                        <h3 class="cta-title">Attiva la newsletter! </h3>
                        <p class="cta-text">Rimani aggiornato sui corsi gi&#224; attivi e su quelli futuri! Non rimanere indietro, </p>
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                        <a class="cta-btn align-middle" href="#footer">Attiva la newsletter!</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- #call-to-action -->

        <!--========================== Corsi/Portfolio Section ============================-->
        <section id="portfolio" class="section-bg">
            <div class="container">
                <header class="section-header">
                    <h3 class="section-title">I nostri corsi</h3>
                </header>
                <div id="demo" class="carousel slide" data-ride="carousel">
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                    </ul>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="assets/img/code1.png" alt="Los Angeles" width="1100" height="500">
                            <div class="carousel-caption">
                                <a class="linkCorsi" href="/tipologieCorsi.aspx">
                                    <h3 >Corso .NET</h3>
                                    <p>Clicca qui per saperne di pi&#249;</p>
                                </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="assets/img/mysql.png" alt="Chicago" width="1100" height="500">
                            <div class="carousel-caption">
                                <a class="linkCorsi" href="/tipologieCorsi.aspx">
                                    <h3>Corso My SQL</h3>
                                    <p>Clicca qui per saperne di pi&#249;</p>
                                </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="assets/img/javascript.png" alt="New York" width="1100" height="500">
                            <div class="carousel-caption">
                                <a class="linkCorsi" href="/tipologieCorsi.aspx">
                                    <h3>Corso Javascript</h3>
                                    <p>Clicca qui per saperne di pi&#249;</p>
                                </a>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>
            </div>
        </section>
        <!-- #portfolio -->

        <!--========================== Team Section ============================-->
        <section id="team" class="section-bg">
            <div class="container">
                <div class="section-header">
                    <h3>Docenti</h3>
                    <p>Il nostro team docenti &#232; pronto a prepararti al mondo del lavoro</p>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6 wow fadeInUp">
                        <div class="member">
                            <img src="img/team-1.jpg" class="img-fluid" alt="">
                            <div class="member-info">
                                <div class="member-info-content">
                                    <h4>Roberto Ciliento</h4>
                                    <span>Chief Executive Officer</span>
                                    <div class="social">
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="member">
                            <img src="img/team-2.jpg" class="img-fluid" alt="">
                            <div class="member-info">
                                <div class="member-info-content">
                                    <h4>Anna Vizitiu</h4>
                                    <span>Product Manager</span>
                                    <div class="social">
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="member">
                            <img src="img/team-3.jpg" class="img-fluid" alt="">
                            <div class="member-info">
                                <div class="member-info-content">
                                    <h4>Roberto Boemio</h4>
                                    <span>CTO</span>
                                    <div class="social">
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="member">
                            <img src="img/team-4.jpg" class="img-fluid" alt="">
                            <div class="member-info">
                                <div class="member-info-content">
                                    <h4>Raffaella Cioffi</h4>
                                    <span>Accountant</span>
                                    <div class="social">
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!-- #team -->

        <!--========================== Gen Money/Pricing Section ============================-->
        <section id="pricing" class="wow fadeInUp section-bg">

            <div class="container">

                <header class="section-header">
                    <h3>GenMoney</h3>
                    <p>Scegli il pacchetto che fa per te ed acquista i GenMoney per avere accesso ai nostri corsi!</p>
                </header>

                <div class="row flex-items-xs-middle flex-items-xs-center">

                    <!-- Basic Plan  -->
                    <div class="col-xs-12 col-lg-4">
                        <div class="card">
                            <div class="card-header">
                                <h3><span class="currency">
                                    <img src="img/genMoney2.png" class="iconeMoney" />
                                </span>50<span class="period"></span></h3>
                            </div>
                            <div class="card-block">
                                <h4 class="card-title">&#8364250
                                </h4>
                                <ul class="list-group">
                                    <li class="list-group-item">Possibilit&#224; di accesso a 1 corso</li>
                                    <li class="list-group-item">Inventore quisquam et</li>
                                    <li class="list-group-item">Et perspiciatis suscipit</li>
                                    <li class="list-group-item">24/7 Support System</li>
                                </ul>
                                <a href="#" class="btn">Iscriviti</a>
                            </div>
                        </div>
                    </div>

                    <!-- Regular Plan  -->
                    <div class="col-xs-12 col-lg-4">
                        <div class="card">
                            <div class="card-header">
                                <h3><span class="currency">
                                    <img src="img/genMoney2.png" class="iconeMoney" />
                                </span>100<span class="period"></span></h3>
                            </div>
                            <div class="card-block">
                                <h4 class="card-title">&#8364500
                                </h4>
                                <ul class="list-group">
                                    <li class="list-group-item">Odio animi voluptates</li>
                                    <li class="list-group-item">Inventore quisquam et</li>
                                    <li class="list-group-item">Et perspiciatis suscipit</li>
                                    <li class="list-group-item">24/7 Support System</li>
                                </ul>
                                <a href="#" class="btn">Iscriviti</a>
                            </div>
                        </div>
                    </div>

                    <!-- Premium Plan  -->
                    <div class="col-xs-12 col-lg-4">
                        <div class="card">
                            <div class="card-header">
                                <h3><span class="currency">
                                    <img src="img/genMoney2.png" class="iconeMoney" />
                                </span>200<span class="period"></span></h3>
                            </div>
                            <div class="card-block">
                                <h4 class="card-title">&#83641000
                                </h4>
                                <ul class="list-group">
                                    <li class="list-group-item">Odio animi voluptates</li>
                                    <li class="list-group-item">Inventore quisquam et</li>
                                    <li class="list-group-item">Et perspiciatis suscipit</li>
                                    <li class="list-group-item">24/7 Support System</li>
                                </ul>
                                <a href="#" class="btn">Iscriviti</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- #pricing -->

        <!--========================== Frequently Asked Questions Section ============================-->
        <section id="faq">
            <div class="container">
                <header class="section-header">
                    <h3>Domande pi&#249; frequenti</h3>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
                </header>

                <ul id="faq-list" class="wow fadeInUp">
                    <li>
                        <a data-toggle="collapse" class="collapsed" href="#faq1">Non consectetur a erat nam at lectus urna duis? <i class="ion-android-remove"></i></a>
                        <div id="faq1" class="collapse" data-parent="#faq-list">
                            <p>
                                Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non.
                            </p>
                        </div>
                    </li>

                    <li>
                        <a data-toggle="collapse" href="#faq2" class="collapsed">Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque? <i class="ion-android-remove"></i></a>
                        <div id="faq2" class="collapse" data-parent="#faq-list">
                            <p>
                                Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
                            </p>
                        </div>
                    </li>

                    <li>
                        <a data-toggle="collapse" href="#faq3" class="collapsed">Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi? <i class="ion-android-remove"></i></a>
                        <div id="faq3" class="collapse" data-parent="#faq-list">
                            <p>
                                Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna molestie at elementum eu facilisis sed odio morbi quis
                            </p>
                        </div>
                    </li>

                    <li>
                        <a data-toggle="collapse" href="#faq4" class="collapsed">Ac odio tempor orci dapibus. Aliquam eleifend mi in nulla? <i class="ion-android-remove"></i></a>
                        <div id="faq4" class="collapse" data-parent="#faq-list">
                            <p>
                                Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
                            </p>
                        </div>
                    </li>

                    <li>
                        <a data-toggle="collapse" href="#faq5" class="collapsed">Tempus quam pellentesque nec nam aliquam sem et tortor consequat? <i class="ion-android-remove"></i></a>
                        <div id="faq5" class="collapse" data-parent="#faq-list">
                            <p>
                                Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in
                            </p>
                        </div>
                    </li>

                    <li>
                        <a data-toggle="collapse" href="#faq6" class="collapsed">Tortor vitae purus faucibus ornare. Varius vel pharetra vel turpis nunc eget lorem dolor? <i class="ion-android-remove"></i></a>
                        <div id="faq6" class="collapse" data-parent="#faq-list">
                            <p>
                                Laoreet sit amet cursus sit amet dictum sit amet justo. Mauris vitae ultricies leo integer malesuada nunc vel. Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget lorem dolor sed. Ut venenatis tellus in metus vulputate eu scelerisque. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nibh tellus molestie nunc non blandit massa enim nec.
                            </p>
                        </div>
                    </li>

                </ul>

            </div>
        </section>
    </main>
    <!-- #faq -->

    <!--========================== Footer ============================-->
    <footer id="footer" class="section-bg">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="footer-info">
                                    <h3>Gen Uni</h3>
                                    <p>
                                        La prima accademia di corsi online in ambito coding dove poter imparare a programmare con i principali linguaggi di programmazione, anche da zero.Grazie ai percorsi formativi verrai guidato passo passo fino ad apprendere le competenze delle principali figure professionali, come programmatore web (front-end, back-end o full stack), mobile developer, web designer, ui/ux designer, data scientist e molto altro.
                                    </p>
                                </div>

                                <div class="footer-newsletter">
                                    <h4>La nostra newsletter</h4>
                                    <p>Vuoi pi&#249; informazioni? Iscriviti alla nostra newsletter e riceverai aggiornamenti costanti sui nostri corsi!</p>
                                    <asp:TextBox ID="txtEmail" CssClass="" placeholder="E-mail" runat="server" TextMode="Email"></asp:TextBox>
                                    <asp:Button ID="btnIscrivitiNews" runat="server" Text="Iscriviti alla newsletter!" OnClick="btnIscrivitiNews_Click" />
                                    <asp:CheckBox ID="chbxPrivacy" runat="server" AutoPostBack="False" />Autorizzo al trattamento dei miei dati personali a scopo di marketing.
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="footer-links">
                                    <h4>Link utili</h4>
                                    <ul>
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">Chi siamo</a></li>
                                        <li><a href="#">Corsi</a></li>
                                        <li><a href="LoginCopia.aspx">Termini di servizio</a></li>
                                        <li><a href="../BEAdmin/GestioneCorsi.aspx">Privacy policy</a></li>
                                    </ul>
                                </div>

                                <div class="footer-links">
                                    <h4>Contattaci</h4>
                                    <p>
                                        Via Livenza,6
                                            <br>
                                        Roma, RM 07318<br>
                                        Italia
                                            <br>
                                        <strong>Telefono:</strong> +06 55488 55<br>
                                        <strong>Email:</strong> info@genuni.com<br>
                                        <strong>P.IVA:</strong> 86334519757
                                        <br>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Form "Lavora con noi" -->
                    <div class="col-lg-6">
                        <div class="form">
                            <img src="assets/img/docente_genUni.jpg" id="imgDocenteLavoraConNoi" alt="Lavora con noi">
                            <h4>Lavora con noi, diventa un docente!</h4>
                            <p>Registrati ed invia la tua candidatura per poter diventare un insegnante ed entrare nel nostro team!</p>
                            <asp:Button ID="btnCandidati" class="btn" runat="server" Text="Candidati" OnClick="btnCandidati_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- COPYRIGHT -->
        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong>GenUni</strong>. All Rights Reserved
            </div>
            <div class="credits">
                Designed by GenUni
            </div>
        </div>
    </footer>
    <!-- #footer -->

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
