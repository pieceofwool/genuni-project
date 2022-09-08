<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEAdmin.master" AutoEventWireup="true" CodeFile="GestioneReport2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Gestione Report</h4>
        <table>
            <tr>
                <td>
                    <%-- DATA INIZIO REPORT --%>
                    <asp:Label ID="lblDataInizio" CssClass="lbl" runat="server" Text="Data inizio report:"></asp:Label>
                    <asp:TextBox ID="txtDataInizio" CssClass="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <%-- DATA FINE REPORT --%>
                    <asp:Label ID="lblDataFine" CssClass="lbl" runat="server" Text="Data fine report:"></asp:Label>
                    <asp:TextBox ID="txtDataFine" CssClass="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="btnGestisci">
                    <%-- BUTTON CONFERMA --%>
                    <asp:Button ID="btnInvia" CssClass="btnBE" runat="server" Text="Fitra" OnClick="btnInvia_Click" />
                    <%-- BUTTON RESETTA DATE --%>
                    <asp:Button ID="btnReset" CssClass="btnBE" runat="server" Text="Resetta date" OnClick="btnReset_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div class="containerBE" style="margin-top: -18px;">
        <h4 class="titoliBE">Spese docenti</h4>
        <table class="tablePopUp">
            <tr>
                <td>
                    <%-- GRIGLIA DI VISUALIZZAZIONE REPORT DOCENTI --%>
                    <div class="box-content" style="min-height: 40px">
                        <asp:GridView ID="grigliaReportDocenti" CssClass="griglia" AutoGenerateColumns="False" runat="server">
                            <Columns>
                                <asp:BoundField DataField="Cod_Corso" Visible="false" />
                                <asp:BoundField DataField="Corso" HeaderText="Titolo corso" />
                                <asp:BoundField DataField="Tipo materia" HeaderText="Tipo" />
                                <asp:BoundField DataField="Materia" HeaderText="Materia" />
                                <asp:BoundField DataField="Data_Partenza" HeaderText="Data partenza" />
                                <asp:BoundField DataField="Cognome" HeaderText="Cognome" />
                                <asp:BoundField DataField="Nome" HeaderText="Nome" />
                                <asp:BoundField DataField="CF" HeaderText="Codice fiscale" />
                                <asp:BoundField DataField="Ragione_Sociale" HeaderText="Ragione sociale" ConvertEmptyStringToNull="False" NullDisplayText="N/A" />
                                <asp:BoundField DataField="Piva" HeaderText="Partita IVA" ConvertEmptyStringToNull="False" NullDisplayText="N/A" />
                                <asp:BoundField DataField="Costo_Docente" HeaderText="Costo docente" />
                                <asp:BoundField DataField="Tipo docente" Visible="false" />
                                <asp:BoundField DataField="Chiave" Visible="false" />
                            </Columns>
                            <HeaderStyle />
                            <HeaderStyle CssClass="headergrid" />
                            <SelectedRowStyle CssClass="selezionegrid" />
                        </asp:GridView>
                    </div>
                    <span><b>Totale spese:</b></span>
                    <asp:Label ID="lblTotDoc" runat="server" CssClass="lbl" Text=""></asp:Label>

                </td>
            </tr>
        </table>
    </div>
    <div class="containerBE" style="margin-top: -54px;">
        <h4 class="titoliBE">Ricavo studenti</h4>
        <table class="tablePopUp">
            <tr>
                <td>
                    <%-- GRIGLIA DI VISUALIZZAZIONE REPORT STUDENTI --%>
                    <div class="box-content" style="min-height: 40px">
                        <asp:GridView ID="grigliaReportStudenti" CssClass="griglia" AutoGenerateColumns="False" runat="server">
                            <Columns>
                                <asp:BoundField DataField="Cod_Corso" Visible="false" />
                                <asp:BoundField DataField="Corso" HeaderText="Titolo corso" />
                                <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                                <asp:BoundField DataField="Cognome" HeaderText="Cognome" />
                                <asp:BoundField DataField="Nome" HeaderText="Nome" />
                                <asp:BoundField DataField="CF" HeaderText="Codice fiscale" />
                                <asp:BoundField DataField="Data_Transazione" HeaderText="Data transazione" />
                                <asp:BoundField DataField="Ammontare" HeaderText="Ammontare" />
                            </Columns>
                            <HeaderStyle />
                            <HeaderStyle CssClass="headergrid" />
                            <SelectedRowStyle CssClass="selezionegrid" />
                        </asp:GridView>
                    </div>
                    <span><b>Totale ricavi:</b></span>
                    <asp:Label ID="lblTotStud" runat="server" CssClass="lbl" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <%-- UTILI --%>
    <%--<div id="utili">--%>
    <%-- Per il team grafica: 'totale utili' (la div 'utili' sarà in fondo centrale, sotto i due div affiancati) dovrebbe avere uno stile tipo titoletto ma 
                deve rimanere inline con la label; per ora ho lasciato un grassetto nell'html per segnalarlo, poi sistemate voi lo stile dello span come preferite--%>
    <%--            <span><b>Totale utili: </b></span>--%>
    <%--            <asp:Label ID="lblUtili" runat="server" CssClass="lblReport" Text=""></asp:Label>--%>
    <%--   </div>--%>
    <div class="containerBE" style="margin-top: -54px;">
        <h4 class="titoliBE">Utili</h4>
        <table class="tablePopUp">
            <tr>
                <td>
                    <span><b>Totale utili: </b></span>
                    <asp:Label ID="lblUtili" runat="server" CssClass="lbl" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

