<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="SituazioneContabile.aspx.cs" Inherits="BEDocenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <%--tutti i corsi accettati e che ha svolto e in corso, e i guadagni--%> 
    <asp:GridView ID="grvStoricoCorsi" runat="server"></asp:GridView>
    <asp:Label ID="lblSommaRicavi" runat="server" Text="Somma ricavi dal: "></asp:Label>
    <asp:TextBox ID="txtDataInizio" runat="server" TextMode="Date" ></asp:TextBox>
    <asp:Label ID="lblAl" runat="server" Text="Al: "></asp:Label>
    <asp:TextBox ID="txtDataFine" runat="server" TextMode="Date" ></asp:TextBox>
    <asp:Literal ID="ltlSommaRicavi" runat="server"></asp:Literal>
    <br />
    <asp:Button ID="btnAggiorna" runat="server" Text="Aggiorna storico" OnClick="btnAggiorna_Click" />
    <br />
    <asp:Button ID="btnSomma" runat="server" Text="Somma ricavi" OnClick="btnSomma_Click" />
</asp:Content>

