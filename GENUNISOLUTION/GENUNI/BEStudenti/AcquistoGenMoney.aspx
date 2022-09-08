<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AcquistoGenMoney.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../assets/css/stylePopUp.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="pacchetto" runat="server">
            <p class="lblPTitolo">Quanti GenMoney vuoi acquistare?</p>
            
            <asp:RadioButton ID="rdbPacchetto1" runat="server" GroupName="Pacchetto" Checked="True" Text="50" /> <img src="../img/genMoney2.png" style="height:20px;"/>
            &nbsp
            <asp:RadioButton ID="rdbPacchetto2" runat="server" GroupName="Pacchetto" Text="100" /><img src="../img/genMoney2.png" style="height:30px;"/>
            &nbsp
            <asp:RadioButton ID="rdbPacchetto3" runat="server" GroupName="Pacchetto" Text="200"/><img src="../img/genMoney2.png" style="height:40px;"/>
            <br />
            <asp:Button ID="btnCompra" CssClass="btnBE" runat="server" Text="Compra" OnClick="btnCompra_Click" />
        </div>
        <div>
            <asp:Label ID="lblC" CssClass="lblP" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnConferma" CssClass="btnBE" runat="server" Text="Conferma" OnClick="btnConferma_Click" Visible="False" />
        </div>
    </form>
</body>
</html>
