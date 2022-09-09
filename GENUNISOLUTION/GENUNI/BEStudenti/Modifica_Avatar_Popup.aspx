<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modifica_Avatar_Popup.aspx.cs" Inherits="BEStudenti_Modifica_Avatar_Popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
    <link href="../../assets/css/StylePopUp.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" CssClass="lblPTitolo" Text="Selezione immagine:"></asp:Label>
            <br />

            <asp:FileUpload ID="FileUploadAvatar" CssClass="popUpBtnBE" runat="server" />
            <br />

            <asp:Button ID="btnAvatar" runat="server" CssClass="popUpBtnBE" Text="Modifica Avatar" OnClick="btnAvatar_Click" />
        </div>
    </form>
</body>
</html>
