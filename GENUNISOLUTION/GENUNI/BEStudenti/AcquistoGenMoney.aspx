<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AcquistoGenMoney.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="pacchetto" runat="server">
            <p>Quanti GenMoney vuoi acquistare?</p>
            <asp:DropDownList ID="ddlPacchetto" runat="server">
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>100</asp:ListItem>
                <asp:ListItem>200</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnCompra" runat="server" Text="Compra" OnClick="btnCompra_Click" />
        </div>
        <div>
            <asp:Label ID="lblC" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnConferma" runat="server" Text="Conferma" OnClick="btnConferma_Click" Visible="False" />
        </div>
    </form>
</body>
</html>
