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
                        Inizia la tua <span>formazione!</span>
                    </h2>
                    <h3 id="introDescrizione">La prima accademia di corsi online dove puoi iniziare il tuo percorso di formazione in qualsiasi ambito tu voglia specializzarti, anche da zero!</h3>
                    <br />
                    <h4>Grazie ai nostri percorsi formativi verrai guidato passo dopo passo e supportato 24/7 da un team di tutor e docenti esperti che ti permetteranno di apprendere tutte le competenze necessarie per svolgere qualsiasi tipo di professione tu stia ricercando.
                    </h4>
                    <div>
                        <a href="Login.aspx?status=1" class="btn-get-started scrollto" id="btnIscrivitiIntro">Iscriviti ai nostri corsi!</a>
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
                            <img src="img/aboutus1.png" alt="">
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6">
                        <div class="about-content">
                            <h2 id="h2AboutUs">Chi siamo</h2>
                            <h3 id="h3AboutUs">Leader nella formazione in Italia</h3>
                            <p class="pAboutUs">
                                Gen Uni &#233; un ente autorizzato alla vendita di corsi di formazione riconosciuti dai maggiori enti professionali.
                                Qualificato all&#39;erogazione e alla gestione di corsi di formazione e-learning, GenUni offre professionalit&#224;, innovazione e seriet&#224;.
                                I titoli conseguiti al termine dei corsi di formazione professionale e aggiornamento, sono validi in Italia e all&#39;estero per:
                            </p>
                            <ul>
                                <li><i class="ion-android-checkmark-circle"></i>La libera professione</li>
                                <li><i class="ion-android-checkmark-circle"></i>L&#39;avanzamento di carriera</li>
                                <li><i class="ion-android-checkmark-circle"></i>I crediti formativi professionali</li>
                            </ul>
                            <p class="pAboutUs">
                                Molto di pi&#249 di normale corso di e-learning, la nostra academy &#232 innovativa!
                                Entrare in Gen Uni ti permetter&#224 di poter interagire costantemente con il docente e con gli altri partecipanti, oltre alla possibilit&#224 di essere seguito da tutor esperti in qualsiasi momento tu voglia.

                            </p>

                            <pp class="pAboutUs">
                                Anche le modalit&#224 di accesso ai corsi sono del tutto innovative! Ti baster&#224 acquistare i nostri pacchetti di GenMoney, per avere la possibilit&#224 di accedere a qualsiasi nostro corso e a tutte le offerte a te dedicate. Scopri cosa sono i GenMoney e come poterli utilizzare continuando a visitare il nostro sito o cliccando sul link GenMoney in alto!
                            </pp>
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
                            <img src="assets/img/why-us.png" alt="" class="img-fluid" style="margin-top: -24px; width: 493px; margin-left: 55px;">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="why-us-content">
                            <p class="pMission">Offriamo la possibilit&#224; di svolgere molteplici corsi in svariati ambiti: informatico, amministrativo, culinario, cura personale, ecc. in maniera del tutto innovativa.</p>
                            <p class="pMission">
                                Ti forniremo una preparazione a 360&#176; per aiutarti ad affrontare il percorso lavorativo futuro pi&#249; adatto a te. 
                                Il nostro obiettivo &#232; quello di farti raggiungere un livello di conoscenza adeguato, fornendoti indicatori e strumenti professionali e culturali 
                                affinch&#232; tu possa investirli su te stesso e determinare il tuo successo. Oltre alle lezioni teoriche, forniamo anche lezioni pratiche ma soprattutto lezioni di soft-skills per permetterti di relazionarti e aprirti al meglio al mondo del lavoro.
                            </p>
                            <div class="features wow bounceInUp clearfix" style="margin-top: 18px; visibility: visible; animation-name: bounceInUp; font-size: 22px;">
                                <img src="assets/img/genMoney2.png" class="iconeMission" />
                                <div class="titoliMission">
                                    <h4>Gen Money</h4>
                                    <p class="pMissionInterni">I GenMoney sono il nostro metodo di pagamento, token utilizzabili nella nostra accademia volti all'acquisto dei vari corsi che ti proponiamo.</p>
                                </div>
                            </div>
                            <div class="features wow bounceInUp clearfix">
                                <img src="assets/img/videolezioni.png" class="iconeMission" />
                                <div class="titoliMission">
                                    <h4>Video lezioni</h4>
                                    <p class="pMissionInterni">I corsi si svolgono totalmente online tramite le nostri video lezioni, dandoti la possibilit&#224 di seguirci ovunque tu sia e fornendoti tutto il supporto di cui hai bisogno.</p>
                                </div>
                            </div>
                            <div class="features wow bounceInUp clearfix">
                                <img src="assets/img/assistenza.png" class="iconeMission" />
                                <div class="titoliMission">
                                    <h4>Supporto</h4>
                                    <p class="pMissionInterni">
                                        I nostri docenti e tutor sono a tua disposizione per qualunque esigenza riguardante il tuo percorso in accademia, non solo tramite mail e contatti personali, ma anche grazie alla nostra chat attiva 24/7 per darti tutto l'appoggio di cui necessiti in ogni momento!</pc>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--========================== Aggiornamento dati Gen Uni ============================-->
            <div class="container">
                <div class="row counters">
                    <div class="col-lg-custom col-custom text-center">
                        <%-- logica contatore commentata aspettando l'aggiornamento del ws/classe--%>
                        <asp:Label ID="lblContoStudenti" runat="server" Text=""></asp:Label>
                        <p>Studenti</p>
                    </div>
                    <div class="col-lg-custom col-custom text-center">
                        <asp:Label ID="lblContoDocenti" runat="server" Text=""></asp:Label>
                        <p>Docenti</p>
                    </div>
                    <div class="col-lg-custom col-custom text-center">
                        <asp:Label ID="lblContoCorsi" runat="server" Text=""></asp:Label>
                        <p>Corsi</p>
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
                <div id="demo" class="carousel slide" data-ride="carousel" style="width: 80%; margin-left: 113px; margin-bottom: -26px;">
                    <ul class="carousel-indicators" style="padding-left: 102px;">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                    </ul>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="img/dotnet.png" alt="DotNet" width="1100" height="500">
                            <div class="carousel-caption" style="left: 13%; bottom: 17px;">
                                <a class="linkCorsi" href="CorsiFE.aspx">
                                    <h3>Corso .NET</h3>
                                    <p>Clicca qui per saperne di pi&#249;</p>
                                </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="img/mysql.png" alt="MySQL" width="1100" height="500">
                            <div class="carousel-caption" style="left: 13%; bottom: 17px;">
                                <a class="linkCorsi" href="CorsiFE.aspx">
                                    <h3>Corso My SQL</h3>
                                    <p>Clicca qui per saperne di pi&#249;</p>
                                </a>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="img/ristouni5.png" alt="Javascript" width="1100" height="500">
                            <div class="carousel-caption" style="left: 13%; bottom: 17px;">
                                <a class="linkCorsi" href="CorsiFE.aspx">
                                    <h3>Corso di Cucina Italiana tradizionale</h3>
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
                            <img src="img/vittorio2.jpg" class="img-fluid" alt="">
                            <div class="member-info">
                                <div class="member-info-content">
                                    <h4>Vittorio Boemio</h4>
                                    <span>Docente di Informatica</span>
                                    <div class="social">
                                        <%--<a href="#"><i class="fa fa-twitter"></i></a>
                                        <%--<a href="#"><i class="fa fa-facebook"></i></a>--%>
                                        <%--<a href="#"><i class="fa fa-google-plus"></i></a>--%>
                                        <a href="https://www.linkedin.com/in/vittoriomattiaboemio/"><i class="fa fa-linkedin"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="member">
                            <img src="img/roberton2.jpg" class="img-fluid" alt="">
                            <div class="member-info">
                                <div class="member-info-content">
                                    <h4>Roberto Ninno</h4>
                                    <span>Docente Bartending</span>
                                    <div class="social">
                                        <%--<a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>--%>
                                        <a href="https://www.linkedin.com/in/roberto-ninno-887793244/"><i class="fa fa-linkedin"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="member">
                            <img src="img/fabio2.jpg" class="img-fluid" alt="">
                            <div class="member-info">
                                <div class="member-info-content">
                                    <h4>Fabio Ghidella</h4>
                                    <span>Docente di soft-skills</span>
                                    <div class="social">
                                        <%--<a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>--%>
                                        <a href="https://www.linkedin.com/in/fabio-ghidella/"><i class="fa fa-linkedin"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="member">
                            <img src="img/raffa2.jpg" class="img-fluid" alt="">
                            <div class="member-info">
                                <div class="member-info-content">
                                    <h4>Raffaella Cioffi</h4>
                                    <span>Tutor di Gen Uni</span>
                                    <div class="social">
                                        <%--<a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>--%>
                                        <a href="https://www.linkedin.com/in/raffaella-cioffi-b64383173/"><i class="fa fa-linkedin"></i></a>
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
                    <p>Scegli il pacchetto di token online che fa per te ed acquista i GenMoney per avere accesso ai nostri corsi!</p>
                </header>
                <div class="row flex-items-xs-middle flex-items-xs-center">
                    <!-- Basic Plan  -->
                    <div class="col-xs-12 col-lg-4">
                        <div class="card">
                            <div class="card-header">
                                <h3><span class="currency">
                                    <img src="img/genMoney2.png" class="iconeMoney" id="iconeMoney50" />
                                </span>50<span class="period"></span></h3>
                            </div>
                            <div class="card-block">
                                <h4 class="card-title">
                                    <img src="img/250euro.png" class="euro" />
                                </h4>
                                <ul class="list-group">
                                    <li class="list-group-item">Con questo pacchetto avrai la possibilit&#224; di acquistare </li>
                                    <li class="list-group-item">i GenMoney che ti mancano per accedere ad un corso</li>
                                    <li class="list-group-item">a tua scelta o di usufruire delle nostre offerte.</li>
                                    <li class="list-group-item">In caso di domande o problemi il supporto tecnico &#232 attivo 24/7</li>
                                </ul>
                                <%--<a href="CorsiFE.aspx" class="btn">Acquista</a>--%>
                                <asp:Button ID="btnGenMoney50" CssClass="btn" runat="server" Text="ACQUISTA" OnClick="btnGenMoney50_Click" />
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
                                <h4 class="card-title">
                                    <img src="img/500euro.png" class="euro" />
                                </h4>
                                <ul class="list-group">
                                    <li class="list-group-item">Con questo pacchetto avrai la possibilit&#224; di acquistare</li>
                                    <li class="list-group-item">i GenMoney necessari per accedere ad un intero corso</li>
                                    <li class="list-group-item">a tua scelta o di usufruire delle nostre offerte.</li>
                                    <li class="list-group-item">In caso di domande o problemi il supporto tecnico &#232 attivo 24/7</li>
                                </ul>
                                <%--<a href="CorsiFE.aspx" class="btn">Acquista</a>--%>
                                <asp:Button ID="btnGenMoney100" CssClass="btn" runat="server" Text="ACQUISTA" OnClick="btnGenMoney100_Click" />
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
                                <h4 class="card-title">
                                    <img src="img/1000euro.png" class="euro" />
                                </h4>
                                <ul class="list-group">
                                    <li class="list-group-item">Con questo pacchetto avrai la possibilit&#224; di acquistare</li>
                                    <li class="list-group-item">i GenMoney necessari per accedere a 2 corsi</li>
                                    <li class="list-group-item">a tua scelta o di usufruire delle nostre offerte.</li>
                                    <li class="list-group-item">In caso di domande o problemi il supporto tecnico &#232 attivo 24/7</li>
                                </ul>
                                <%--<a href="CorsiFE.aspx" class="btn">Acquista</a>--%>
                                <asp:Button ID="btnGenMoney200" CssClass="btn" runat="server" Text="ACQUISTA" OnClick="btnGenMoney200_Click" />
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
                </header>

                <ul id="faq-list" class="wow fadeInUp">
                    <li>
                        <a data-toggle="collapse" class="collapsed" href="#faq1">Quanto costa un corso di Gen Uni?<i class="ion-android-remove"></i></a>
                        <div id="faq1" class="collapse" data-parent="#faq-list">
                            <p>
                                Visita la sezione Corsi e troverai tutte le informazioni riguardo i costi dei nostri costi, procedi al pagamento e ricevi i tuoi GenMoney!
                            </p>
                        </div>
                    </li>

                    <li>
                        <a data-toggle="collapse" href="#faq2" class="collapsed">Come faccio ad iscrivermi?<i class="ion-android-remove"></i></a>
                        <div id="faq2" class="collapse" data-parent="#faq-list">
                            <p>
                                Per effettuare l&#39iscrizione puoi accedere all&#39area riservata a questa procedura. La trovi in alto a destra, nella barra su in alto!
                            </p>
                        </div>
                    </li>

                    <li>
                        <a data-toggle="collapse" href="#faq3" class="collapsed">Quale validit&#224 ha l&#39attestato?<i class="ion-android-remove"></i></a>
                        <div id="faq3" class="collapse" data-parent="#faq-list">
                            <p>
                                I nostri attestati sono spendibili professionalmente sia sul territorio italiano che all&#39estero.
                            </p>
                        </div>
                    </li>
                    <li>
                        <a data-toggle="collapse" href="#faq4" class="collapsed">Come funzionano i test?<i class="ion-android-remove"></i></a>
                        <div id="faq4" class="collapse" data-parent="#faq-list">
                            <p>
                                Solitamente i test sono quiz online a risposta multipla, ma in alcuni casi pu &#242 essere richiesto l&#39invio di un elaborato al docente per la correzione. In caso di mancato superamento di un test &#232 possibile ripeterlo, senza costi aggiuntivi.
                            </p>
                        </div>
                    </li>

                    <li>
                        <a data-toggle="collapse" href="#faq5" class="collapsed">Quando iniziano i corsi online?<i class="ion-android-remove"></i></a>
                        <div id="faq5" class="collapse" data-parent="#faq-list">
                            <p>
                                In generale, tutti i corsi sono personalizzati sui ritmi di apprendimento dello studente, ed essendo online non hanno data di inizio, partono al momento del primo accesso ovvero quando lo studente sceglie di iniziare.
                            </p>
                        </div>
                    </li>
                    <li>
                        <a data-toggle="collapse" href="#faq6" class="collapsed">In cosa consiste l'assistenza? <i class="ion-android-remove"></i></a>
                        <div id="faq6" class="collapse" data-parent="#faq-list">
                            <p>
                                Il nostro personale  &#232 a disposizione per assistenza sulla piattaforma di e-learning. In particolare, i docenti ed i tutor sono disponibili per rispondere alle tue domande sui contenuti dei corsi tramite la nostra chat, che ti metter&#224; a contatto diretto con i tuoi docenti, oppure tramite l'utilizzo della classica email. Dove necessario offriamo anche il servizio di supporto in videoconferenza, telefono o strumenti di collaborazione remota. 
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
                                        <div class="col-sm-6">
                                            

                                            <div class="footer-links">
                                                <h4>Contattaci</h4>
                                                <p>
                                                    Via Livenza,6
                                            <br>
                                                    Roma, RM 07318<br>
                                                    Italia
                                            <br>
                                                    <strong>Telefono:</strong> +39 06 5548855<br>
                                                    <strong>Email:</strong> info@genuni.com<br>
                                                    <strong>P.IVA:</strong> 86334519757
                                        <br>
                                                </p>
                                            </div>
                                            <div class="footer-links">
                                                <h4>Link utili</h4>
                                                <ul>                                                
                                                    <li><a href="Login2.aspx">Termini di servizio</a></li>
                                                    <li><a href="../BEAdmin/GestioneCorsi.aspx">Privacy policy</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </p>
                                </div>

                               
                            </div>

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
                            <div class="footer-newsletter">
                                <h4>La nostra newsletter</h4>
                                <p>Vuoi pi&#249; informazioni? Iscriviti alla nostra newsletter e riceverai aggiornamenti costanti sui nostri corsi!</p>
                                <asp:TextBox ID="txtEmail" CssClass="" placeholder="E-mail" runat="server" TextMode="Email"></asp:TextBox>
                                <asp:Button ID="btnIscrivitiNews" runat="server" Text="Iscriviti" OnClick="btnIscrivitiNews_Click" />
                                <asp:CheckBox ID="chbxPrivacy" runat="server" /><p>
                                    Ho letto l&#39informativa sulla privacy e acconsento al trattamento dei miei dati personali ai sensi dell&#39art. 13 del D. Lgs. 196/2003
                                </p>
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
