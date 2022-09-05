<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEAdmin.master" AutoEventWireup="true" CodeFile="GestioneTutor.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
            <h4 class="titoliBE">Abilitazione tutor e contabili</h4>
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnAbilita" runat="server" ClientIDMode="Static" Text="Cambia stato" Enabled="False" CssClass="btnBE" />
                    <%--Link temporaneo finché non si decide come fare i popup--%>
                    <%--<a href="Popup/Abilita.aspx">Cambia stato</a>--%>

                    <asp:Button ID="btnAggiorna" runat="server" Text="Aggiorna Griglia" OnClick="btnAggiorna_Click" CssClass="btnBE" />
                </td>
            </tr>
            <tr>
                <td>
                    <%-- Tabella che contiene utenti T o C --%>
                    <asp:GridView ID="gridUtentiTC" runat="server" DataKeyNames="Chiave" AutoGenerateColumns="false" OnSelectedIndexChanged="gridUtentiTC_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Chiave" Visible="false" />
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                            <asp:BoundField DataField="Usr" Visible="false" />
                            <asp:BoundField DataField="Pwd" Visible="false" />
                            <asp:BoundField DataField="Cognome" HeaderText="Cognome" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" />
                            <asp:BoundField DataField="Figura" HeaderText="Figura" />
                            <asp:BoundField DataField="Abilitato" HeaderText="Abilitato" />
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

