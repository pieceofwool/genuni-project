<%@ Page Language="C#" AutoEventWireup="true" CodeFile="preparazioneDomande.aspx.cs" Inherits="preparazioneTest" %>

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
                        <asp:GridView ID="gridDati" runat="server"></asp:GridView>
                        </td>
                    </tr>
                <tr>
                    <td>
                        <%--DOMANDA --%>
                        <asp:Label ID="lblInserimentoDomanda" runat="server" Text="Inserire il quesito: "></asp:Label><br />
                        <asp:TextBox ID="txtInserimentoDomanda" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--risp coretta 1 --%>
                        <asp:Label ID="lblCorretta" runat="server" Text="Risposta corretta: "></asp:Label><br />
                        <asp:TextBox ID="txtCorretta" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--risposta dubbia 0 --%>
                        <asp:Label ID="lblIncompleta" runat="server" Text="Risposta incompleta: "></asp:Label><br />
                        <asp:TextBox ID="txtIncompleta" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--risposta sbagliata -1 --%>
                        <asp:Label ID="lblErrata" runat="server" Text="Risposta errata: "></asp:Label><br />
                        <asp:TextBox ID="txtErrata" runat="server"></asp:TextBox>
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
