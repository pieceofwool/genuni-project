<%@ Page Language="C#" AutoEventWireup="true" CodeFile="preparazioneTest.aspx.cs" Inherits="POPUP_corsi_preparazioneTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>
    </title>
        <link href="../../assets/css/StylePopUp.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--creazione test--%>
            <table>
                <tr>
                    <td>
                        <%--info per creazione test--%>
                        <asp:Label ID="lblSogliaDiSuperamento" CssClass="lbl" runat="server" Text="Soglia di superamento: "></asp:Label><br />
                        <asp:TextBox ID="txtSogliaDiSuperamento" CssClass="txt" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblData" runat="server" CssClass="lbl" Text="Data: "></asp:Label><br />
                        <asp:TextBox ID="txtData" CssClass="txt" runat="server" TextMode="Date"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblOra" runat="server" CssClass="lbl" Text="Ora: "></asp:Label><br />
                        <asp:TextBox ID="txtOra" CssClass="txt" runat="server" TextMode="Time"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCreaTest" CssClass="btnBE" runat="server" Text="Crea test" OnClick="btnCreaTest_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
