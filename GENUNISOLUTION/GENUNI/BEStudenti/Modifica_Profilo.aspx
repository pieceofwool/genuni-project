<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Modifica_Profilo.aspx.cs" Inherits="Modifica_Profilo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/StyleStudenti.css" rel="stylesheet" />
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />

    <script type="text/javascript">

        $(document).ready(function () {

            $('#popupModificaAvatar').click(function () {

                var url = 'Modifica_Avatar_Popup.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Modifica Avatar',
                    resizable: false,
                    width: 300,
                    height: 200,
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
        <h4 class="titoliBE">MODIFICA PROFILO</h4>
        <table style="margin-top: 16px; text-align: center;">
            <tr>
                <td colspan="3">
                    <asp:Literal ID="lit" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="tabella" runat="server">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
                    <asp:TextBox ID="txtNome" runat="server" MaxLength="64"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblCognome" runat="server" Text="Cognome"></asp:Label>
                    <asp:TextBox ID="txtCognome" runat="server" MaxLength="64"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblIndirizzo" runat="server" Text="Indirizzo"></asp:Label>
                    <asp:TextBox ID="txtIndirizzo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCitta" runat="server" Text="Città"></asp:Label>
                    <asp:TextBox ID="txtCitta" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                    <asp:TextBox ID="txtProvincia" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblNazionalita" runat="server" Text="Nazionalità"></asp:Label>
                    <asp:TextBox ID="txtNazionalita" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <a id="popupModificaAvatar" class="popUpBtnBE" href="Modifica_Avatar_Popup.aspx">Modifica Avatar</a>
                </td>
                <td>
                    <asp:Button ID="Button1" class="btnBE" runat="server" Text="Aggiorna Avatar" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="btnSalva" runat="server" Text="Modifica Dati Personali" class="btnBE" OnClick="btnSalva_Click" />
                </td>
            </tr>
        </table>



    </div>
</asp:Content>

