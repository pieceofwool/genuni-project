<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Abilita.aspx.cs" Inherits="Admin_Popup_Abilita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Popup Please</h1>
        <div id="popup1" class="popup">
            <a href="GestioneTutor.aspx" class="close">&times;</a>
            <div>
                Sei sicuro/a di voler cambiare lo stato di abilitazione dell'utente selezionato?<br />
                <asp:Button ID="btnAbilita" CssClass="btnBE" runat="server" Text="Modifica stato" OnClick="btnAbilita_Click" />
            </div>
        </div>
        <a href="#" class="close-popup"></a>

    </form>
</body>
</html>
