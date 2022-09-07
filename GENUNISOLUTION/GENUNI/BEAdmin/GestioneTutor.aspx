<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEAdmin.master" AutoEventWireup="true" CodeFile="GestioneTutor.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>

    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $('#btnAbilita').click(function () {
                //collego l'oggetto alla pagina
                var url = "Popup/Abilita.aspx";
                var popUp = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');
                //dichiariamo tutte le caratteristiche dell' oggetto
                popUp.dialog({

                    modal: true, //blocca le modifiche a tutto ciò che sta sotto all' ogg.
                    title: 'Inserimento Dati',  //titolo dell'oggetto
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Abilitazione tutor e contabili</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">
                    <!-- POPUP, HTML-->
                    <a id="btnAbilita" class="popUpBtnBE" href="Popup/btnAbilita.aspx">Cambia stato</a>
                    <!--NO POPUP, OGETTO ASP-->
                    <asp:Button ID="btnAggiorna" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiorna_Click" CssClass="btnBE" />
                </td>
            </tr>
            <tr>
                <td>
                    <%-- Tabella che contiene utenti T o C --%>
                    <asp:GridView ID="gridUtentiTC" CssClass="griglia" runat="server" DataKeyNames="Chiave" AutoGenerateColumns="false" OnSelectedIndexChanged="gridUtentiTC_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Chiave" Visible="false" />
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                            <asp:BoundField DataField="Usr" Visible="false" />
                            <asp:BoundField DataField="Pwd" Visible="false" />
                            <asp:BoundField DataField="Cognome" HeaderText="Cognome" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" />
                            <asp:BoundField DataField="Figura" HeaderText="Figura" />
                            <asp:BoundField DataField="Abilitato" HeaderText="Abilitato" />
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true">
                                <ControlStyle CssClass="btnBE" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

