<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="SituazioneContabile.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />

    <script>
        $(document).ready(function () {
            $('#btnAcquista').click(function () {
                //collego l'oggetto alla pagina
                var url = "AcquistoGenMoney.aspx";
                var popUp = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');
                //dichiariamo tutte le caratteristiche dell' oggetto
                popUp.dialog({

                    modal: true, //blocca le modifiche a tutto ciò che sta sotto all' ogg.
                    title: 'Ricarica GenMoney',  //titolo dell'oggetto
                    resizable: false,
                    dialogClass: 'dialog',
                    height: 400,
                    width: 400,
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
        <h4 class="titoliBE">SITUAZIONE CONTABILE</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">
                    <asp:Label ID="Label1" runat="server" CssClass="lbl" Text="Portafoglio"></asp:Label>
                    <asp:Label ID="lblSaldo" runat="server" CssClass="lbl" Text=""></asp:Label>
                    <br />
                    <a id="btnAcquista" class="popUpBtnBE" cssclass="popUpBtnBE" href="Popup/AcquistoGenMoney.aspx">Acquista GenMoney</a>
                    <asp:Button ID="btnAggiornaSaldo" CssClass="btnBE" runat="server" Text="Aggiorna saldo" OnClick="btnAggiornaSaldo_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <h5 class="h5Sottotitoli">STORICO ACQUISTO</h5>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="grigliaStoricoAcquisti" CssClass="grigliaStudentiContabilità" runat="server">
                        <HeaderStyle />
                        <HeaderStyle CssClass="headergrid" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <br />
                    <br />
                    <h5 CssClass="h5Sottotitoli">STORICO RICARICHE GENMONEY</h5>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="grigliaRicariche" CssClass="grigliaStudentiContabilità" runat="server" OnRowDataBound="grigliaRicariche_RowDataBound">
                        <HeaderStyle />
                        <HeaderStyle CssClass="headergrid" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

