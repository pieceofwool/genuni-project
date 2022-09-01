<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Visualizza_Corso.aspx.cs" Inherits="BEDocenti_POPUP_Visualizza_corso_Visualizza_Corso" %>

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
       <tr><td><asp:Label ID="lblChiaveCorso" runat="server" Text="Chiave: "></asp:Label><asp:Literal ID="ltlChiaveCorso" runat="server"></asp:Literal></td></tr>
       <tr><td><asp:Label ID="lblCodUtente" runat="server" Text="Codice utente: "></asp:Label><asp:Literal ID="ltlCodUtente" runat="server"></asp:Literal></td></tr>
       <tr><td><asp:Label ID="lblTitolo" runat="server" Text="Titolo corso: "></asp:Label><asp:Literal ID="ltlTitolo" runat="server"></asp:Literal></td></tr>
       <tr><td><asp:Label ID="lblTipo" runat="server" Text="Tipo: "></asp:Label><asp:Literal ID="ltlTipo" runat="server"></asp:Literal></td></tr>
       <tr><td><asp:Label ID="lblDescrizione" runat="server" Text="Descrizione: "></asp:Label><asp:Literal ID="ltlDescrizione" runat="server"></asp:Literal></td></tr>
       <tr><td><asp:Label ID="lblStatusCorsi" runat="server" Text="Status corso: "></asp:Label><asp:Literal ID="ltlStatusCorsi" runat="server"></asp:Literal></td></tr>
       <tr><td><asp:Label ID="lblCosto" runat="server" Text="Corso in €: "></asp:Label><asp:Literal ID="ltlCosto" runat="server"></asp:Literal></td></tr>
       <tr><td><asp:Label ID="lblAvatarCorso" runat="server" Text=""></asp:Label><asp:Literal ID="ltlAvatarCorso" runat="server"></asp:Literal></td></tr>
       <tr><td><asp:Label ID="lblTipoImg" runat="server" Text=""></asp:Label><asp:Literal ID="ltlTipoImg" runat="server"></asp:Literal></td></tr>
       <tr><td><asp:Label ID="lblDataPartenza" runat="server" Text="Data di partenza: "></asp:Label><asp:Literal ID="ltlDataPartenza" runat="server"></asp:Literal></td></tr>
       <tr><td><asp:Label ID="lblDataCreazione" runat="server" Text="Data creazione: "></asp:Label><asp:Literal ID="ltlDataCreazione" runat="server"></asp:Literal></td></tr>
       <tr><td><asp:Label ID="lblDataStatus" runat="server" Text="Data status: "></asp:Label><asp:Literal ID="ltlDataStatus" runat="server"></asp:Literal></td></tr>
       <tr><td><asp:Label ID="lblStatus" runat="server" Text="Status: "></asp:Label><asp:Literal ID="ltlStatus" runat="server"></asp:Literal></td></tr>
   </table>

            <asp:GridView ID="grvMaterie" runat="server" OnSelectedIndexChanged="grvMaterie_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ButtonType="Button" />
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
