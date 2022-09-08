<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AcquistoGenMoney.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
    <link href="../assets/css/StylePopUp.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div id="content" style="width: 100%;">
            <table>
                <tr>
                    <td id="pacchetto" runat="server">
                        <asp:Label ID="lblTitolo" CssClass="lblP" runat="server" Text="Quanti GenMoney vuoi acquistare?"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="rdbPacchetto1" runat="server" CssClass="rdb" GroupName="Pacchetto" Checked="True" Text="50" />
                        <img src="../img/genMoney2.png" style="height: 20px;" />
                        <asp:RadioButton ID="rdbPacchetto2" runat="server" CssClass="rdb" GroupName="Pacchetto" Text="100" /><img src="../img/genMoney2.png" style="height: 30px;" />
                        <asp:RadioButton ID="rdbPacchetto3" runat="server" CssClass="rdb" GroupName="Pacchetto" Text="200" /><img src="../img/genMoney2.png" style="height: 40px;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCompra" CssClass="btnBE" runat="server" Text="Acquista" OnClick="btnCompra_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="lblP">
                        <asp:Label ID="lblC" CssClass="lblP" runat="server" Text=""></asp:Label>
                        <asp:Button ID="btnConferma" runat="server" CssClass="btnBE" Text="Conferma" OnClick="btnConferma_Click" Visible="False" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
