<%@ Page Language="C#" AutoEventWireup="true" CodeFile="definisciCorso.aspx.cs" Inherits="BETutor_POPUP_preparazione_corso_definisciCorso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
        <tr>
            <td>
                <%--titolo--%>
                <asp:Label ID="lblTitolo" runat="server" Text="Titolo:"></asp:Label><br />
                <asp:TextBox ID="txtTitolo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--tipo--%>
                <asp:Label ID="lblTipo" runat="server" Text="Tipo: "></asp:Label><br />
                <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--descrizione--%>
                <asp:Label ID="lblDescrizione" runat="server" Text="Descrizione: "></asp:Label><br />
                <asp:TextBox ID="txtDescrizione" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--data di partenza--%>
                <asp:Label ID="lblDataDiPartenza" runat="server" Text="Data di partenza: "></asp:Label><br />
                <asp:TextBox ID="txtDataDiPartenza" runat="server" TextMode="DateTime"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--scelta dell' avatar del corso (formato estratto dal bottone "aggiungi corso")--%>
                <asp:Label ID="lblAvatar" runat="server" Text="Immagine Profilo: "></asp:Label>
                <asp:FileUpload ID="UploadAvatar" runat="server" />
            </td>
        </tr>
    </table>
            <%--bottone inserisci corso--%>
        <asp:Button ID="btnInserisciCorso" runat="server" Text="Aggiungi corso" OnClick="btnInserisciCorso_Click" />
        </div>
    </form>
</body>
</html>
