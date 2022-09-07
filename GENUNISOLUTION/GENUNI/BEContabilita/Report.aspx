<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>

    <div class="containerBE">
        <h4 class="titoliBE">Gestione report</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">

            <%-- SCELTA REPORT --%>
            <asp:CheckBox ID="chkDocenti" CssClass="chk" runat="server" Text="Docenti" GroupName="Report" Checked="True" />
            <asp:CheckBox ID="chkStudenti" CssClass="chk" runat="server" Text="Studenti" GroupName="Report" />
            <hr />
            <%-- DATA INIZIO REPORT --%>
            <asp:Label ID="lblDataInizio" CssClass="lbl" runat="server" Text="Dal"></asp:Label>
            <asp:TextBox ID="txtDataInizio" CssClass="txt" runat="server" TextMode="Date"></asp:TextBox>
            <%-- DATA FINE REPORT --%>
            <asp:Label ID="lblDataFine" CssClass="lbl" runat="server" Text="Al"></asp:Label>
            <asp:TextBox ID="txtDataFine" CssClass="txt" runat="server" TextMode="Date"></asp:TextBox>
            <%-- BUTTON CONFERMA --%>
            <asp:Button ID="btnInvia" CssClass="btnBE" runat="server" Text="Invia" OnClick="btnInvia_Click" />
            <hr />
            <%-- GRIGLIA DI VISUALIZZAZIONE REPORT DOCENTI O STUDENTI --%>
            <asp:Literal ID="ltlDocenti" runat="server" Text=""></asp:Literal>
            <asp:GridView ID="grigliaReportDocenti" CssClass="griglia" runat="server">
                <HeaderStyle />
                <HeaderStyle CssClass="headergrid" />
            </asp:GridView>
            <asp:Label ID="lblTot1" CssClass="lbl" runat="server" Text="Totale spese: "></asp:Label>
            <asp:Label ID="lblTotDoc" CssClass="lbl" runat="server" Text=""></asp:Label>

            <asp:Literal ID="ltlStudenti" runat="server" Text=""></asp:Literal>
            <asp:GridView ID="grigliaReportStudenti" CssClass="griglia" Visible="false" runat="server">
                <HeaderStyle />
                <HeaderStyle CssClass="headergrid" />
            </asp:GridView>
            <asp:Label ID="lblTot2" CssClass="lbl" runat="server" Text="Totale ricavi: "></asp:Label>
            <asp:Label ID="lblTotStud" CssClass="lbl" runat="server" Text=""></asp:Label>
            <asp:Literal ID="ltlUtili" runat="server" Text=""></asp:Literal>
            <asp:Label ID="lblUtili" CssClass="lbl" runat="server" Text=""></asp:Label>
            </td>
                </tr>
            <tr>
                <td>
                    </td>
            </tr>
        </table>
    </div>


</asp:Content>

