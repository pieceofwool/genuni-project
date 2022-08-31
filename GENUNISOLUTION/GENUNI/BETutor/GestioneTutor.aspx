<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="GestioneTutor.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%--<asp:Table ID="table" runat="server"></asp:Table>--%>
    <%--griglia per visualizzare i corsi attivi--%>
    <br />
    <br />
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <ul>
        <li><a href="PreparazioneCorso.aspx">Preparazione Corso</a></li>
    </ul>
    <ul>
        <li><a href="PreparazioneTest.aspx">Accesso test (corso)</a></li>
    </ul>
    <ul>
        <li><a href="SituazioneCorsi.aspx">Situazione corsi</a></li>
    </ul>
    <ul>
        <li><a href="SituazioneStudenti.aspx">Situazione studenti</a></li>
    </ul>
    <ul>
        <li><a href="Chat.aspx">Chat di aiuto</a></li>
    </ul>

</asp:Content>

