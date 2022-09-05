<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEAdmin.master" AutoEventWireup="true" CodeFile="GestioneCorsi.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Creazione e assegnazione corsi</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <br />
    <br />
    <br />
    <br />

    <div id="creazcorsi">
        <h1>Creazione e modifica corsi</h1>
        <div class="pulsanti">
            <asp:Button ID="btnInserisci" runat="server" ClientIDMode="Static" Text="Crea nuovo corso" CssClass="button" />
            <asp:Button ID="btnModifica" runat="server" ClientIDMode="Static" Enabled="False" Text="Modifica corso selezionato" CssClass="button" />
            <asp:Button ID="btnVisualizzaInfo" runat="server" ClientIDMode="Static" Enabled="False" Text="Visualizza informazioni corso" OnClick="btnVisualizzaInfo_Click" CssClass="button" />
            <%--Link temporanei finché non si decide come fare i popup--%>
            <a href="Popup/InserisciCorsi.aspx">Crea nuovo corso</a>
            <a href="Popup/ModificaCorsi.aspx">Modifica corso selezionato</a>
            <a href="Popup/VisualizzaInfo.aspx">Visualizza informazioni corso</a>


            <asp:Button ID="btnAggiornaCreazione" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiornaCreazione_Click" CssClass="button" />
        </div>

        <asp:GridView ID="gridCreazioneCorsi" runat="server" DataKeyNames="Chiave,Cod_Utente" AutoGenerateColumns="False" OnSelectedIndexChanged="gridCreazioneCorsi_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Chiave" Visible="false" />
                <asp:BoundField DataField="Cod_Utente" Visible="false"/>
                <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                <asp:BoundField DataField="Nome" HeaderText="Nome Tutor"  ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />
                <asp:BoundField DataField="Cognome" HeaderText="Cognome Tutor"  ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />

                <asp:BoundField DataField="Data_Creazione" HeaderText="Data Creazione" />
                <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                <asp:BoundField DataField="Descrizione" Visible="false" />
                <asp:BoundField DataField="Data_Partenza" HeaderText="Data Partenza" />
                <asp:BoundField DataField="Status_Corsi" HeaderText="Status" />
                <asp:BoundField DataField="Data_Status" HeaderText="Data Status" />
                <asp:BoundField DataField="Costo" Visible="false" />
                <asp:BoundField DataField="Avatar_Corso" Visible="false" />
                <asp:BoundField DataField="Tipo_Img" Visible="false" />

                <asp:CommandField ButtonType="Button" ShowSelectButton="true" />
            </Columns>
        </asp:GridView>
    </div>
    <div id="assegnazcorsi">
        <h1>Assegnazione corsi</h1>
        <div class="pulsanti">
            <asp:Button ID="btnAssegna" runat="server" ClientIDMode="Static" Enabled="False" Text="Assegna corso" CssClass="button" />
            <a href="Popup/AssegnaCorsi.aspx">Assegna corso</a>
            <asp:Button ID="btnAggiornaAssegnazione" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiornaAssegnazione_Click" CssClass="button" />
        </div>

        <asp:GridView ID="gridAssegnazioneCorsi" runat="server" DataKeyNames="Chiave, Cod_Utente" AutoGenerateColumns="false" OnSelectedIndexChanged="gridAssegnazioneCorsi_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Chiave" Visible="false" />
                <asp:BoundField DataField="Cod_Utente" Visible="false" />

                <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                 <asp:BoundField DataField="Nome" HeaderText="Nome Tutor"  ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />
                <asp:BoundField DataField="Cognome" HeaderText="Cognome Tutor"  ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />

                <asp:CommandField ButtonType="Button" ShowSelectButton="true" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

