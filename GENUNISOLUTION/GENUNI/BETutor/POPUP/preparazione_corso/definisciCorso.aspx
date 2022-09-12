<%@ Page Language="C#" AutoEventWireup="true" CodeFile="definisciCorso.aspx.cs" Inherits="BETutor_POPUP_preparazione_corso_definisciCorso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
        <link href="../../assets/css/StylePopUp.css" rel="stylesheet" />
    </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
        <tr>
            <td>
                <%--titolo--%>
                <asp:Label ID="lblTitolo" CssClass="lblP" runat="server" Text="Titolo:"></asp:Label><br />
                <asp:TextBox ID="txtTitolo" CssClass="txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--tipo--%>
                <asp:Label ID="lblTipo" CssClass="lblP" runat="server" Text="Tipo: "></asp:Label><br />
                <asp:TextBox ID="txtTipo" CssClass="txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--descrizione--%>
                <asp:Label ID="lblDescrizione" CssClass="lblP" runat="server" Text="Descrizione: "></asp:Label><br />
                <asp:TextBox ID="txtDescrizione" CssClass="txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--data di partenza--%>
                <asp:Label ID="lblDataDiPartenza" CssClass="lblP" runat="server" Text="Data di partenza: "></asp:Label><br />
                <asp:TextBox ID="txtDataDiPartenza" CssClass="txt" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--scelta dell' avatar del corso (formato estratto dal bottone "aggiungi corso")--%>
                <asp:Label ID="lblAvatar" CssClass="lblP" runat="server" Text="Immagine Profilo: "></asp:Label><br />
                <asp:FileUpload ID="UploadAvatar" runat="server" />
            </td>
        </tr>
    </table>
            <%--bottone inserisci corso--%>
        <asp:Button ID="btnInserisciCorso" CssClass="btnBE" runat="server" Text="Aggiungi corso" OnClick="btnInserisciCorso_Click" />
        </div>
    </form>
</body>
</html>
