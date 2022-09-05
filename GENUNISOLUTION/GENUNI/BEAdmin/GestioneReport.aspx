<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEAdmin.master" AutoEventWireup="true" CodeFile="GestioneReport.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
    <br />
    <br />
    <br />
    <h1>Gestione Report</h1>
    

    <%-- SCELTA REPORT --%>
    <asp:CheckBox ID="chkDocenti" runat="server" Text="Docenti" GroupName="Report" Checked="True" />
    <asp:CheckBox ID="chkStudenti" runat="server" Text="Studenti" GroupName="Report" />
    <hr />
    <%-- DATA INIZIO REPORT --%>
    <asp:Label ID="lblDataInizio" runat="server" Text="Dal"></asp:Label>
    <asp:TextBox ID="txtDataInizio" runat="server" TextMode="Date"></asp:TextBox>
    <%-- DATA FINE REPORT --%>
    <asp:Label ID="lblDataFine" runat="server" Text="Al"></asp:Label>
    <asp:TextBox ID="txtDataFine" runat="server" TextMode="Date"></asp:TextBox>
    <%-- BUTTON CONFERMA --%>
    <asp:Button ID="btnInvia" runat="server" Text="Invia" OnClick="btnInvia_Click" />
    <hr />
    <%-- GRIGLIA DI VISUALIZZAZIONE REPORT DOCENTI O STUDENTI --%>
    <asp:Literal ID="ltlDocenti" runat="server" Text=""></asp:Literal>
    <asp:GridView ID="grigliaReportDocenti" runat="server"></asp:GridView>
    <asp:Label ID="lblTot1" runat="server" Text="Totale spese: "></asp:Label>
    <asp:Label ID="lblTotDoc" runat="server" Text=""></asp:Label>

    <asp:Literal ID="ltlStudenti" runat="server" Text=""></asp:Literal>
    <asp:GridView ID="grigliaReportStudenti" Visible="false" runat="server"></asp:GridView>
    <asp:Label ID="lblTot2" runat="server" Text="Totale ricavi: "></asp:Label>
    <asp:Label ID="lblTotStud" runat="server" Text=""></asp:Label>
    <asp:Literal ID="ltlUtili" runat="server" Text=""></asp:Literal>
    <asp:Label ID="lblUtili" runat="server" Text=""></asp:Label>

</asp:Content>

