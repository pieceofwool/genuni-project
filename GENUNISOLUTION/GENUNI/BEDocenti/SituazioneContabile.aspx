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
    <asp:GridView style="width:1300px" ID="grvStoricoCorsi" runat="server"></asp:GridView>
     
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

