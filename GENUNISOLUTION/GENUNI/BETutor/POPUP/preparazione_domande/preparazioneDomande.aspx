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
            <%--popup--%>
            <%--domande--%>
            <asp:Label ID="Label1" runat="server" Text="INSERISCI NUOVA DOMANDA"></asp:Label>
            <%--DOMANDA--%>
            <asp:Label ID="Label2" runat="server" Text="Inserire il quesito: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <%--risp cooretta 1--%>
            <asp:Label ID="Label3" runat="server" Text="Risposta corretta: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <%--risposta dubbia 0--%>
            <asp:Label ID="Label4" runat="server" Text="Risposta incompleta: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <%--risposta sbagliata -1--%>
            <asp:Label ID="Label5" runat="server" Text="Risposta errata: "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Aggiungi quesito" />
        </div>
    </form>
</body>
</html>
