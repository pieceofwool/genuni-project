<%@ Page Language="C#" AutoEventWireup="true" CodeFile="definizioneMaterie.aspx.cs" Inherits="definizioneMaterie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%--TABELLA DI INSERIMENTO MATERIE --%>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblTitolo" runat="server" Text="Titolo: "></asp:Label><br />
                    <asp:TextBox ID="txtTitolo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDescrizione" runat="server" Text="Descrizione: "></asp:Label><br />
                    <asp:TextBox ID="txtDescrizione" cols="20" Rows="2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblIndice" runat="server" Text="Indice:"></asp:Label><br />
                    <asp:TextBox ID="txtIndice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnInserisciMaterie" runat="server" Text="Inserisci materia" OnClick="btnInserisciMaterie_Click" />
                </td>
            </tr>
        </table>
        <hr />
        <div>
            <%--TABELLA DEI CORSI CREATI DAL TUTOR CHE HA FATTO ACCESSO--%>
            <asp:Label ID="lblCorsiCreati" runat="server" Text="Corsi creati:"></asp:Label>
            <asp:GridView ID="gridCorsiCreati" runat="server" OnSelectedIndexChanged="gridCorsiCreati_SelectedIndexChanged" DataKeyNames="Chiave" AutoGenerateColumns="False">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Seleziona" ShowHeader="True" Text="Seleziona" />
                    <asp:BoundField DataField="Corso" HeaderText="Corso" />
                    <asp:BoundField DataField="Titolo" HeaderText="Materia" />
                    <asp:BoundField DataField="Docente" HeaderText="Docente" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnAssegnaM" runat="server" Text="Marca corso come 'Materie Assegnate'" OnClick="btnAssegnaM_Click" /><br />
            <asp:Button ID="btnAggiornaCorsi" runat="server" Text="Aggiorna Corsi" OnClick="btnAggiornaCorsi_Click" />
        </div>

        <hr />
        <div>
            <%--TABELLA DI TUTTE LE MATERIE GIA PREPARATE--%>
            <asp:Label ID="lblMatPreparate" runat="server" Text="Materie preparate"></asp:Label>
            <asp:GridView ID="gridMatPreparate" runat="server"></asp:GridView>

        </div>

    </form>
</body>
</html>
