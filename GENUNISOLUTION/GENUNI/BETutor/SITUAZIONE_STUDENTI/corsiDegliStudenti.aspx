<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="corsiDegliStudenti.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">CORSI STUDENTI</h4>
        <table>
            <tr>
                <td>
                    <%-- storico corsi --%>
                    <asp:GridView ID="grvCorsiStudenti" CssClass="griglia" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Tipo" HeaderText="Categoria" />
                            <asp:BoundField DataField="Titolo" HeaderText="Corso" />
                            <asp:BoundField DataField="Data_Partenza" HeaderText="Data Inizio" />
                        </Columns>
                        <HeaderStyle CssClass="headergrid" />
                        <SelectedRowStyle CssClass="selezionegrid" />
                    </asp:GridView>
                </td>
                <td>
                    <asp:Button ID="btnAggiorna" CssClass="btnBE" runat="server" Text="Aggiorna" OnClick="btnAggiorna_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

