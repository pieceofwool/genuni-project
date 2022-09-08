<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="AcquistoCorsi.aspx.cs" Inherits="BEStudenti_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            $('#popup').click(function () {

                //var url = this.href;
                var url = 'PopUpAcquistoCorso.aspx';
                var dialog = $('<iframe src="' + url + '" frameborder = "0"></iframe>').appendTo('body');


                //da pippo prendimi il dialog
                dialog.dialog({
                    modal: true,
                    title: 'Ricarica GenMoney',
                    resizable: false,
                    width: '400px',
                    overlay: { opacity: 0.9, background: 'black' },
                    open: function (type, data) {
                        $(this).parent().appendTo('form');
                    }
                });
                return false;
            });
        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="grigliaCorso" runat="server" DataKeyNames="CHIAVE" OnSelectedIndexChanged="grigliaCorso_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
        </Columns>

    </asp:GridView>
    <input type="button" id="popup" value="Acquista Corso" />

    <asp:Label ID="lblErrore" runat="server" Text=""></asp:Label>
    <asp:Button ID="Button2" runat="server" Text="Aggiorna Saldo" />
</asp:Content>

