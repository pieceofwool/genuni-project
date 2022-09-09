<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="SituazioneContabile.aspx.cs" Inherits="BEDocenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        * {
            margin: 0 auto;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 1300px; margin-top: 200px; text-align: center">
        <h3>Ricavi per ogni materia</h3>
        <%--tutti i corsi accettati e che ha svolto e in corso, e i guadagni--%>
        <asp:GridView Style="width: 1300px" ID="grvStoricoCorsi" runat="server" AutoGenerateColumns="False" DataKeyNames="Chiave">
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
            </Columns>
        </asp:GridView>



        <br />
        <asp:Label ID="lblSommaRicavi" runat="server" Text="Il totale dei ricavi dal: "></asp:Label>
        <asp:TextBox ID="txtDataInizio" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Label ID="lblAl" runat="server" Text="al: "></asp:Label>
        <asp:TextBox ID="txtDataFine" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Literal ID="ltlSommaRicavi" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="btnAggiorna" runat="server" Text="Aggiorna storico" OnClick="btnAggiorna_Click" />
        <asp:Button ID="btnSomma" runat="server" Text="Somma ricavi" OnClick="btnSomma_Click" />
    </div>

</asp:Content>

