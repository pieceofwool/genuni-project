<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificaAvatar.aspx.cs" Inherits="PopUp_Profilo_InserisciProfilo_Competenze" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../assets/css/StylePopUp.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblTitolo" CssClass="lblP" runat="server" Text="Seleziona immagine:"></asp:Label>
                        <br />
                        <asp:FileUpload ID="FileUploadAvatar" runat="server" />
                        <br />
                        <asp:Button ID="btnAvatar" CssClass="btnBE" runat="server" Text="Modifica avatar" OnClick="btnAvatar_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
