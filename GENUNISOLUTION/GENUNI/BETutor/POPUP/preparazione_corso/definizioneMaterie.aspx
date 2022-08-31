<%@ Page Language="C#" AutoEventWireup="true" CodeFile="definizioneMaterie.aspx.cs" Inherits="definizioneMaterie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- titolo --%>
            <asp:Label ID="Label1" runat="server" Text="Titolo: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <%-- descrizione --%>
            <asp:Label ID="Label2" runat="server" Text="Descrizione: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <%-- indice --%>
            <asp:Label ID="Label3" runat="server" Text="Indice: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

            <%-- inserisci materia --%>
            <asp:Button ID="Button1" runat="server" Text="Inserisci Materia" />
        </div>
    </form>
</body>
</html>
