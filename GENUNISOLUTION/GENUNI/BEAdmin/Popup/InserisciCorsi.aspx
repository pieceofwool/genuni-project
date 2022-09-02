<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InserisciCorsi.aspx.cs" Inherits="Admin_Popup_InserisciCorsi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
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
                        <asp:TextBox ID="txtTitolo" runat="server" PlaceHolder="Titolo"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:TextBox ID="txtTipo" runat="server" PlaceHolder="Tipo"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:TextBox ID="txtDescrizione" runat="server" PlaceHolder="Descrizione"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:TextBox ID="txtDataPartenza" runat="server" PlaceHolder="Data Partenza" TextMode="Date"></asp:TextBox><br />
                    </td>
                </tr>

                <tr>
                    <td>

                        <asp:Button ID="btnInserisci" runat="server" Text="Inserisci" OnClick="btnInserisci_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
