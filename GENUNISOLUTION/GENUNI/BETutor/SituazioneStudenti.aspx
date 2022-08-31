<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="SituazioneStudenti.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <br />
    <br />
    <br />
    <br />

    <div>
        <%--elenco studenti con carosel simile a asssegnazioneDocenti--%>

        <%--più info sullo studente selezionato--%>
        <%--label per nome e cognome--%>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>

        <%-- foto profilo --%>
        <asp:Image ID="Image1" runat="server" />

        <%-- corsi in corso --%>
        <asp:Literal ID="Literal2" runat="server"></asp:Literal>

        <%-- storico corsi --%>
        <asp:Literal ID="Literal3" runat="server"></asp:Literal>
    </div>
</asp:Content>

