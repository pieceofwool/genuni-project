<%@ Page Language="C#" AutoEventWireup="true" CodeFile="preparazioneDomande.aspx.cs" Inherits="preparazioneDomande" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>
        <link href="../../assets/css/StylePopUp.css" rel="stylesheet" />
    </title>
</head>
<body>
    <form id="form1" runat="server">


        <div>
            <table>
                <tr>
                    <td>
                        <%--DOMANDA --%>
                        <asp:Label ID="lblInserimentoDomanda" CssClass="lblP" runat="server" Text="Inserire il quesito: "></asp:Label>
                        <asp:TextBox ID="txtInserimentoDomanda" CssClass="txt" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--risp coretta 1 --%>
                        <asp:Label ID="lblCorretta" CssClass="lblP" runat="server" Text="Risposta corretta: "></asp:Label>
                        <asp:TextBox ID="txtCorretta" CssClass="txt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--risposta dubbia 0 --%>
                        <asp:Label ID="lblIncompleta" CssClass="lblP" runat="server" Text="Risposta incompleta: "></asp:Label>
                        <asp:TextBox ID="txtIncompleta" CssClass="txt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--risposta sbagliata -1 --%>
                        <asp:Label ID="lblErrata" CssClass="lblP" runat="server" Text="Risposta errata: "></asp:Label>
                        <asp:TextBox ID="txtErrata" CssClass="txt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAggiungiDomanda" CssClass="btnBE" runat="server" Text="Aggiungi quesito" OnClick="btnAggiungiDomanda_Click" />
                    </td>
                </tr>
            </table>
            <br />

                <asp:Button ID="btnAggiorna" CssClass="btnBE" runat="server" Text="Aggiorna domande" OnClick="btnAggiorna_Click" />
            <br />
                <asp:GridView ID="gridDomande" CssClass="griglia" runat="server"></asp:GridView>


        </div>
    </form>
</body>
</html>
