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
     
    <asp:Button ID="btnAggiorna" runat="server" Text="Aggiorna storico" OnClick="btnAggiorna_Click" />
</asp:Content>

