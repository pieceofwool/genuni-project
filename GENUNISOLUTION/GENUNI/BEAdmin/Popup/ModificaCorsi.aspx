<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificaCorsi.aspx.cs" Inherits="Admin_Popup_ModificaCorsi" %>

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
                        <asp:Label ID="lbl" CssClass="lbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:FileUpload ID="fupAvatar" runat="server" ToolTip="Avatar" accept=".png,.jpg,.jpeg" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtTitolo" CssClass="txt" runat="server" PlaceHolder="Titolo"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:TextBox ID="txtTipo" CssClass="txt" runat="server" PlaceHolder="Tipo"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:TextBox ID="txtDescrizione" CssClass="txt" runat="server" PlaceHolder="Descrizione"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>

                        <asp:TextBox ID="txtDataPartenza" CssClass="txt" runat="server" tooltip="Data Partenza" TextMode="Date"></asp:TextBox><br />
                    </td>
                </tr>
                
                <tr>
                    <td>

                        <asp:Button ID="btnModifica" CssClass="btnBE" runat="server" Text="Modifica" OnClick="btnModifica_Click"  />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
