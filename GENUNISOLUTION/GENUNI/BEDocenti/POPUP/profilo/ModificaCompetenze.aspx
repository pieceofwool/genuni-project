<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificaCompetenze.aspx.cs" Inherits="PopUp_Profilo_ModificaComp" %>

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
                    <asp:TextBox ID="txtSkills" placeholder="Skills" runat="server"></asp:TextBox>
                </tr>
                <tr>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </tr>
                <tr>
                    <asp:Button ID="btnModifica" runat="server" Text="Modifica" OnClick="btnModifica_Click" />
                </tr>


            </table>
        </div>
    </form>
</body>
</html>
