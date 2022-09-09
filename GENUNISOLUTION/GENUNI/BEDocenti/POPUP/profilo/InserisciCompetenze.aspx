<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InserisciCompetenze.aspx.cs" Inherits="BEDocenti_POPUP_profilo_InserisciCompetenze" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>

                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Skills:"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="txtSkills" placeholder="Skills" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="CV:"></asp:Label>
                    </td>
                    <td>
                    <asp:FileUpload ID="FileUploadCV" runat="server" />

                    </td>
                </tr>
                <tr>
                   <td colspan="2">

                    <asp:Button ID="btnModifica" runat="server" Text="Inserisci" OnClick="btnModifica_Click" />
                   </td>
                </tr>


            </table>
        </div>
    </form>
</body>
</html>
