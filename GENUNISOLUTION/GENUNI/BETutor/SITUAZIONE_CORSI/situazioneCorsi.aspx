<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="situazioneCorsi.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />


    <script type="text/javascript">

        $(document).ready(function () {

            $('.popupPreparaTest').click(function () {

                var url = '../POPUP/corsi/preparazioneTest.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Preparazione Test',
                    resizable: false,
                    width: 650,
                    height: 350,
                    overlay: { opacity: 0.9, background: 'black' },

                    open: function (type, data) { $(this).parent().appendTo('form'); }
                });

                return false;
            });
        });

        $(document).ready(function () {

            $('.popupPreparaDomande').click(function () {

                var url = '../POPUP/preparazione_domande/preparazioneDomande.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Preparazione Domande',
                    resizable: false,
                    width: 550,
                    height: 400,
                    overlay: { opacity: 0.9, background: 'black' },

                    open: function (type, data) { $(this).parent().appendTo('form'); }
                });

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
        <h4 class="titoliBE">I tuoi corsi</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">
                    <asp:Button class="popupPreparaDomande" CssClass="btnBE" ID="btnPreparaDomande" runat="server" Text="Prepara domande" OnClick="btnPreparaDomande_Click" />
                    <asp:Button ID="btnRisultatiTest" CssClass="btnBE" runat="server" Text="Risultati test" OnClick="btnRisultatiTest_Click" />
                    <asp:Button class="popupPreparaTest" CssClass="btnBE" ID="popupPreparaTest" runat="server" Text="Crea test" />
                    <asp:Button ID="btnChat" runat="server" CssClass="btnBE" Text="Chat del corso" OnClick="btnChat_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <%--griglia corsi--%>
                    <asp:GridView ID="GridCorsi" CssClass="griglia" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="grvCorsi_SelectedIndexChanged" DataKeyNames="Chiave">
                        <HeaderStyle />
                        <HeaderStyle CssClass="headergrid" />
                        <SelectedRowStyle CssClass="selezionegrid" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
