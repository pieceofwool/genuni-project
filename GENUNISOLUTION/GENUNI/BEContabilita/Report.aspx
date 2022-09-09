<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Default2" %>

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
                    <asp:Label ID="lblDataInizio" CssClass="lbl" runat="server" Text="Data inizio report:" Style="font-size: 16px;"></asp:Label>
                    <asp:TextBox ID="txtDataInizio" CssClass="txtDate" runat="server" TextMode="Date" Style="font-size: 16px;"></asp:TextBox>
                    <%-- DATA FINE REPORT --%>
                    <asp:Label ID="lblDataFine" CssClass="lbl" runat="server" Text="Data fine report:" Style="font-size: 16px;"></asp:Label>
                    <asp:TextBox ID="txtDataFine" CssClass="txtDate" runat="server" TextMode="Date" Style="font-size: 16px;"></asp:TextBox>
                    <%-- BUTTON CONFERMA --%>
                    <asp:Button ID="btnInvia" CssClass="btnBE" runat="server" Style="margin-left: 30px;" Text="Fitra" OnClick="btnInvia_Click" />
                    <%-- BUTTON RESETTA DATE --%>
                    <asp:Button ID="btnReset" CssClass="btnBE" runat="server" Text="Resetta date" OnClick="btnReset_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div class="containerBE" style="margin-top: -20px;">
        <h4 class="titoliBE">TOTALE</h4>
        <table class="tablePopUp">
            <tr>
                <td>
                    <span><b>Totale spese:</b></span>
                    <asp:Label ID="lblTotDoc" runat="server" CssClass="lbl" Text=""></asp:Label>
                </td>
                <td>
                    <span><b>Totale ricavi:</b></span>
                    <asp:Label ID="lblTotStud" runat="server" CssClass="lbl" Text=""></asp:Label>
                </td>
                <td>
                    <span><b>Totale utili: </b></span>
                    <asp:Label ID="lblUtili" runat="server" CssClass="lbl" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>

    <div class="containerBE" style="margin-top: -18px;">
        <h4 class="titoliBE">Spese docenti</h4>
        <div class="containerBE" style="margin-top: -54px;">
            <table class="tablePopUp">
                <tr>
                    <td>
                        <span><b>Totale spese:</b></span>
                        <asp:Label ID="lblTotDoc" runat="server" CssClass="lbl" Text=""></asp:Label>

                        <span><b>Totale ricavi:</b></span>
                        <asp:Label ID="lblTotStud" runat="server" CssClass="lbl" Text=""></asp:Label>

                        <span><b>Totale utili: </b></span>
                        <asp:Label ID="lblUtili" runat="server" CssClass="lbl" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
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
                </td>
            </tr>
        </table>
    </div>

</asp:Content>

