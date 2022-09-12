<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEAdmin.master" AutoEventWireup="true" CodeFile="GestioneCorsi.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />

    <script>
        $(document).ready(function () {
            $('#btnInserisci').click(function () {
                //collego l'oggetto alla pagina
                var url = "Popup/InserisciCorsi.aspx";
                var popUp = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');
                //dichiariamo tutte le caratteristiche dell' oggetto
                popUp.dialog({

                    modal: true, //blocca le modifiche a tutto ciò che sta sotto all' ogg.
                    title: 'Inserisci dati corso',  //titolo dell'oggetto
                    resizable: false,
                    dialogClass: 'dialog',
                    height: 350,
                    width: 400,
                    overlay: { opacity: 1, background: 'black' },  //parametri relativi all' overlay (bordo/sfondo scuro intorno)
                    open: function (type, data) { $(this).parent().appendTo('form'); } //dati relativi all' apertura
                });
                //ogni oggetto deve restituire qualcosa
                return false;
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $('#btnModifica').click(function () {
                //collego l'oggetto alla pagina
                var url = "Popup/ModificaCorsi.aspx";
                var popUp = $('<iframe + src="' + url + '" frameborder="0"></iframe>').appendTo('body');
                //dichiariamo tutte le caratteristiche dell' oggetto
                popUp.dialog({

                    modal: true, //blocca le modifiche a tutto ciò che sta sotto all' ogg.
                    title: 'Modifica corsi',  //titolo dell'oggetto
                    dialogClass: 'dialog',
                    resizable: false,  //blocca il ridimensionamento
                    height: 350,
                    width: 600,
                    overlay: { opacity: 1, background: 'black' },  //parametri relativi all' overlay (bordo/sfondo scuro intorno)
                    open: function (type, data) { $(this).parent().appendTo('form'); } //dati relativi all' apertura
                });
                //ogni oggetto deve restituire qualcosa
                return false;
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $('#btnVisualizzaInfo').click(function () {
                //collego l'oggetto alla pagina
                var url = "Popup/VisualizzaInfo.aspx";
                var popUp = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');
                //dichiariamo tutte le caratteristiche dell' oggetto
                popUp.dialog({

                    modal: true, //blocca le modifiche a tutto ciò che sta sotto all' ogg.
                    title: 'Informazioni corso',  //titolo dell'oggetto
                    dialogClass: 'dialog',
                    resizable: false,  //blocca il ridimensionamento
                    height: 350,
                    width: 600,
                    overlay: { opacity: 1, background: 'black' },  //parametri relativi all' overlay (bordo/sfondo scuro intorno)
                    open: function (type, data) { $(this).parent().appendTo('form'); } //dati relativi all' apertura
                });
                //ogni oggetto deve restituire qualcosa
                return false;
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $('#btnAssegna').click(function () {
                //collego l'oggetto alla pagina
                var url = "Popup/AssegnaCorsi.aspx";
                var popUp = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');
                //dichiariamo tutte le caratteristiche dell' oggetto
                popUp.dialog({

                    modal: true, //blocca le modifiche a tutto ciò che sta sotto all' ogg.
                    title: 'Assegna corsi',  //titolo dell'oggetto
                    dialogClass: 'dialog',
                    resizable: false,  //blocca il ridimensionamento--%>
                    height: 180,
                    width: 600,
                    overlay: { opacity: 1, background: 'black' },  //parametri relativi all' overlay (bordo/sfondo scuro intorno)
                    open: function (type, data) { $(this).parent().appendTo('form'); } //dati relativi all' apertura
                });
                //ogni oggetto deve restituire qualcosa
                return false;
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $('#btnApprova').click(function () {
                //collego l'oggetto alla pagina
                var url = "Popup/ApprovaCorsi.aspx";
                var popUp = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');
                //dichiariamo tutte le caratteristiche dell' oggetto
                popUp.dialog({

                    modal: true, //blocca le modifiche a tutto ciò che sta sotto all' ogg.
                    title: 'Approvazione',  //titolo dell'oggetto
                    dialogClass: 'dialog',
                    resizable: false,  //blocca il ridimensionamento--%>
                    height: 500,
                    width: 600,
                    overlay: { opacity: 1, background: 'black' },  //parametri relativi all' overlay (bordo/sfondo scuro intorno)
                    open: function (type, data) { $(this).parent().appendTo('form'); } //dati relativi all' apertura
                });
                //ogni oggetto deve restituire qualcosa
                return false;
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $('#btnAbilita').click(function () {
                //collego l'oggetto alla pagina
                var url = "Popup/Abilita.aspx";
                var popUp = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');
                //dichiariamo tutte le caratteristiche dell' oggetto
                popUp.dialog({

                    modal: true, //blocca le modifiche a tutto ciò che sta sotto all' ogg.
                    title: 'Abilita',  //titolo dell'oggetto
                    dialogClass: 'dialog',
                    resizable: false,  //blocca il ridimensionamento--%>
                    height: 500,
                    width: 600,
                    overlay: { opacity: 1, background: 'black' },  //parametri relativi all' overlay (bordo/sfondo scuro intorno)
                    open: function (type, data) { $(this).parent().appendTo('form'); } //dati relativi all' apertura
                });
                //ogni oggetto deve restituire qualcosa
                return false;
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Creazione e modifica corsi</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">
                    <!-- POPUP, HTML-->
                    <a id="btnInserisci" class="popUpBtnBE" href="Popup/InserisciCorsi.aspx">Crea nuovo corso</a>
                    <a id="btnModifica" class="popUpBtnBE" href="Popup/ModificaCorsi.aspx">Modifica corso selezionato</a>
                    <a id="btnVisualizzaInfo" class="popUpBtnBE" href="Popup/VisualizzaInfo.aspx">Visualizza informazioni corso</a>
                    <!--NO POPUP, OGETTO ASP-->
                    <asp:Button ID="btnAggiornaCreazione" CssClass="btnBE" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiornaCreazione_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gridCreazioneCorsi" runat="server" DataKeyNames="Chiave,Cod_Utente" AutoGenerateColumns="False" CssClass="griglia" OnSelectedIndexChanged="gridCreazioneCorsi_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Chiave" Visible="false" />
                            <asp:BoundField DataField="Cod_Utente" Visible="false" />
                            <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome Tutor" ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />
                            <asp:BoundField DataField="Cognome" HeaderText="Cognome Tutor" ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />
                            <asp:BoundField DataField="Data_Creazione" HeaderText="Data Creazione" />
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                            <asp:BoundField DataField="Descrizione" Visible="false" />
                            <asp:BoundField DataField="Data_Partenza" HeaderText="Data Partenza" />
                            <asp:BoundField DataField="Status_Corsi" HeaderText="Status" />
                            <asp:BoundField DataField="Data_Status" HeaderText="Data Status" />
                            <asp:BoundField DataField="Costo" Visible="false" />
                            <asp:BoundField DataField="Avatar_Corso" Visible="false" />
                            <asp:BoundField DataField="Tipo_Img" Visible="false" />
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true">
                                <ControlStyle CssClass="btnBE" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle CssClass="headergrid" />
                        <SelectedRowStyle CssClass="selezionegrid" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    <div class="containerBE2" style="margin-top: 7px;">
        <h4 class="titoliBE">Assegnazione corsi</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">
                    <!-- POPUP, HTML-->
                    <a id="btnAssegna" class="popUpBtnBE" href="Popup/AssegnaCorsi.aspx">Assegna corso</a>
                    <asp:Button ID="btnAggiornaAssegnazione" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiornaAssegnazione_Click" CssClass="btnBE" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gridAssegnazioneCorsi" runat="server" DataKeyNames="Chiave,Cod_Utente" AutoGenerateColumns="False" CssClass="griglia" OnSelectedIndexChanged="gridAssegnazioneCorsi_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Chiave" Visible="false" />
                            <asp:BoundField DataField="Cod_Utente" Visible="false" />
                            <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome Tutor" ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />
                            <asp:BoundField DataField="Cognome" HeaderText="Cognome Tutor" ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true">
                                <ControlStyle CssClass="btnBE" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle />
                        <HeaderStyle CssClass="headergrid" />
                        <SelectedRowStyle CssClass="selezionegrid" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    <div class="containerBE2">
        <h4 class="titoliBE">Approvazione corsi</h4>
        <table>
            <tr>
                <td class="btnGestisci">
                    <!-- POPUP, HTML-->
                    <a id="btnApprova" class="popUpBtnBE" href="Popup/ApprovaCorsi.aspx">Approva corso</a>
                    <asp:Button ID="btnAggiornaApprovazione" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiornaApprovazione_Click" CssClass="btnBE" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gridApprovazioneCorsi" runat="server" DataKeyNames="Chiave, Cod_Utente" CssClass="griglia" AutoGenerateColumns="false" OnSelectedIndexChanged="gridApprovazioneCorsi_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Chiave" Visible="false" />
                            <asp:BoundField DataField="Cod_Utente" Visible="false" />
                            <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome Tutor" ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />
                            <asp:BoundField DataField="Cognome" HeaderText="Cognome Tutor" ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true">
                                <ControlStyle CssClass="btnBE" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle />
                        <HeaderStyle CssClass="headergrid" />
                        <SelectedRowStyle CssClass="selezionegrid" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

