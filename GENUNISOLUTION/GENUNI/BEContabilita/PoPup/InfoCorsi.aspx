<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfoCorsi.aspx.cs" Inherits="BEContabilita_PoPup_InfoCorsi" %>

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
            <table>
                <tr>
                    <td>
                        <asp:Literal ID="litCorsi" runat="server"></asp:Literal>
                        <asp:Label ID="lblPreIscritti" CssClass="lblP" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <asp:GridView ID="grdDocente" CssClass="griglia" runat="server"></asp:GridView>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblCosto" runat="server" CssClass="lblP" Text="Costo"></asp:Label>
                        <asp:TextBox ID="txtCosto" CssClass="txtP" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnInvia" CssClass="btnBE" runat="server" OnClick="btnInvia_Click" Text="Invia" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
