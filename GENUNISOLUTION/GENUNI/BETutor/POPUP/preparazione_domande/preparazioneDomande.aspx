<%@ Page Language="C#" AutoEventWireup="true" CodeFile="preparazioneDomande.aspx.cs" Inherits="preparazioneDomande" %>

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
                        <%--DOMANDA --%>
                        <asp:Label ID="lblInserimentoDomanda" runat="server" Text="Inserire il quesito: "></asp:Label>
                        <asp:TextBox ID="txtInserimentoDomanda" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--risp coretta 1 --%>
                        <asp:Label ID="lblCorretta" runat="server" Text="Risposta corretta: "></asp:Label>
                        <asp:TextBox ID="txtCorretta" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--risposta dubbia 0 --%>
                        <asp:Label ID="lblIncompleta" runat="server" Text="Risposta incompleta: "></asp:Label>
                        <asp:TextBox ID="txtIncompleta" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--risposta sbagliata -1 --%>
                        <asp:Label ID="lblErrata" runat="server" Text="Risposta errata: "></asp:Label>
                        <asp:TextBox ID="txtErrata" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--voti --%>
                        <asp:Label ID="Label1" runat="server" Text="Voti: "></asp:Label>
                        <asp:TextBox ID="txtVoti" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAggiungiDomanda" runat="server" Text="Aggiungi quesito" OnClick="btnAggiungiDomanda_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
