<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Compenso.aspx.cs" Inherits="BEContabilita_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>

    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Compenso</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">

                    <asp:RadioButton ID="rdbDocente" CssClass="rbd" runat="server" Text="Singolo Docente" Checked="True" GroupName="Docenti" />
                    <asp:RadioButton ID="rdbTutti" CssClass="rbd" runat="server" Text="Tutti i Docenti" GroupName="Docenti" />
                    <br />
                    <asp:DropDownList ID="ddlDocenti" CssClass="ddl" runat="server" Enabled="False"></asp:DropDownList>
                    <asp:Label ID="lblDal" CssClass="lbl" runat="server" Text="Dal"></asp:Label>
                    <asp:TextBox ID="txtDataInzio" CssClass="txt" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:Label ID="lblAl" runat="server" CssClass="lbl" Text="Al"></asp:Label>
                    <asp:TextBox ID="txtDataFine" CssClass="txt" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:Button ID="btnInvia" CssClass="btnBE" runat="server" Text="Invia" OnClick="btnInvia_Click" />
                </td>
            </tr>
            <tr>
                <td>

                    <asp:GridView ID="grdDocente" CssClass="griglia" runat="server">
                        <HeaderStyle />
                        <HeaderStyle CssClass="headergrid" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
