<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Valutazione.aspx.cs" Inherits="BEContabilita_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#popup').click(function () {

                var url = this.href;
                var dialog = $('<iframe src="' + url + '" frameborder="0"></iframe').appendTo('body');

                dialog.dialog({
                    modal: true,
                    title: 'Inserisci',
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
    </script>

    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Valutazione</h4>
    <a href="PoPup/InfoCorsi.aspx" id="pippo">Modifica</a>
        <asp:Button ID="btnAggiorna" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiorna_Click" />
        <asp:GridView ID="grdValutazione" runat="server" OnSelectedIndexChanged="grdValutazione_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="Chiave">
            <Columns>
                <asp:BoundField DataField="Chiave" HeaderText="Chiave" InsertVisible="False" ReadOnly="True" SortExpression="Chiave" />
                <asp:BoundField DataField="Titolo" HeaderText="Titolo" SortExpression="Titolo" />
                <asp:BoundField DataField="Cognome" HeaderText="Cognome" SortExpression="Cognome" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:CommandField ShowSelectButton="True"/>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

