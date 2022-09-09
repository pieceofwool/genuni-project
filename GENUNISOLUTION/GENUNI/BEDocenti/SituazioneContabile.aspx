<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="SituazioneContabile.aspx.cs" Inherits="BEDocenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">RICAVI PER OGNI MATERIA</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">
                    <%--tutti i corsi accettati e che ha svolto e in corso, e i guadagni--%>
                    <asp:GridView ID="grvStoricoCorsi" runat="server" CssClass="griglia" AutoGenerateColumns="False" DataKeyNames="Chiave">
                        <Columns>
                            <asp:BoundField DataField="Cod_Corso" HeaderText="Cod_Corso" SortExpression="Cod_Corso" Visible="False" />
                            <asp:BoundField DataField="Corso" HeaderText="Corso" SortExpression="Corso" />
                            <asp:BoundField DataField="Tipo materia" HeaderText="Tipo materia" SortExpression="Tipo materia" />
                            <asp:BoundField DataField="Materia" HeaderText="Materia" SortExpression="Materia" />
                            <asp:BoundField DataField="Data_Partenza" HeaderText="Data Partenza" ReadOnly="True" SortExpression="Data_Partenza" />
                            <asp:BoundField DataField="Ragione_Sociale" HeaderText="Ragione_Sociale" SortExpression="Ragione_Sociale" Visible="False" />
                            <asp:BoundField DataField="Cognome" HeaderText="Cognome" SortExpression="Cognome" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                            <asp:BoundField DataField="Piva" HeaderText="Piva" SortExpression="Piva" Visible="False" />
                            <asp:BoundField DataField="CF" HeaderText="CF" SortExpression="CF" Visible="False" />
                            <asp:BoundField DataField="Costo_Docente" HeaderText="Ricavi" SortExpression="Costo_Docente" />
                            <asp:BoundField DataField="Tipo docente" HeaderText="Tipo docente" SortExpression="Tipo docente" Visible="False" />
                            <asp:BoundField DataField="Chiave" HeaderText="Chiave" ReadOnly="True" SortExpression="Chiave" Visible="False" />
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true">
                                <ControlStyle CssClass="btnBE" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle CssClass="headergrid" />
                        <SelectedRowStyle CssClass="selezionegrid" />
                    </asp:GridView>
                </td>
            </tr>
        </table>

        <table>
            <tr>
                <td>
                    <asp:Label ID="lblSommaRicavi" CssClass="lbl" runat="server" Text="Il totale dei ricavi dal: "></asp:Label>
                    <asp:TextBox ID="txtDataInizio" runat="server" CssClass="txtDate" TextMode="Date"></asp:TextBox>
                    <asp:Label ID="lblAl" CssClass="lbl" runat="server" Text="al: "></asp:Label>
                    <asp:TextBox ID="txtDataFine" CssClass="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:Literal ID="ltlSommaRicavi" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnAggiorna" CssClass="btnBE" runat="server" Text="Aggiorna storico" OnClick="btnAggiorna_Click" />
                    <asp:Button ID="btnSomma" CssClass="btnBE" runat="server" Text="Somma ricavi" OnClick="btnSomma_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

