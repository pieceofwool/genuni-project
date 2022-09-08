<%@ Page Language="C#" AutoEventWireup="true" CodeFile="corsiDegliStudenti.aspx.cs" Inherits="corsiDegliStudenti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%-- storico corsi --%>
        <asp:GridView ID="grvCorsiStudenti" runat="server">
            </asp:GridView>

        <asp:Button ID="btnAggiorna" runat="server" Text="Aggiorna" OnClick="btnAggiorna_Click" />
    </form>
</body>
</html>
