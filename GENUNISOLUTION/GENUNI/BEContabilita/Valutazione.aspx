<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Valutazione.aspx.cs" Inherits="BEContabilita_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $('#popup').click(function () {
                //collego l'oggetto alla pagina
                var url = "PoPup/InfoCorsi.aspx";
                var popUp = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');
                //dichiariamo tutte le caratteristiche dell' oggetto
                popUp.dialog({
                    modal: true, //blocca le modifiche a tutto ciò che sta sotto all' ogg.
                    title: 'Valutazione',  //titolo dell'oggetto
                    resizable: false,
                    dialogClass: 'dialog',
                    height: 600,
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
   <%-- <script type="text/javascript">--%>
<%--        $(document).ready(function () {
            $('#pippo').click(function () {

                var url = this.href;
                var dialog = $('<iframe src="' + url + '" frameborder="0"></iframe').appendTo('body');

                dialog.dialog({
                    modal: true,
                    title: 'Visualizza',
                    resizable: false,
                    with: '400px',
                    show: {
                        effect: "explode",
                        duration: 1000
                    },
                    hide: {
                        effect: "explode",
                        duration: 1000
                    },
                    overlay: { opacity: 0.9, backgroun: 'black' },

                    open: function (type, data) { $(this).parent().appendTo('form'); }


                });
                return false;
            });
        });
    </script>--%>
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Valutazione</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">
                     <a id="popup" class="popUpBtnBE" href="PoPup/InfoCorsi.aspx">Visualizza</a>
                    <asp:Button ID="btnAggiorna" CssClass="btnBE" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiorna_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="grdValutazione" CssClass="griglia" runat="server" OnSelectedIndexChanged="grdValutazione_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="Chiave">
                        <Columns>
                            <asp:BoundField DataField="Chiave" HeaderText="Chiave" InsertVisible="False" ReadOnly="True" SortExpression="Chiave" />
                            <asp:BoundField DataField="Titolo" HeaderText="Titolo" SortExpression="Titolo" />
                            <asp:BoundField DataField="Cognome" HeaderText="Cognome" SortExpression="Cognome" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
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

