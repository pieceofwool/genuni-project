<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="DefinizioneMaterie.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <%-- titolo --%>
        <asp:Label ID="Label1" runat="server" Text="Titolo: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <%-- descrizione --%>
        <asp:Label ID="Label2" runat="server" Text="Descrizione: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

        <%-- indice --%>
        <asp:Label ID="Label3" runat="server" Text="Indice: "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

        <%-- inserisci materia --%>
        <asp:Button ID="Button1" runat="server" Text="Inserisci Materia" />
    </div>
</asp:Content>

