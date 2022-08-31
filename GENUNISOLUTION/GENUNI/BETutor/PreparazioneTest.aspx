<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="PreparazioneTest.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />


    <script type="text/javascript">

        $(document).ready(function () {

            $('.popupCreazioneDomande').click(function () {

                var url = '/POPUP/preparazione_domande/preparazioneDomande.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Creazione Quesiti',
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

    <br />
    <br />
    <br />
    <br />

    <div>

        <%--creazione test--%>
        <%--scelta corso--%>
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        <%--info per creazione test--%>
        <asp:Label ID="Label6" runat="server" Text="Soglia di superamento: "></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

        <asp:Label ID="Label7" runat="server" Text="Data: "></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

        <asp:Label ID="Label8" runat="server" Text="Ora: "></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

        <asp:Button ID="Button2" runat="server" Text="Crea test" /><br />
        <a href="/POPUP/preparazione_domande/preparazioneDomande.aspx">vai alle domande</a>

    </div>
</asp:Content>

