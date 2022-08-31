<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="BEContabilita_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />
    <br />
    <br />

    <%-- SCELTA REPORT --%>
    <asp:RadioButton ID="rdbDocenti" runat="server" Text="Docenti" GroupName="Report" Checked="True" />
    <asp:RadioButton ID="rdbStudenti" runat="server" Text="Studenti" GroupName="Report" />
    <hr />
    <%-- DATA INIZIO REPORT --%>
    <asp:Label ID="lblDataInizio" runat="server" Text="Dal"></asp:Label>
    <asp:TextBox ID="txtDataInizio" runat="server" TextMode="Date"></asp:TextBox>
    <%-- DATA FINE REPORT --%>
    <asp:Label ID="lblDataFine" runat="server" Text="Al"></asp:Label>
    <asp:TextBox ID="txtDataFine" runat="server" TextMode="Date"></asp:TextBox>
    <%-- BUTTON CONFERMA --%>
    <asp:Button ID="btnInvia" runat="server" Text="Invia" />
    <hr />
    <%-- GRIGLIA DI VISUALIZZAZIONE REPORT DOCENTI --%>
    <asp:GridView ID="grigliaReportDocenti" runat="server"></asp:GridView>
    <asp:Label ID="Label1" runat="server" Text="Totale"></asp:Label>
    <asp:Label ID="lblTotaleDocenti" runat="server" Text=""></asp:Label>
    <%-- GRIGLIA DI VISUALIZZAZIONE REPORT STUDENTI --%>
    <asp:GridView ID="grigliaReportStudenri" Visible="false" runat="server"></asp:GridView>
    <asp:Label ID="Label2" runat="server" Text="Totale" Visible="False"></asp:Label>
    <asp:Label ID="lblTotaletudenti" Visible="false" runat="server" Text=""></asp:Label>

</asp:Content>

