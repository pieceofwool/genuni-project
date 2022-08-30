<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilità.master" AutoEventWireup="true" CodeFile="Valutazione.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <%-- DATA INIZIO VALUTAZIONE --%>
    <asp:Label ID="lblDataInizio" runat="server" Text="Dal"></asp:Label>
    <asp:TextBox ID="txtDataInizio" runat="server" TextMode="Month"></asp:TextBox>
    <%-- DATA FINE VALUTAZIONE --%>
    <asp:Label ID="lblDataFine" runat="server" Text="Al"></asp:Label>
    <asp:TextBox ID="txtDataFine" runat="server" TextMode="Month"></asp:TextBox>
    <hr />
    <br />
    <%-- GRIGLIA DI VISUALIZZAZIONE VALUTAZIONE CORSI --%>
    <asp:GridView ID="grigliaValutazione" runat="server"></asp:GridView>
</asp:Content>

