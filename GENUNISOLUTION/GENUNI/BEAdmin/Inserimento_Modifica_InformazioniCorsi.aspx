<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEAdmin.master" AutoEventWireup="true" CodeFile="Inserimento_Modifica_InformazioniCorsi.aspx.cs" Inherits="Default2" %>

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
                    title: 'Inserimento Dati',  //titolo dell'oggetto
                    resizable: false,
                    dialogClass: 'dialog',
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
            $('#btnModifica').click(function () {
                //collego l'oggetto alla pagina
                var url = "Popup/ModificaCorsi.aspx";
                var popUp = $('<iframe + src="' + url + '" frameborder="0"></iframe>').appendTo('body');
                //dichiariamo tutte le caratteristiche dell' oggetto
                popUp.dialog({

                    modal: true, //blocca le modifiche a tutto ciò che sta sotto all' ogg.
                    title: 'Modifica Dati',  //titolo dell'oggetto
                    dialogClass: 'dialog',
                    resizable: false,  //blocca il ridimensionamento
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
            $('#btnVisualizzaInfo').click(function () {
                //collego l'oggetto alla pagina
                var url = "Popup/VisualizzaInfo.aspx";
                var popUp = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');
                //dichiariamo tutte le caratteristiche dell' oggetto
                popUp.dialog({

                    modal: true, //blocca le modifiche a tutto ciò che sta sotto all' ogg.
                    title: 'Modifica Dati',  //titolo dell'oggetto
                    dialogClass: 'dialog',
                    resizable: false,  //blocca il ridimensionamento
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
                        <columns>
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
                                <controlstyle cssclass="btnBE" />
                            </asp:CommandField>
                        </columns>
                        <headerstyle />
                        <headerstyle cssclass="headergrid" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

