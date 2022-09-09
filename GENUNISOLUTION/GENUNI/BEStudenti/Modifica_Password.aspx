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
            <div id="tabella" runat="server">
                <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
            </div>
            <tr>
                <td>
                    <asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" MaxLength="64"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblConfermaPassw" runat="server" Text="Conferma password"></asp:Label>
                    <asp:TextBox ID="txtConfermaPassw" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <tr>
                        <%--<td>&nbsp;</td>--%>
                        <td colspan="3">
                            <asp:Button ID="Button1" runat="server" CssClass="btnBE" Text="Modifica" OnClick="btnSalvaPass_Click" />
                        </td>
                        <%--<td>&nbsp;</td>--%>
                    </tr>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

