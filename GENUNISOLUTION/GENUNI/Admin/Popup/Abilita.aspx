<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Abilita.aspx.cs" Inherits="Admin_Popup_Abilita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Sei sicuro/a di voler cambiare lo stato di abilitazione dell'utente selezionato?<br />
            <asp:Button ID="btnAbilita" runat="server" Text="Modifica stato" OnClick="btnAbilita_Click" />
        </div>
    </form>
</body>
</html>
