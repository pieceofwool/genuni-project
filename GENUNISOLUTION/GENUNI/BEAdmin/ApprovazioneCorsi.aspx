﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEAdmin.master" AutoEventWireup="true" CodeFile="ApprovazioneCorsi.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $('#btnApprova').click(function () {
                //collego l'oggetto alla pagina
                var url = "Popup/ApprovaCorsi.aspx";
                var popUp = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');
                //dichiariamo tutte le caratteristiche dell' oggetto
                popUp.dialog({

                    modal: true, //blocca le modifiche a tutto ciò che sta sotto all' ogg.
                    title: 'Approva corsi',  //titolo dell'oggetto
                    dialogClass: 'dialog',
                    resizable: false,  //blocca il ridimensionamento--%>
                    height: 250,
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
        <h4 class="titoliBE">Approvazione corsi</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">
                    <!-- POPUP, HTML-->
                    <a id="btnApprova" class="popUpBtnBE" href="Popup/ApprovaCorsi.aspx">Approva corso</a>
                    <asp:Button ID="btnAggiornaApprovazione" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiornaApprovazione_Click" CssClass="btnBE" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gridApprovazioneCorsi" CssClass="griglia" runat="server" DataKeyNames="Chiave, Cod_Utente" AutoGenerateColumns="false" OnSelectedIndexChanged="gridApprovazioneCorsi_SelectedIndexChanged">
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

