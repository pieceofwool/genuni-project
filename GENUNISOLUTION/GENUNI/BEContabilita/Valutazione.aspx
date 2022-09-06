<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Valutazione.aspx.cs" Inherits="BEContabilita_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Gestione Report</h4>
        <table>
            <tr>
                <td>
                    <%-- DATA INIZIO VALUTAZIONE --%>
                    <asp:Label ID="lblDataInizio" CssClass="lbl" runat="server" Text="Dal"></asp:Label>
                    <asp:TextBox ID="txtDataInizio" CssClass="txt" runat="server" TextMode="Month"></asp:TextBox>

                    <%-- DATA FINE VALUTAZIONE --%>
                    <asp:Label ID="lblDataFine" CssClass="lbl" runat="server" Text="Al"></asp:Label>
                    <asp:TextBox ID="txtDataFine" CssClass="txt" runat="server" TextMode="Month"></asp:TextBox>
                    <%-- INVIA DATI --%>
                    <asp:Button ID="btnInvia" CssClass="btnBE" runat="server" Text="Invia" />
                </td>
            </tr>
            <tr>
                <td>
                    <hr />
                    <%-- GRIGLIA DI VISUALIZZAZIONE VALUTAZIONE CORSI --%>
                    <asp:GridView ID="grigliaValutazione" runat="server"></asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

