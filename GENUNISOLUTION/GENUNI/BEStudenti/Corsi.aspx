<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Corsi.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE" >
        <h4 class="titoliBE">
            <asp:Label ID="lblTitoloCorso" CssClass="lbl" runat="server" Text=""></asp:Label>
        </h4>
        <table class="tablePopUp" style="width: 90%;">
            <tr>
                <td>
                    <h5 cssclass="h5Sottotitoli" style="text-align: center; margin-top: 0px;" runat="server">Clicca sulla materia per il materiale didattico</h5>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="grigliaMaterie" CssClass="griglia" runat="server" DataKeyNames="Chiave" AutoGenerateColumns="False" OnSelectedIndexChanged="grigliaMaterie_SelectedIndexChanged">
                        <columns>
                            <asp:BoundField DataField="Chiave" Visible="false" />
                            <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                            <asp:BoundField DataField="Descrizione" HeaderText="Descrizione" />
                            <asp:BoundField DataField="Docente" HeaderText="Docente" />
                            <asp:BoundField DataField="Accettato" Visible="false" />
                            <asp:BoundField DataField="Preparato" Visible="false" />
                            <asp:BoundField DataField="Data_Risposta" Visible="false" />
                            <asp:CommandField ButtonType="Button" SelectText="Accedi alle materie" ShowSelectButton="true">
                                <controlstyle cssclass="btnBE" />
                            </asp:CommandField>
                        </columns>
                        <headerstyle cssclass="headergrid" />
                        <selectedrowstyle cssclass="selezionegrid" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">
                    <br />
                    <br />
                    <asp:Button ID="btnChat" runat="server" Text="Accedi alla chat del corso" CssClass="btnBE" OnClick="btnChat_Click" />
                </td>
            </tr>
            <%-- <table>
            <tr>
                <td id="attestato" runat="server">
                    <asp:Label ID="Label2" runat="server" CssClass="lbl" Text="Scarica Attestato"></asp:Label>
                </td>
                <td class="tdTest">
                    <asp:Button ID="btnAttestato" CssClass="btnBE" runat="server" Text="Scarica" OnClick="btnAttestato_Click" />
                    <asp:Label ID="lblDownload" CssClass="lbl" runat="server" Text=""></asp:Label>
                    <asp:Literal ID="lit" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>--%>
            <tr>
                <td>
                    <asp:Label ID="lblEsito" runat="server" CssClass="lbl btnBE" Text="Label"></asp:Label>
                    <asp:Button ID="btnTest" CssClass="btnBE" runat="server" Text="Esegui Test" OnClick="btnTest_Click" Visible="False" />
                </td>
            </tr>
        </table>
    </div>
    </div>

</asp:Content>

