<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificaProgrammi.aspx.cs" Inherits="BEDocenti_POPUP_inserimentoProgrammi_ModificaProgrammi" %>

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
                        <asp:Label ID="lblTipo" runat="server" Text="Tipo: "></asp:Label>
                        <asp:DropDownList ID="ddlTipo" runat="server" OnSelectedIndexChanged="ddlTipo_SelectedIndexChanged" >
                            <asp:ListItem Value="1">Link lezione frontale</asp:ListItem>
                            <asp:ListItem Value="2">Link video</asp:ListItem>
                            <asp:ListItem Value="3">Materiale</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblIndice" runat="server" Text="Indice: "></asp:Label>
                        <asp:TextBox ID="txtIndice" placeholder="es. 1, 2, 3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLink" runat="server" Text="Link: "></asp:Label>
                        <asp:TextBox ID="txtLink" placeholder="Link delle lezioni o video" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMateriale" runat="server" Text="Carica materiale: "></asp:Label>
                        <asp:FileUpload ID="fupMateriale" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTipoMateriale" runat="server" Text="tipo materiale: "></asp:Label>
                        <asp:TextBox ID="txtTipoMateriale" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTitolo" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="txtTitolo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDescrizione" runat="server" Text="Descrizione: "></asp:Label>
                        <asp:TextBox ID="txtDescrizione" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
