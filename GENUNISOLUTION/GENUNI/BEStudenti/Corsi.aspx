<%@ Page Title="" Language="C#" MasterPageFile="~/BEStudenti/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Corsi.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Clicca sulla materia per il materiale didattico"></asp:Label>
    <asp:GridView ID="grigliaMaterie" runat="server" OnSelectedIndexChanged="grigliaMaterie_SelectedIndexChanged">
        <Columns>
            <asp:ButtonField Text="link" />
        </Columns>
    </asp:GridView>

    <asp:Label ID="Label3" runat="server" Text="Test Disponibili"></asp:Label>
    <asp:GridView ID="grigliaTest" runat="server"></asp:GridView>

    <asp:Label ID="Label2" runat="server" Text="Scarica Attestato"></asp:Label>
    <asp:Button ID="btnAttestato" runat="server" Text="Scarica" />


    <asp:Label ID="Label4" runat="server" Text="Forum"></asp:Label>
    <asp:TextBox ID="txtForum" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:Button ID="btnInvia" runat="server" Text="Invia" />
</asp:Content>

