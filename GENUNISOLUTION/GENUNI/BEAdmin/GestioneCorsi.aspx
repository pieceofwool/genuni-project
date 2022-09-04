<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEAdmin.master" AutoEventWireup="true" CodeFile="GestioneCorsi.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
            <h4 class="titoliBE">Creazione e modifica corsi</h4>
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnInserisci" CssClass="btnBE" runat="server" ClientIDMode="Static" Text="Crea nuovo corso" />
                    <asp:Button ID="btnModifica" CssClass="btnBE" runat="server" ClientIDMode="Static" Enabled="False" Text="Modifica corso selezionato" />
                    <asp:Button ID="btnVisualizzaInfo" CssClass="btnBE" runat="server" ClientIDMode="Static" Enabled="False" Text="Visualizza informazioni corso" OnClick="btnVisualizzaInfo_Click" />
                    <%--Link temporanei finché non si decide come fare i popup--%>
                    <%-- <a href="Popup/InserisciCorsi.aspx">Crea nuovo corso</a>
            <a href="Popup/ModificaCorsi.aspx">Modifica corso selezionato</a>
            <a href="Popup/VisualizzaInfo.aspx">Visualizza informazioni corso</a>--%>
                    <asp:Button ID="btnAggiornaCreazione" CssClass="btnBE" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiornaCreazione_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gridCreazioneCorsi" runat="server" DataKeyNames="Chiave,Cod_Utente" AutoGenerateColumns="False" OnSelectedIndexChanged="gridCreazioneCorsi_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Chiave" Visible="false" />
                            <asp:BoundField DataField="Cod_Utente" Visible="false" />
                            <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome Tutor" ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />
                            <asp:BoundField DataField="Cognome" HeaderText="Cognome Tutor" ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />

                            <asp:BoundField DataField="Data_Creazione" HeaderText="Data Creazione" />
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                            <asp:BoundField DataField="Descrizione" HeaderText="Descrizione" />
                            <asp:BoundField DataField="Data_Partenza" HeaderText="Data PartenSza" />
                            <asp:BoundField DataField="Status_Corsi" HeaderText="Status Corsi" />
                            <asp:BoundField DataField="Data_Status" HeaderText="Data Status" />
                            <asp:BoundField DataField="Costo" Visible="false" />
                            <asp:BoundField DataField="Avatar_Corso" Visible="false" />
                            <asp:BoundField DataField="Tipo_Img" Visible="false" />
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true" />
                        </Columns>
                    </asp:GridView>
                    <hr />
                </td>
            </tr>
        </table>
        <div class="titoliBE">
            <h4>Assegnazione corsi</h4>
        </div>
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnAssegna" runat="server" ClientIDMode="Static" Enabled="False" Text="Assegna corso" CssClass="btnBE" />
                    <%--<a href="Popup/AssegnaCorsi.aspx">Assegna corso</a>--%>
                    <asp:Button ID="btnAggiornaAssegnazione" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiornaAssegnazione_Click" CssClass="btnBE" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gridAssegnazioneCorsi" runat="server" DataKeyNames="Chiave, Cod_Utente" AutoGenerateColumns="false" OnSelectedIndexChanged="gridAssegnazioneCorsi_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Chiave" Visible="false" />
                            <asp:BoundField DataField="Cod_Utente" Visible="false" />

                            <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome Tutor" ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />
                            <asp:BoundField DataField="Cognome" HeaderText="Cognome Tutor" ConvertEmptyStringToNull="False" NullDisplayText="Non assegnato" />

                            <asp:CommandField ButtonType="Button" ShowSelectButton="true" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <ul>
                    <%--    <li><a href="Popup/Abilita.aspx">Abilita</a></li>--%>
                        <li><a href="Popup/AssegnaCorsi.aspx">Assegna corsi</a></li>
                        <li><a href="Popup/InserisciCorsi.aspx">Inserisci corsi</a></li>
                        <li><a href="Popup/ModificaCorsi.aspx">Modifica corsi</a></li>
                        <li><a href="Popup/VisualizzaInfo.aspx">Visualizza info</a></li>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

