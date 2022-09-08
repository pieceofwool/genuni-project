<%@ Page Language="C#" AutoEventWireup="true" CodeFile="definizioneMaterie.aspx.cs" Inherits="definizioneMaterie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblTitolo" runat="server" Text="Titolo: "></asp:Label><br />
                    <asp:TextBox ID="txtTitolo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDescrizione" runat="server" Text="Descrizione: "></asp:Label><br />
                    <asp:TextBox ID="txtDescrizione" cols="20" Rows="2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblIndice" runat="server" Text="Indice:"></asp:Label><br />
                    <asp:TextBox ID="txtIndice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnInserisciMaterie" runat="server" Text="Inserisci materia" OnClick="btnInserisciMaterie_Click" />
                </td>
            </tr>
        </table>
        <hr />
        <div>

            <asp:Label ID="lblMaterie" runat="server" Text="Materie preparate"></asp:Label>
            <asp:GridView ID="gridMaterie" runat="server"></asp:GridView>

        </div>

    </form>
</body>
</html>
