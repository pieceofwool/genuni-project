<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Modifica_Profilo.aspx.cs" Inherits="Modifica_Profilo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/StyleStudenti.css" rel="stylesheet" />
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
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
                    <asp:Button ID="btnSalva" runat="server" Text="Modifica" CssClass="btnBE" OnClick="btnSalva_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

