<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="PreparazioneCorso.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />


    <script type="text/javascript">

        $(document).ready(function () {

            $('.popupDefinizioneMaterie').click(function () {

                //var url = '/definizioneMaterie.aspx';
                var url = '../POPUP/preparazione_corso/definizioneMaterie.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Definizione Materie',
                    resizable: false,
                    width: 450,
                    height: 350,
                    overlay: { opacity: 0.9, background: 'black' },
                    
                    open: function (type, data) { $(this).parent().appendTo('form'); }
                });

                return false;
            });
        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
       <br /><br /><br /><br />
    <table>
        <tr>
            <td>
                <%--titolo--%>
                <asp:Label ID="lblTitolo" runat="server" Text="Titolo:"></asp:Label>
                <asp:TextBox ID="txtTitolo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--tipo--%>
                <asp:Label ID="lblTipo" runat="server" Text="Tipo: "></asp:Label>
                <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--descrizione--%>
                <asp:Label ID="lblDescrizione" runat="server" Text="Descrizione: "></asp:Label>
                <asp:TextBox ID="txtDescrizione" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--data di partenza--%>
                <asp:Label ID="lblDataDiPartenza" runat="server" Text="Data di partenza: "></asp:Label>
                <asp:TextBox ID="txtDataDiPartenza" runat="server" TextMode="DateTime"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--scelta dell' avatar del corso (formato estratto dal bottone "aggiungi corso")--%>
                <asp:Label ID="lblAvatar" runat="server" Text="Immagine Profilo: "></asp:Label>
                <asp:FileUpload ID="UploadAvatar" runat="server" />
            </td>
        </tr>
    </table>

    <p>
        <%--bottone scelta docenti--%>
        <asp:Button Class="popupAssegnazioniDocenti" ID="btnAssegnazioneDocenti" runat="server" Text="Assegna docenti" OnClick="btnAssegnazioneDocenti_Click" />

        <%--bottone scelta materie--%>
        <asp:Button Class="popupDefinizioneMaterie" ID="btnDefinizioneMateria" runat="server" Text="Definisci materie" OnClick="btnDefinizioneMateria_Click" />

        <%--bottone inserisci corso--%>
        <asp:Button ID="btnInserisciCorso" runat="server" Text="Aggiungi corso" OnClick="btnInserisciCorso_Click" />
    </p>

    <p>
        <asp:GridView ID="GridCorsi" runat="server" OnSelectedIndexChanged="GridCorsi_SelectedIndexChanged" DataKeyNames="CHIAVE" AutoGenerateSelectButton="True">
        </asp:GridView>
    </p>
</asp:Content>

