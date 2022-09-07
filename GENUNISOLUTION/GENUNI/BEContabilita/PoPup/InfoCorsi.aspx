<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfoCorsi.aspx.cs" Inherits="BEContabilita_PoPup_InfoCorsi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Literal ID="litCorsi" runat="server"></asp:Literal>
            <asp:Label ID="lblPreIscritti" runat="server" Text=""></asp:Label>
            <asp:GridView ID="grdDocente" runat="server"></asp:GridView>
            <br />
            <asp:Label ID="lblCosto" runat="server" Text="Costo"></asp:Label>
            <asp:TextBox ID="txtCosto" runat="server"></asp:TextBox>
            <asp:Button ID="btnInvia" runat="server" OnClick="btnInvia_Click" Text="Invia" />
            <br />
        </div>
    </form>
</body>
</html>
