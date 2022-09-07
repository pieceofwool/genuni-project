<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VisualizzaInfo.aspx.cs" Inherits="BEAdmin_Popup_VisualizzaInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <img id="imgAvatar" runat="server" width="100" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTitolo" CssClass="lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTipo" CssClass="lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDescrizione" CssClass="lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTutor" CssClass="lbl" runat="server" Text="Tutor assegnato: "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDataCreazione" CssClass="lbl" runat="server" Text="Data creazione: "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblStatus" CssClass="lbl" runat="server" Text="Status: "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDataStatus" CssClass="lbl" runat="server" Text="Ultima modifica status: "></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
