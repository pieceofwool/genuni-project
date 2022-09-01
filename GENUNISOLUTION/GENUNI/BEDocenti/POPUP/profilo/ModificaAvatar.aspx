<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificaAvatar.aspx.cs" Inherits="PopUp_Profilo_InserisciProfilo_Competenze" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            Seleziona immagine :
            <br />

            <asp:FileUpload ID="FileUploadAvatar" runat="server" />
            <br />

            <asp:Button ID="btnAvatar" runat="server" Text="Modifica Avatar" OnClick="btnAvatar_Click" />
        </div>
    </form>
</body>
</html>
