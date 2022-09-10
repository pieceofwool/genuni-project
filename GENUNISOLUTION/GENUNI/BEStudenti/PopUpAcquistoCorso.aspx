<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PopUpAcquistoCorso.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../assets/css/StylePopUp.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="content" style="width: 100%;">
            <table>
                <tr>
                    <td id="conferma" runat="server">
                        <asp:Label ID="lblTitolo" CssClass="lblP" runat="server" Text="Sicuro di voler acquistare questo corso?"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td id="bottoni" runat="server">
                        <asp:Button ID="btnAcquista" CssClass="btnBE" runat="server" Text="Acquista" OnClick="btnAcquista_Click" />
                        <asp:Label ID="lblErrore" CssClass="lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
