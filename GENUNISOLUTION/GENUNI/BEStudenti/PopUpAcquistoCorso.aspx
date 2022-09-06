<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PopUpAcquistoCorso.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="conferma" runat="server">
            <p>Sicuro di voler accquistare questo corso?</p>
            <asp:Button ID="btnAcquista" runat="server" Text="Acquista" OnClick="btnAcquista_Click" />
        </div>
        <div>
            <asp:Label ID="lblErrore" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
