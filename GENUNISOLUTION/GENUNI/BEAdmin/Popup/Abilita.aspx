<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Abilita.aspx.cs" Inherits="Admin_Popup_Abilita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../assets/css/StylePopUp.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblTitolo" CssClass="lblP" runat="server" Text="Sei sicuro/a di voler cambiare lo stato di abilitazione dell'utente selezionato?"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnAbilita" CssClass="btnBE" runat="server" Text="Modifica stato" OnClick="btnAbilita_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
