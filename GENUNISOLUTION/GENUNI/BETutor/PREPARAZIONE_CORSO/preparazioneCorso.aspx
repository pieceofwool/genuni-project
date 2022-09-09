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


        $(document).ready(function () {

            $('.btnDefinisciCorso').click(function () {

                //var url = '/definizioneMaterie.aspx';
                var url = '../POPUP/preparazione_corso/definisciCorso.aspx';
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
    

    <p>
        <%--bottone scelta docenti--%>
        <asp:Button Class="popupAssegnazioniDocenti" ID="btnAssegnazioneDocenti" runat="server" Text="Assegna docenti" OnClick="btnAssegnazioneDocenti_Click" />

        <%--bottone scelta materie--%>
        <asp:Button Class="popupDefinizioneMaterie" ID="btnDefinizioneMateria" runat="server" Text="Definisci materie" OnClick="btnDefinizioneMateria_Click" />

        <%--bottone definizione corso--%>
        <asp:Button Class="btnDefinisciCorso" ID="btnDefinisciCorso" runat="server" Text="Definisci corso" OnClick="Button1_Click"  />
    </p>

    <p>
        <asp:GridView ID="GridCorsi" runat="server" OnSelectedIndexChanged="GridCorsi_SelectedIndexChanged" DataKeyNames="CHIAVE, Cod_Utente" AutoGenerateSelectButton="True" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                <asp:BoundField DataField="Descrizione" HeaderText="Descrizione" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:BoundField DataField="Data_Partenza" HeaderText="Data Partenza" />
                <asp:BoundField DataField="Costo" HeaderText="Costo" />
                <asp:ImageField DataAlternateTextField="Avatar_Corso" DataImageUrlField="Avatar_Corso" DataImageUrlFormatString="Tipo_Img" HeaderText="Avatar">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

