<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InserisciCorsi.aspx.cs" Inherits="Admin_Popup_InserisciCorsi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../assets/css/StylePopUp.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" style="zoom:100%;">
        <div id="content" style="width: 100%;">
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbl" CssClass="lblP" runat="server" Text=""></asp:Label>
                        <asp:Label ID="lblAvatar" runat="server" CssClass="lblP" Text="Avatar corso:"></asp:Label>
                    </td>

                </tr>
                <%--<tr>
                    <td>
                        <asp:DropDownList ID="ddlUtenti" ToolTip="Tutor assegnato" runat="server"></asp:DropDownList><br />
                    </td>
                </tr>--%>
                <tr>
                    <td>
                        <asp:FileUpload ID="fupAvatar" runat="server" accept=".png,.jpg,.jpeg" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblTitolo" CssClass="lblP" runat="server" Text="Titolo:"></asp:Label>
                        <asp:TextBox ID="txtTitolo" CssClass="txt" runat="server"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTipo" CssClass="lblP" runat="server" Text="Tipo:"></asp:Label>
                        <asp:TextBox ID="txtTipo" CssClass="txt" runat="server"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDescrizione" CssClass="lblP" runat="server" Text="Descrizione:"></asp:Label>
                        <asp:TextBox ID="txtDescrizione" CssClass="txt" runat="server"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDataPartenza" CssClass="lblP" runat="server" Text="Data partenza:"></asp:Label>
                        <asp:TextBox ID="txtDataPartenza" CssClass="txt" runat="server" TextMode="Date"></asp:TextBox><br />
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnInserisci" CssClass="btnBE" runat="server" Text="Inserisci" OnClick="btnInserisci_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
