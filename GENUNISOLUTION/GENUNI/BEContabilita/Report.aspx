<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="BEContabilita_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
            <h4 class="titoliBE">Report contabilita'</h4>
        <table>
            <tr>
                <td>
                    <%-- SCELTA REPORT --%>
                    <asp:RadioButton ID="rdbDocenti" runat="server" CssClass="rdb" Text="Docenti" GroupName="Report" Checked="True" />
                    <asp:RadioButton ID="rdbStudenti" CssClass="rdb" runat="server" Text="Studenti" GroupName="Report" />
                </td>
            </tr>
            <tr>
                <td>
                    <hr />
                    <%-- DATA INIZIO REPORT --%>
                    <asp:Label ID="lblDataInizio" CssClass="lbl" runat="server" Text="Dal"></asp:Label>
                    <asp:TextBox ID="txtDataInizio" CssClass="txt" runat="server" TextMode="Date"></asp:TextBox>
                    <%-- DATA FINE REPORT --%>
                    <asp:Label ID="lblDataFine" CssClass="lbl" runat="server" Text="Al"></asp:Label>
                    <asp:TextBox ID="txtDataFine" CssClass="txt" runat="server" TextMode="Date"></asp:TextBox>
                    <%-- BUTTON CONFERMA --%>
                    <asp:Button ID="btnInvia" CssClass="btnBE" runat="server" Text="Invia" />
                    <hr />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <%-- GRIGLIA DI VISUALIZZAZIONE REPORT DOCENTI O STUDENTI --%>
                    <asp:GridView ID="grigliaReportDocenti" runat="server"></asp:GridView>
                    <asp:GridView ID="grigliaReportStudenri" Visible="false" runat="server"></asp:GridView>
                    <asp:Label ID="Label1" CssClass="lbl" runat="server" Text="Totale"></asp:Label>
                    <asp:Label ID="lblTotale" CssClass="lbl" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

