<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEAdmin.master" AutoEventWireup="true" CodeFile="GestioneTutor.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Abilitazione tutor e contabili</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <br />
    <br />
    <br />
    <br />

    <div id="abilitaz">

        <h1>Abilitazione tutor e contabili</h1>

        <div id="pulsanti">

            <asp:Button ID="btnAbilita" runat="server" ClientIDMode="Static" Text="Cambia stato" Enabled="False" CssClass="button" />
            <%--Link temporaneo finché non si decide come fare i popup--%>
            <a href="Popup/Abilita.aspx">Cambia stato</a>

            <asp:Button ID="btnAggiorna" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiorna_Click" CssClass="button" />
        </div>
        <%-- Tabella che contiene utenti T o C --%>

        <asp:GridView ID="gridUtentiTC" runat="server" DataKeyNames="Chiave" AutoGenerateColumns="false" OnSelectedIndexChanged="gridUtentiTC_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Chiave" Visible="false" />
                <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                <asp:BoundField DataField="Usr" Visible="false" />
                <asp:BoundField DataField="Pwd" Visible="false" />
                <asp:BoundField DataField="Cognome" HeaderText="Cognome" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" />
                <asp:BoundField DataField="Figura" Visible="false" />
                <asp:BoundField DataField="Abilitato" HeaderText="Abilitato" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="true" />
            </Columns>

        </asp:GridView>
    </div>
</asp:Content>

