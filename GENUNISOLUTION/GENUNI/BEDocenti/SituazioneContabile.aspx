<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="SituazioneContabile.aspx.cs" Inherits="BEDocenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        * {
            margin: 0 auto;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div style="width:1300px; margin-top:200px;text-align:center">
    <%--tutti i corsi accettati e che ha svolto e in corso, e i guadagni--%>
    <asp:GridView style="width:1300px" ID="grvStoricoCorsi" runat="server" AutoGenerateColumns="False" DataKeyNames="Chiave" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Cod_Corso" HeaderText="Cod_Corso" SortExpression="Cod_Corso" />
            <asp:BoundField DataField="Corso" HeaderText="Corso" SortExpression="Corso" />
            <asp:BoundField DataField="Tipo materia" HeaderText="Tipo materia" SortExpression="Tipo materia" />
            <asp:BoundField DataField="Materia" HeaderText="Materia" SortExpression="Materia" />
            <asp:BoundField DataField="Data_Partenza" HeaderText="Data_Partenza" ReadOnly="True" SortExpression="Data_Partenza" />
            <asp:BoundField DataField="Ragione_Sociale" HeaderText="Ragione_Sociale" SortExpression="Ragione_Sociale" />
            <asp:BoundField DataField="Cognome" HeaderText="Cognome" SortExpression="Cognome" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Piva" HeaderText="Piva" SortExpression="Piva" />
            <asp:BoundField DataField="CF" HeaderText="CF" SortExpression="CF" />
            <asp:BoundField DataField="Costo_Docente" HeaderText="Costo_Docente" SortExpression="Costo_Docente" />
            <asp:BoundField DataField="Tipo docente" HeaderText="Tipo docente" SortExpression="Tipo docente" />
            <asp:BoundField DataField="Chiave" HeaderText="Chiave" ReadOnly="True" SortExpression="Chiave" />
        </Columns>
    </asp:GridView>
     
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:generationConnectionString %>" SelectCommand="CONTABILITA_COSTO_DOCENTESINGOLO" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DbType="Date" DefaultValue="21/04/1998" Name="dataInizio" />
            <asp:Parameter DbType="Date" DefaultValue="09/09/2022" Name="dataFine" />
            <asp:Parameter DefaultValue="28" Name="codiceDocente" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
     
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

