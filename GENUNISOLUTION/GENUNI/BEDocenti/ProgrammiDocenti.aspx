﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="ProgrammiDocenti.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />

    <script type="text/javascript">
        $(document).ready(function () {

            $('#btnInserisciMateriale').click(function () {

                var url = 'POPUP/preparazioneMateriale/InserimentoProgrammi.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Inserisci materiale ',
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

            $('#btnModificaMateriale').click(function () {

                var url = 'POPUP/preparazioneMateriale/ModificaProgrammi.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Modifica materiale',
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

    <style>
        * {
            margin: 0 auto;
        }

        #storico {
            width: 700px;
            margin-top: 100px;
        }

        .tabella {
            width: 700px;
        }

        .MaterieScroll {
            overflow: auto;
            max-height: 400px;
            width: 1220px;
        }

        table {
            border-collapse: collapse;
        }

        .popupInserisciMateriale, .popupModificaMateriale {
            background-color: #ffffff;
            color: black;
            border-radius: 5px;
            border-color: rgba(255,255,255,.2);
        }

            .popupInserisciMateriale :hover, .popupModificaMateriale :hover {
                background-color: #9ceeb7;
                color: black;
            }

        .header {
            color: black;
            font-size: 19px;
            text-transform: uppercase;
            text-align: center;
        }
    </style>

    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <%-- header--%>
        <table style="width: 1220px; text-align: center; margin-top: 50px;">
            <tr class="header">
                <td><b runat="server" id="InserireCorso" style="font-size:25px;"></b></td>
            </tr>
        </table>
        <div class="MaterieScroll">

            <asp:GridView Width="1200px" class="grigliaProgrammi" CssClass="griglia" ID="grigliaProgrammi" runat="server" AutoGenerateColumns="False" DataKeyNames="Chiave,Cod_Materia" OnSelectedIndexChanged="grigliaProgrammi_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Chiave" HeaderText="Chiave" InsertVisible="False" ReadOnly="True" SortExpression="Chiave" Visible="False" />
                    <asp:BoundField DataField="Cod_Materia" HeaderText="Cod_Materia" SortExpression="Cod_Materia" Visible="False" />
                    <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                    <asp:BoundField DataField="Indice" HeaderText="Indice" SortExpression="Indice" />
                    <asp:BoundField DataField="Link" HeaderText="Link" SortExpression="Link" />
                    <asp:BoundField DataField="Materiale" HeaderText="Materiale" SortExpression="Materiale" Visible="False" />
                    <asp:BoundField DataField="Titolo_Materiale" HeaderText="Titolo_Materiale" SortExpression="Titolo_Materiale" />
                    <asp:BoundField DataField="Tipo_Materiale" HeaderText="Tipo_Materiale" SortExpression="Tipo_Materiale" Visible="False" />
                    <asp:BoundField DataField="Descrizione" HeaderText="Descrizione" SortExpression="Descrizione" />
                    <asp:CommandField ButtonType="Button" SelectText="Seleziona" ShowSelectButton="True">
                        <ControlStyle CssClass="btnBE" />
                    </asp:CommandField>
                </Columns>
                <HeaderStyle />
                <HeaderStyle CssClass="headergrid" />
                <SelectedRowStyle CssClass="selezionegrid" />
            </asp:GridView>

        </div>



        <%--footer--%>
        <table style="width: 1220px; text-align: center; margin-top: 10px;">
            <tr>
                <td style="text-align: left">
                    <asp:Button ID="Button1" CssClass="btnBE" runat="server" Text="Aggiorna" OnClick="BtnAggiorna_Click" /></td>
                <td style="text-align: center">
                    <a class="btnBE" ID="btnInserisciMateriale" href="POPUP/preparazioneMateriale/InserimentoProgrammi.aspx">Inserisci Materiale</a>
                </td>
                <td style="text-align: right">
                    <asp:Button ID="BtnIndietro" CssClass="btnBE" runat="server" Text="Indietro" OnClick="BtnIndietro_Click" /></td>
                <td style="text-align: right">
                    <%--<asp:Button class="popupModificaMateriale" CssClass="btnBE" ID="btnModificaMateriale" runat="server" Visible="false" Text="Modifica materiale " /></td>--%>
                    <a class="btnBE" ID="btnModificaMateriale" runat="server">Modifica Materiale</a>
                <td style="text-align: right">
                    <asp:Button ID="BtnElimina" CssClass="btnBE" runat="server" Text="Elimina" Visible="false" OnClick="BtnElimina_Click" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

