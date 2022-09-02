<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="Profilo.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />


    <script type="text/javascript">

        $(document).ready(function () {

            $('.popupModifica').click(function () {

                var url = 'POPUP/profilo/ModificaProfilo.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Modifica Profilo',
                    resizable: false,
                    width: 400,
                    height: 400,
                    overlay: { opacity: 0.9, background: 'black' },

                    open: function (type, data) { $(this).parent().appendTo('form'); }
                });

                return false;
            });
        });
    </script>

    <script type="text/javascript">

        $(document).ready(function () {

            $('.popupModificaAvatar').click(function () {

                var url = 'POPUP/profilo/ModificaAvatar.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Modifica Avatar',
                    resizable: false,
                    width: 400,
                    height: 400,
                    overlay: { opacity: 0.9, background: 'black' },

                    open: function (type, data) { $(this).parent().appendTo('form'); }
                });

                return false;
            });
        });
    </script>

    <script type="text/javascript">

        $(document).ready(function () {

            $('.popupModificaPwd').click(function () {

                var url = 'POPUP/profilo/ModificaPassword.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Modifica Password',
                    resizable: false,
                    width: 400,
                    height: 300,
                    overlay: { opacity: 0.9, background: 'black' },

                    open: function (type, data) { $(this).parent().appendTo('form'); }
                });

                return false;
            });
        });
    </script>

    <script type="text/javascript">

        $(document).ready(function () {

            $('.popupModificaComp').click(function () {

                var url = 'POPUP/profilo/ModificaCompetenze.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Modifica Competenze',
                    resizable: false,
                    width: 400,
                    height: 300,
                    overlay: { opacity: 0.9, background: 'black' },

                    open: function (type, data) { $(this).parent().appendTo('form'); }
                });

                return false;
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Profilo</h2>
    <h3>Dati:</h3>
    <%--profilo--%>

    <asp:Button ID="BtnModificaAvatar" class="popupModificaAvatar" runat="server" Text="ModificaAvatar" />
    <asp:Button ID="BtnModifica" class="popupModifica" runat="server" Text="Modifica Profilo" />
    <asp:Button ID="BtnModificaPwd" class="popupModificaPwd" runat="server" Text="Modifica Password" />
    <asp:Button ID="BtnAggiorna" runat="server" Text="Aggiorna" OnClick="BtnAggiorna_Click" />
    <%--selectone from esterni (docente) --%>

    <div>
        <%--<img src="img/logo.jpg" alt="Avatar"  />--%>
        <asp:Literal ID="lit" runat="server"></asp:Literal>

        <table>
            <tr>
                <td><b>User: </b>
                    <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
                </td>
                <td><b>Ragione Sociale: </b>
                    <asp:Label ID="lblRagSoc" runat="server" Text=""></asp:Label>
                </td>
                <td><b>Nazionalità: </b>
                    <asp:Label ID="lblNazionalita" runat="server" Text=""></asp:Label>
                </td>
            </tr>

            <tr>
                <td><b>Cognome: </b>
                    <asp:Label ID="lblCognome" runat="server" Text=""></asp:Label>
                </td>
                <td><b>Nome: </b>
                    <asp:Label ID="lblNome" runat="server" Text=""></asp:Label>
                </td>
                <td><b>Data di Nascita: </b>
                    <asp:Label ID="lblDataNascita" runat="server" Text=""></asp:Label>
                </td>
            </tr>


            <tr>
                <td><b>Partita Iva: </b>
                    <asp:Label ID="lblIva" runat="server" Text=""></asp:Label>
                </td>
                <td><b>Codice Fiscale: </b>
                    <asp:Label ID="lblCF" runat="server" Text=""></asp:Label>
                </td>

            </tr>


            <tr>
                <td><b>Indirizzo: </b>
                    <asp:Label ID="lblIndirizzo" runat="server" Text=""></asp:Label>
                </td>
                <td><b>Città: </b>
                    <asp:Label ID="lblCitta" runat="server" Text=""></asp:Label>
                </td>
                <td><b>Provincia: </b>
                    <asp:Label ID="lblProvincia" runat="server" Text=""></asp:Label>
                </td>
                <td><b>Cap: </b>
                    <asp:Label ID="lblCap" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>

    </div>

    <h3>Competenze:</h3>

    <%--competenze--%>
    <asp:Button ID="BtnModificaComp" class="popupModificaComp" runat="server" Text="Modifica Competenze" />
    <%--selectone from competenze (docente) --%>
    <br />
    Skills:
    <asp:Label ID="lblSkills" runat="server" Text="C,C#,SQL,JAVA"></asp:Label>
    <br />

    <asp:Button ID="BtnCV" runat="server" Text="Scarica CV" OnClick="BtnCV_Click" />

    <asp:Literal ID="Lit2" runat="server"></asp:Literal>
    


</asp:Content>

