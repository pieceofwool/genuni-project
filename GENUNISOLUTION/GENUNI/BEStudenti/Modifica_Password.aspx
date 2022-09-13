<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Modifica_Password.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/StyleStudenti.css" rel="stylesheet" />
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE" style="height: 500px;">
        <h4 class="titoliBE">MODIFICA PASSWORD</h4>
        <table style="margin-top: 16px; text-align: center;">
            <tr>
                <td>
                    <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblVecchiaPass" runat="server" Text="Vecchi password"></asp:Label>
                    <asp:TextBox ID="txtVecchiaPass" runat="server" MaxLength="64" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblPass" runat="server" Text="Nuova password"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" MaxLength="64" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblConfermaPassw" runat="server" Text="Conferma nuova password"></asp:Label>
                    <asp:TextBox ID="txtConfermaPassw" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>

                <%--<td>&nbsp;</td>--%>
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" CssClass="btnBE" Text="Modifica" OnClick="btnSalvaPass_Click" />
                </td>
                <%--<td>&nbsp;</td>--%>
            </tr>

        </table>
    </div>
</asp:Content>

