<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificaPassword.aspx.cs" Inherits="POPUP_profilo_ModificaPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtVecchiaPassword" placeholder="Password attuale" runat="server" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="txtNuovaPassword" placeholder="Nuova password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="txtConfermaNuovaPassword" placeholder="Conferma nuova password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnModificaPassword" runat="server" Text="Modifica Password" OnClick="btnModificaPassword_Click" />
        </div>
    </form>
</body>
</html>
