<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InserimentoProgrammi.aspx.cs" Inherits="BEDocenti_POPUP_inserimentoProgrammi_InserimentoProgrammi" %>

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
                            <asp:DropDownList ID="ddlTipo" DataTextField="descrizione" runat="server" OnSelectedIndexChanged="ddlTipo_SelectedIndexChanged" AutoPostBack="True" >
                            <asp:ListItem Value="LF">Link lezione frontale</asp:ListItem>
                            <asp:ListItem Value="LV">Link video</asp:ListItem>
                            <asp:ListItem Value="MA">Materiale</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr runat="server" id="LINK">
                    <td>
                        <asp:Label ID="lblLink" runat="server" Text="Link: "></asp:Label>
                        <asp:TextBox ID="txtLink" placeholder="Link delle lezioni o video" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr runat="server" id="MATERIALE" Visible="false">
                    <td>
                        <asp:Label ID="lblMateriale" runat="server"  Text="Carica materiale: "></asp:Label>
                        <asp:FileUpload ID="fupMateriale" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTitolo" runat="server" Text="Titolo"></asp:Label>
                        <asp:TextBox ID="txtTitolo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDescrizione" runat="server" Text="Descrizione: "></asp:Label>
                        <asp:TextBox ID="txtDescrizione" runat="server" Height="20px"></asp:TextBox>
                    </td>
                </tr>
                    <tr>
                    <td>
                        <asp:Button ID="btnInserisci" runat="server" Text="Inserisci materiale" OnClick="btnInserisci_Click1" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
