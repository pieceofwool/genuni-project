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
        <h4 class="titoliBE">GESTIONE COMPENSO</h4>
        <table>
            <tr>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="1">Tutti i Docenti</asp:ListItem>
                        <asp:ListItem Value="2">Singolo Docente</asp:ListItem>
                    </asp:RadioButtonList>

                    <%--        <asp:RadioButton ID="rdbDocente" runat="server" Text="Singolo Docente" Checked="True" GroupName="Docenti" />
        <asp:RadioButton ID="rdbTutti" runat="server" Text="Tutti i Docenti" GroupName="Docenti"/>--%>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table style="margin-top: -29px;">
            <tr>
                <td>
                    <asp:DropDownList ID="ddlDocenti" CssClass="ddl" runat="server" Enabled="False" AutoPostBack="True" OnSelectedIndexChanged="ddlDocenti_SelectedIndexChanged"></asp:DropDownList>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblDal" CssClass="lbl" runat="server" Text="Dal" Style="font-size: 16px;"></asp:Label>
                    <asp:TextBox ID="txtDataInzio" CssClass="txtDate" runat="server" TextMode="Date" Style="font-size: 16px;"></asp:TextBox>
                    <asp:Label ID="lblAl" CssClass="lbl" runat="server" Text="Al" Style="font-size: 16px;"></asp:Label>
                    <asp:TextBox ID="txtDataFine" CssClass="txtDate" runat="server" TextMode="Date" Style="font-size: 16px;"></asp:TextBox>
                    <asp:Button ID="btnCarica" CssClass="btnBE" runat="server" Text="Carica" OnClick="btnCarica_Click" />
                </td>
            </tr>
        </table>
        <table>
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
