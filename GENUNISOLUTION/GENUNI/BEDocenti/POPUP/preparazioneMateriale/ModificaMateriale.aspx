<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificaMateriale.aspx.cs" Inherits="BEDocenti_POPUP_preparazioneMateriale_ModificaMateriali" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblTipo" runat="server" Text="Tipo: "></asp:Label>
                        <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblIndice" runat="server" Text="Indice:"></asp:Label>
                        <asp:TextBox ID="txtIndice" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLink" runat="server" Text="Link: "></asp:Label>
                        <asp:TextBox ID="txtLink" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMateriale" runat="server" Text="Carica materiale: "></asp:Label>
                        <asp:FileUpload ID="fupMateriale" runat="server"></asp:FileUpload>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTitoloMateriale" runat="server" Text="Titolo materiale:"></asp:Label>
                        <asp:TextBox ID="txtTitoloMateriale" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTipoMateriale" runat="server" Text="Tipo materiale:"></asp:Label>
                        <asp:TextBox ID="txtTipoMateriale" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDescrizione" runat="server" Text="Descrizione: "></asp:Label>
                        <asp:TextBox ID="txtDescrizione" runat="server"></asp:TextBox></td>
                </tr>
            </table>

            <asp:Button ID="btnModificaMateriale" runat="server" Text="Modifica " />
        </div>
    </form>
</body>
</html>
