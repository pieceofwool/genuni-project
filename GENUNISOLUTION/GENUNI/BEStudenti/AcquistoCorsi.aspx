<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="AcquistoCorsi.aspx.cs" Inherits="BEStudenti_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
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
                    title: 'Acquisto Corso',
                    resizable: false,
                    width: 300,
                    height: 200,
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
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">ACQUISTO CORSI</h4>

        <%-- Informazioni Corso --%>
        <div class="container">
            <h1>
                <asp:Label ID="lblTitolo" runat="server"></asp:Label>
            </h1>
            <h2>
                <asp:Label ID="lblTipo" runat="server"></asp:Label>
            </h2>
            <img id="imgCorso" runat="server" src="#"/>
            <p>
                <asp:Label ID="lblDescrizione" runat="server"></asp:Label>
            </p>
            <p>
                <b>In partenza il:</b>
                <asp:Label ID="lblDataPartenza" runat="server"></asp:Label>
            </p>
            <p>
                <b>Costo: </b>
                <asp:Label ID="lblCosto" runat="server"></asp:Label> Genmoney
            </p>
            <h3>Materie:</h3>
            <div>
                <asp:Literal ID="litMaterie" runat="server"></asp:Literal>
            </div>
            <a id="popup" class="popUpBtnBE" href="PopUpAcquistoCorso.aspx">Acquista Corso</a>
        </div>


        <%--<tr>
                <td class="btnGestisci">
                    <a id="popup" class="popUpBtnBE" href="PopUpAcquistoCorso.aspx">Acquista Corso</a>
                    <asp:Label ID="lblErrore" runat="server" Text=""></asp:Label>
                    <asp:Button ID="Button2" CssClass="btnBE" runat="server" Text="Aggiorna Saldo" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="grigliaCorso" CssClass="griglia" runat="server" DataKeyNames="CHIAVE" OnSelectedIndexChanged="grigliaCorso_SelectedIndexChanged" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                            <asp:BoundField DataField="Data_Partenza" HeaderText="Data Partenza" />
                            <asp:BoundField DataField="Costo" HeaderText="Costo" />
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true">
                                <ControlStyle CssClass="btnBE" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle />
                        <HeaderStyle CssClass="headergrid" />
                    </asp:GridView>
                </td>
            </tr>--%>
    </div>
</asp:Content>

