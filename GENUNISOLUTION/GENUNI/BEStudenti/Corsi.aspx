<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Corsi.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Clicca sulla materia per il materiale didattico"></asp:Label>
    <asp:GridView ID="grigliaMaterie" runat="server" OnSelectedIndexChanged="grigliaMaterie_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="Accedi alle materie" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>

    <div id="attestato" runat="server">
        <asp:Label ID="Label2" runat="server" Text="Scarica Attestato"></asp:Label>
        <asp:Button ID="btnAttestato" runat="server" Text="Scarica" />
    </div>




</asp:Content>

