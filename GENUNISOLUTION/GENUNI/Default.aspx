<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageFE.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--========================== Intro Section ============================-->

    Intro Section
  ============================-->
    <section id="intro" class="clearfix">
        <div class="container d-flex h-100" id="containerIntro">
            <div class="row justify-content-center align-self-center">
                <div class="col-md-6 intro-info order-md-first order-last">
                    <h2>Gen Uni
                        <br>
                        Inizia la tua <span>formazione!</span></h2>
                    <div>
                        <a href="#about" class="btn-get-started scrollto">Iscriviti</a>
                    </div>
                </div>

                <div class="col-md-6 intro-img order-md-last order-first">
                    <img src="img/intro-img.png" alt="" class="img-fluid">
                </div>
            </div>

        </div>
    </section>
    <!-- #intro -->

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
                            <h2>Chi siamo</h2>
                            <h3>Leader nella formazione in Italia</h3>
                            <p>
                                GenUni è un ente autorizzato alla vendita di corsi di formazione riconosciuti dal MIUL.
                                    Qualificato all’erogazione e alla gestione di corsi di formazione e-learning, GenUni offre professionalità, innovazione e serietà.
                                    I titoli conseguiti al termine dei corsi di formazione professionale e aggiornamento, sono validi in Italia e all’estero per:
                            </p>
                            <ul>
                                <li><i class="ion-android-checkmark-circle"></i>la libera professione,</li>
                                <li><i class="ion-android-checkmark-circle"></i>l’avanzamento di carriera,</li>
                                <li><i class="ion-android-checkmark-circle"></i>i crediti formativi professionali</li>
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
                            <img src="img/why-us.jpg" alt="" class="img-fluid">
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="why-us-content">
                            <p>Offriamo la possibilità di svolgere molteplici corsi, sia in ambito informatico che in ambito amministrativo in maniera del tutto innovativa.</p>
                            <p>
                                Ti forniremo una preparazione a 360° per aiutarti ad affrontare il percorso lavorativo futuro più adatto a te. 
                                Il nostro obiettivo è quello di farti raggiungere un livello di conoscenza adeguato, fornendoti indicatori e strumenti professionali e culturali 
                                affinchè tu possa investirli su te stesso e determinare il tuo successo.
                            </p>
                            <div class="features wow bounceInUp clearfix">
                                <img src="img/dunkey1.png" class="iconeMission" />
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

        <!--========================== Call To Action Section ============================-->
        <section id="call-to-action" class="wow fadeInUp">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 text-center text-lg-left">
                        <h3 class="cta-title">Attiva la newsletter! </h3>
                        <p class="cta-text">Rimani aggiornati sui corsi già attivi e su quelli futuri! Non rimanere indietro, </p>
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                        <a class="cta-btn align-middle" href="#">Attiva la newsletter!</a>
                    </div>
                </div>

            </div>
        </section>
        <!-- #call-to-action -->

        <!--========================== Features Section ============================-->
        <%-- <section id="features">
            <div class="container">

                <div class="row feature-item">
                    <div class="col-lg-6 wow fadeInUp">
                        <img src="img/features-1.svg" class="img-fluid" alt="">
                    </div>
                    <div class="col-lg-6 wow fadeInUp pt-5 pt-lg-0">
                        <h4>Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.</h4>
                        <p>
                            Ipsum in aspernatur ut possimus sint. Quia omnis est occaecati possimus ea. Quas molestiae perspiciatis occaecati qui rerum. Deleniti quod porro sed quisquam saepe. Numquam mollitia recusandae non ad at et a.
                        </p>
                        <p>
                            Ad vitae recusandae odit possimus. Quaerat cum ipsum corrupti. Odit qui asperiores ea corporis deserunt veritatis quidem expedita perferendis. Qui rerum eligendi ex doloribus quia sit. Porro rerum eum eum.
                        </p>
                    </div>
                </div>

                <div class="row feature-item mt-5 pt-5">
                    <div class="col-lg-6 wow fadeInUp order-1 order-lg-2">
                        <img src="img/features-2.svg" class="img-fluid" alt="">
                    </div>

                    <div class="col-lg-6 wow fadeInUp pt-4 pt-lg-0 order-2 order-lg-1">
                        <h4>Neque saepe temporibus repellat ea ipsum et. Id vel et quia tempora facere reprehenderit.</h4>
                        <p>
                            Delectus alias ut incidunt delectus nam placeat in consequatur. Sed cupiditate quia ea quis. Voluptas nemo qui aut distinctio. Cumque fugit earum est quam officiis numquam. Ducimus corporis autem at blanditiis beatae incidunt sunt. 
                        </p>
                        <p>
                            Voluptas saepe natus quidem blanditiis. Non sunt impedit voluptas mollitia beatae. Qui esse molestias. Laudantium libero nisi vitae debitis. Dolorem cupiditate est perferendis iusto.
                        </p>
                        <p>
                            Eum quia in. Magni quas ipsum a. Quis ex voluptatem inventore sint quia modi. Numquam est aut fuga mollitia exercitationem nam accusantium provident quia.
                        </p>
                    </div>

                </div>

            </div>
        </section>
        <!-- #about -->--%>

        <!--========================== Portfolio Section ============================-->
        <section id="portfolio" class="section-bg">
            <div class="container">

                <header class="section-header">
                    <h3 class="section-title">I nostri corsi</h3>
                </header>

                <div class="row">
                    <div class="col-lg-12">
                        <ul id="portfolio-flters">
                            <li data-filter="*" class="filter-active">Tutti i corsi</li>
                            <li data-filter=".filter-app">Corsi attivi</li>
                            <li data-filter=".filter-card">Corsi previsti</li>
                        </ul>
                    </div>
                </div>

                <div class="row portfolio-container">

                    <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                        <div class="portfolio-wrap">
                            <img src="img/portfolio/app1.jpg" class="img-fluid" alt="">
                            <div class="portfolio-info">
                                <h4><a href="#">Data analyst</a></h4>
                                <p>Data</p>
                                <div>
                                    <a href="img/portfolio/app1.jpg" data-lightbox="portfolio" data-title="App 1" class="link-preview" title="Preview"><i class="ion ion-eye"></i></a>
                                    <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-web" data-wow-delay="0.1s">
                        <div class="portfolio-wrap">
                            <img src="img/portfolio/web3.jpg" class="img-fluid" alt="">
                            <div class="portfolio-info">
                                <h4><a href="#">Cloud specialist</a></h4>
                                <p>Web</p>
                                <div>
                                    <a href="img/portfolio/web3.jpg" class="link-preview" data-lightbox="portfolio" data-title="Web 3" title="Preview"><i class="ion ion-eye"></i></a>
                                    <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-app" data-wow-delay="0.2s">
                        <div class="portfolio-wrap">
                            <img src="img/portfolio/app2.jpg" class="img-fluid" alt="">
                            <div class="portfolio-info">
                                <h4><a href="#">Sviluppatore Java</a></h4>
                                <p>Java</p>
                                <div>
                                    <a href="img/portfolio/app2.jpg" class="link-preview" data-lightbox="portfolio" data-title="App 2" title="Preview"><i class="ion ion-eye"></i></a>
                                    <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                        <div class="portfolio-wrap">
                            <img src="img/portfolio/card2.jpg" class="img-fluid" alt="">
                            <div class="portfolio-info">
                                <h4><a href="#">Sviluppatore .Net</a></h4>
                                <p>.Net</p>
                                <div>
                                    <a href="img/portfolio/card2.jpg" class="link-preview" data-lightbox="portfolio" data-title="Card 2" title="Preview"><i class="ion ion-eye"></i></a>
                                    <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-web" data-wow-delay="0.1s">
                        <div class="portfolio-wrap">
                            <img src="img/portfolio/web2.jpg" class="img-fluid" alt="">
                            <div class="portfolio-info">
                                <h4><a href="#">System and Cybersecurity analys</a></h4>
                                <p>System and Cybersecurity</p>
                                <div>
                                    <a href="img/portfolio/web2.jpg" class="link-preview" data-lightbox="portfolio" data-title="Web 2" title="Preview"><i class="ion ion-eye"></i></a>
                                    <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-app" data-wow-delay="0.2s">
                        <div class="portfolio-wrap">
                            <img src="img/portfolio/app3.jpg" class="img-fluid" alt="">
                            <div class="portfolio-info">
                                <h4><a href="#">Sviluppatore Software Saleforce</a></h4>
                                <p>Software</p>
                                <div>
                                    <a href="img/portfolio/app3.jpg" class="link-preview" data-lightbox="portfolio" data-title="App 3" title="Preview"><i class="ion ion-eye"></i></a>
                                    <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                        <div class="portfolio-wrap">
                            <img src="img/portfolio/card1.jpg" class="img-fluid" alt="">
                            <div class="portfolio-info">
                                <h4><a href="#">Card 1</a></h4>
                                <p>Card</p>
                                <div>
                                    <a href="img/portfolio/card1.jpg" class="link-preview" data-lightbox="portfolio" data-title="Card 1" title="Preview"><i class="ion ion-eye"></i></a>
                                    <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-card" data-wow-delay="0.1s">
                        <div class="portfolio-wrap">
                            <img src="img/portfolio/card3.jpg" class="img-fluid" alt="">
                            <div class="portfolio-info">
                                <h4><a href="#">Food&Bevarage</a></h4>
                                <p>Card</p>
                                <div>
                                    <a href="img/portfolio/card3.jpg" class="link-preview" data-lightbox="portfolio" data-title="Card 3" title="Preview"><i class="ion ion-eye"></i></a>
                                    <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-web" data-wow-delay="0.2s">
                        <div class="portfolio-wrap">
                            <img src="img/portfolio/web1.jpg" class="img-fluid" alt="">
                            <div class="portfolio-info">
                                <h4><a href="#">Addetto alle vendite</a></h4>
                                <p>Sales</p>
                                <div>
                                    <a href="img/portfolio/web1.jpg" class="link-preview" data-lightbox="portfolio" data-title="Web 1" title="Preview"><i class="ion ion-eye"></i></a>
                                    <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!-- #portfolio -->

        <!--========================== Team Section ============================-->
        <section id="team" class="section-bg">
            <div class="container">
                <div class="section-header">
                    <h3>Docenti</h3>
                    <p>Il nostro team docenti è pronto a prepararti al mondo del lavoro</p>
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
                                        <a href=""><i class="fa fa-twitter"></i></a>
                                        <a href=""><i class="fa fa-facebook"></i></a>
                                        <a href=""><i class="fa fa-google-plus"></i></a>
                                        <a href=""><i class="fa fa-linkedin"></i></a>
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
                                        <a href=""><i class="fa fa-twitter"></i></a>
                                        <a href=""><i class="fa fa-facebook"></i></a>
                                        <a href=""><i class="fa fa-google-plus"></i></a>
                                        <a href=""><i class="fa fa-linkedin"></i></a>
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
                                    <h4>Alessio Voltolini</h4>
                                    <span>CTO</span>
                                    <div class="social">
                                        <a href=""><i class="fa fa-twitter"></i></a>
                                        <a href=""><i class="fa fa-facebook"></i></a>
                                        <a href=""><i class="fa fa-google-plus"></i></a>
                                        <a href=""><i class="fa fa-linkedin"></i></a>
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
                                    <h4>Roberto Boemio</h4>
                                    <span>Accountant</span>
                                    <div class="social">
                                        <a href=""><i class="fa fa-twitter"></i></a>
                                        <a href=""><i class="fa fa-facebook"></i></a>
                                        <a href=""><i class="fa fa-google-plus"></i></a>
                                        <a href=""><i class="fa fa-linkedin"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!-- #team -->


        <!--========================== Pricing Section ============================-->
        <section id="pricing" class="wow fadeInUp section-bg">

            <div class="container">

                <header class="section-header">
                    <h3>Abbonamenti corsi</h3>
                    <p>Scegli il pacchetto che fa per te ed acquista i GenMoney per avere accesso ai nostri corsi!</p>
                </header>

                <div class="row flex-items-xs-middle flex-items-xs-center">

                    <!-- Basic Plan  -->
                    <div class="col-xs-12 col-lg-4">
                        <div class="card">
                            <div class="card-header">
                                <h3><span class="currency">
                                    <img src="img/dunkey1.png" class="iconeMoney" />
                                </span>50<span class="period">/mese</span></h3>
                            </div>
                            <div class="card-block">
                                <h4 class="card-title">Piano base
                                </h4>
                                <ul class="list-group">
                                    <li class="list-group-item">Possibilità di accesso a 1 corso</li>
                                    <li class="list-group-item">Inventore quisquam et</li>
                                    <li class="list-group-item">Et perspiciatis suscipit</li>
                                    <li class="list-group-item">24/7 Support System</li>
                                </ul>
                                <a href="#" class="btn">Acquista</a>
                            </div>
                        </div>
                    </div>

                    <!-- Regular Plan  -->
                    <div class="col-xs-12 col-lg-4">
                        <div class="card">
                            <div class="card-header">
                                <h3><span class="currency">
                                    <img src="img/dunkey1.png" class="iconeMoney" />
                                </span>100<span class="period">/mese</span></h3>
                            </div>
                            <div class="card-block">
                                <h4 class="card-title">Piano medio
                                </h4>
                                <ul class="list-group">
                                    <li class="list-group-item">Odio animi voluptates</li>
                                    <li class="list-group-item">Inventore quisquam et</li>
                                    <li class="list-group-item">Et perspiciatis suscipit</li>
                                    <li class="list-group-item">24/7 Support System</li>
                                </ul>
                                <a href="#" class="btn">Acquista</a>
                            </div>
                        </div>
                    </div>

                    <!-- Premium Plan  -->
                    <div class="col-xs-12 col-lg-4">
                        <div class="card">
                            <div class="card-header">
                                <h3><span class="currency">
                                    <img src="img/dunkey1.png" class="iconeMoney" />
                                </span>150<span class="period">/mese</span></h3>
                            </div>
                            <div class="card-block">
                                <h4 class="card-title">Piano Premium
                                </h4>
                                <ul class="list-group">
                                    <li class="list-group-item">Odio animi voluptates</li>
                                    <li class="list-group-item">Inventore quisquam et</li>
                                    <li class="list-group-item">Et perspiciatis suscipit</li>
                                    <li class="list-group-item">24/7 Support System</li>
                                </ul>
                                <a href="#" class="btn">Acquista</a>
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
                    <h3>Domande più frequenti</h3>
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
        <!-- #faq -->

    </main>

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
                                        è la prima accademia di corsi online in ambito coding dove poter imparare a programmare con i principali linguaggi di programmazione, anche da zero.Grazie ai percorsi formativi verrai guidato passo passo fino ad apprendere le competenze delle principali figure professionali, come programmatore web (front-end, back-end o full stack), mobile developer, web designer, ui/ux designer, data scientist e molto altro.
                                    </p>
                                </div>

                                <div class="footer-newsletter">
                                    <h4>La nostra newsletter</h4>
                                    <p>Vuoi più informazioni? Iscriviti alla nostra newsletter e riceverai aggiornamenti costanti sui nostri corsi!</p>
                                    <form action="" method="post">
                                        <input type="email" name="email" placeholder="E-mail"><input type="submit" value="Iscriviti">
                                    </form>
                                </div>

                            </div>

                            <div class="col-sm-6">
                                <div class="footer-links">
                                    <h4>Link utili</h4>
                                    <ul>
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">Chi siamo</a></li>
                                        <li><a href="#">Corsi</a></li>
                                        <li><a href="#">Termini di servizio</a></li>
                                        <li><a href="#">Privacy policy</a></li>
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
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">

                        <div class="form">

                            <h4>Lavora con noi, diventa un docente!</h4>
                            <p>Inserisci i tuoi dati e invia la candidatura per poter diventare un insegnante!</p>
                            <form action="" method="post" role="form" class="contactForm">
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control" id="name" placeholder="Nome" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="E-mail" data-rule="email" data-msg="Please enter a valid email" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblCv" runat="server" Text="Inserisci il tuo Curriculum Vitae"></asp:Label>
                                    <asp:FileUpload ID="cvUpload" class="form-control" runat="server" />
                                    <%-- <input type="text" class="form-control" name="subject" id="subject" placeholder="Inserisci il tuo cv" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />--%>
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <%-- <asp:DropDownList ID="ddlCorsi" class="form-control" runat="server"></asp:DropDownList>--%>
                                    <%--<textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Dropdown" placeholder="Message"></textarea>--%>
                                    <div class="validation"></div>
                                </div>
                                <div id="sendmessage">Il tuo messaggio è stato inviato!</div>
                                <div id="errormessage"></div>
                                <div class="text-center">
                                    <button type="submit" title="Send Message">Invia messaggio</button>
                                </div>
                            </form>
                        </div>

                    </div>



                </div>

            </div>
        </div>

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
</asp:Content>

