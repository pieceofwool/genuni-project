<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InserisciCorsi.aspx.cs" Inherits="Admin_Popup_InserisciCorsi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lbl" CssClass="lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <asp:DropDownList ID="ddlUtenti" ToolTip="Tutor assegnato" runat="server"></asp:DropDownList><br />
                    </td>
                </tr>--%>
                <tr>
                    <td>
                        <asp:FileUpload ID="fupAvatar" runat="server" ToolTip="Avatar" accept=".png,.jpg,.jpeg" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtTitolo" CssClass="txt" runat="server" PlaceHolder="Titolo"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:TextBox ID="txtTipo" CssClass="txt" runat="server" PlaceHolder="Tipo"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:TextBox ID="txtDescrizione" CssClass="txt" runat="server" PlaceHolder="Descrizione"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:TextBox ID="txtDataPartenza" CssClass="txt" runat="server" ToolTip="Data Partenza" TextMode="Date"></asp:TextBox><br />
                    </td>
                </tr>

                <tr>
                    <td>

                        <asp:Button ID="btnInserisci" CssClass="btnBE" runat="server" Text="Inserisci" OnClick="btnInserisci_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
