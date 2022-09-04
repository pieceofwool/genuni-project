<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AssegnaCorsi.aspx.cs" Inherits="Admin_Popup_AssegnaCorsi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlTutor" tooltip="Tutor" runat="server"></asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>

                        <asp:Button ID="btnAssegna" CssClass="btnBE" runat="server" Text="Assegna" OnClick="btnAssegna_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
