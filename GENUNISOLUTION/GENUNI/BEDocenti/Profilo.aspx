<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="Profilo.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />


    <script type="text/javascript">

        $(document).ready(function () {

            $('#popupModifica').click(function () {

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

            $('#popupModificaAvatar').click(function () {

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

            $('#popupModificaPwd').click(function () {

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

            $('#popupModificaComp').click(function () {

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
    <%--profilo--%>

    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Profilo:</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">



                    <a id="popupModificaAvatar" class="popUpBtnBE" href="POPUP/profilo/ModificaAvatar.aspx">Modifica avatar</a>
                    <%--                    <asp:Button ID="popupModificaAvatar" class="popUpBtnBE" runat="server" Text="Modifica Avatar" />--%>
                    <a id="popupModifica" class="popUpBtnBE" href="POPUP/profilo/ModificaProfilo.aspx">Modifica profilo</a>
                    <%--                    <asp:Button ID="popupModifica" class="popUpBtnBE" runat="server" Text="Modifica Profilo" />--%>
                    <a id="popupModificaPwd" class="popUpBtnBE" href="POPUP/profilo/ModificaPwd.aspx">Modifica password</a>
                    <%--                    <asp:Button ID="popupModificaPwd" class="popUpBtnBE" runat="server" Text="Modifica Password" />--%>

                    <asp:Button ID="Button1" class="btnBE" runat="server" Text="Aggiorna" OnClick="BtnAggiorna_Click" />
                    <%--selectone from esterni (docente) --%>
                </td>
            </tr>
        </table>
    </div>


    <div>
        <%--<img src="img/logo.jpg" alt="Avatar"  />--%>

        <div class="containerBE">
            <h3 class="titoliBE">Dati:</h3>
            
            <table class="tablePopUp" style="text-align:center;">
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Literal ID="lit" runat="server"></asp:Literal>
                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td width="250px"><b>User: </b>
                        <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
                    </td>
                    <td width="250px"><b>Ragione Sociale: </b>
                        <asp:Label ID="lblRagSoc" runat="server" Text=""></asp:Label>
                    </td>
                    <td width="250px"><b>Nazionalità: </b>
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
                    <td><b>Cap: </b>
                        <asp:Label ID="lblCap" runat="server" Text=""></asp:Label>
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
                </tr>
            </table>
        </div>

        <div class="containerBE">
            <h4 class="titoliBE">Competenze:</h4>
            <table class="tablePopUp">
                <tr>
                    <td class="btnGestisci">
                        <%--competenze--%>
                        <a id="popupModificaComp" class="popUpBtnBE" href="POPUP/profilo/ModificaCompetenze.aspx">Modifica competenze</a>

                        <asp:Button ID="BtnCV" class="btnBE" runat="server" Text="Scarica CV" OnClick="BtnCV_Click" />
                    </td>
                </tr>
                <tr>
                    <td><b>Skills:</b>
                        <asp:Label ID="lblSkills" class="lbl" runat="server" Text="C,C#,SQL,JAVA"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Literal ID="Lit2" runat="server"></asp:Literal>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>






<%--            <h3>Competenze:</h3>--%>

<%--competenze--%>
<%--            <a id="popupModificaComp" class="popUpBtnBE">Modifica competenze</a>--%>
<%--    <asp:Button ID="BtnModificaComp" class="popupModificaComp" runat="server" Text="Modifica Competenze" />--%>

<%--selectone from competenze (docente) --%>
<%--<br />--%>
<%--            Skills:
    <asp:Label ID="lblSkills" runat="server" Text="C,C#,SQL,JAVA"></asp:Label>
            <br />

            <asp:Button ID="BtnCV" class="btnBE" runat="server" Text="Scarica CV" OnClick="BtnCV_Click" />

        </div>--%>

            