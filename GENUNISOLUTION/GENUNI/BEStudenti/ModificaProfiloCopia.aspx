<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="ModificaProfiloCopia.aspx.cs" Inherits="Modifica_Profilo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/StyleStudenti.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE" id="containerModificaProfilo1">
        <h4 class="titoliBE">MODIFICA PROFILO</h4>
        <table style="margin-top: 16px; text-align: center;">
            <tr>
                <td>
                    <div id="tabella" runat="server">
                        <asp:Label ID="lblRes" runat="server" Text=""></asp:Label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
                    <asp:TextBox ID="txtNome" runat="server" MaxLength="64"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblCognome" runat="server" Text="Cognome"></asp:Label>
                    <asp:TextBox ID="txtCognome" runat="server" MaxLength="64"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblIndirizzo" runat="server" Text="Indirizzo"></asp:Label>
                    <asp:TextBox ID="txtIndirizzo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCitta" runat="server" Text="Città"></asp:Label>
                    <asp:TextBox ID="txtCitta" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblProvincia" runat="server" Text="Provincia"></asp:Label>
                    <asp:TextBox ID="txtProvincia" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblNazionalita" runat="server" Text="Nazionalità"></asp:Label>
                    <asp:TextBox ID="txtNazionalita" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSalva" runat="server" CssClass="btnBE" Text="Salva" OnClick="btnSalva_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>

    <div class="containerBE" style="margin-top: -47px; text-align: center;">
        <h4 class="titoliBE">MODIFICA PASSWORD</h4>
        <table style="margin-top: 16px; text-align: center;">
            <tr>
                <td>
                    <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblUser" runat="server" Text="User"></asp:Label>
                    <asp:TextBox ID="txtUser" runat="server" MaxLength="64"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" MaxLength="64"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <%--<td>&nbsp;</td>--%>
                <td colspan="2">
                    <asp:Button ID="btnSalvaPass" runat="server" Text="Salva" OnClick="btnSalvaPass_Click" />
                </td>
                <%--<td>&nbsp;</td>--%>
            </tr>
        </table>
    </div>
</asp:Content>

