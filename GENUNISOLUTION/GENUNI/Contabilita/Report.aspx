<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%-- DATA INIZIO REPORT --%>
    <asp:Label ID="lblDataInizio" runat="server" Text="Dal"></asp:Label>
    <asp:TextBox ID="txtDataInizio" runat="server" TextMode="Date"></asp:TextBox>
    <%-- DATA FINE REPORT --%>
    <asp:Label ID="lblDataFine" runat="server" Text="Al"></asp:Label>
    <asp:TextBox ID="txtDataFine" runat="server" TextMode="Date"></asp:TextBox>
    <hr />
    <br />
    <%-- GRIGLIA DI VISUALIZZAZIONE VALUTAZIONE CORSI --%>
    <asp:GridView ID="grigliaReport" runat="server"></asp:GridView>
</asp:Content>

