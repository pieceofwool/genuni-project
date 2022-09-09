<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Corsi.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">

        <h4 class="titoliBE">
            <asp:Label ID="lblTitoloCorso" runat="server" Text=""></asp:Label></h4>

        <table class="tablePopUp">
            <tr>
                <td>
                    <h5 cssclass="h5Sottotitoli" runat="server">Clicca sulla materia per il materiale didattico</h5>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="grigliaMaterie" CssClass="griglia" runat="server" DataKeyNames="Chiave" AutoGenerateColumns="False" OnSelectedIndexChanged="grigliaMaterie_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Chiave" Visible="false" />
                            
                            <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                            <asp:BoundField DataField="Descrizione" HeaderText="Descrizione" />
                            <asp:BoundField DataField="Docente" HeaderText="Docente" />
                            <asp:BoundField DataField="Accettato" Visible="false" />
                            <asp:BoundField DataField="Preparato" Visible="false" />
                            <asp:BoundField DataField="Data_Risposta" Visible="false" />
                            <asp:CommandField ButtonType="Button" SelectText="Accedi alle materie" ShowSelectButton="true">
                                <ControlStyle CssClass="btnBE" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle />
                        <HeaderStyle CssClass="headergrid" />
                        <SelectedRowStyle CssClass="selezionegrid" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
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
        <asp:Label ID="lblEsito" runat="server" Text="Label"></asp:Label>
    </div>

    <asp:Button ID="btnTest" CssClass="btnBE" runat="server" Text="Esegui Test" OnClick="btnTest_Click" />

</asp:Content>

