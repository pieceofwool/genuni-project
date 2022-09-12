<%@ Page Language="C#" AutoEventWireup="true" CodeFile="definizioneMaterie.aspx.cs" Inherits="definizioneMaterie" %>

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
        <%--TABELLA DI INSERIMENTO MATERIE --%>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblTitolo" CssClass="lblP" runat="server" Text="Titolo: "></asp:Label><br />
                    <asp:TextBox ID="txtTitolo" CssClass="txt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDescrizione" CssClass="lblP" runat="server" Text="Descrizione: "></asp:Label><br />
                    <asp:TextBox ID="txtDescrizione" CssClass="txt" cols="20" Rows="2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblIndice" CssClass="lblP" runat="server" Text="Indice:"></asp:Label><br />
                    <asp:TextBox ID="txtIndice" CssClass="txt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnInserisciMaterie" CssClass="btnBE" runat="server" Text="Inserisci materia" OnClick="btnInserisciMaterie_Click" />
                </td>
            </tr>
        </table>
       <%-- <hr />
        <div>--%>
           

            
            <asp:Button ID="btnAssegnaM" CssClass="btnBE" runat="server" Text="Marca corso come 'Materie Assegnate'" OnClick="btnAssegnaM_Click" /><br />
            <asp:Button ID="btnAggiornaCorsi" CssClass="btnBE" runat="server" Text="Aggiorna Materie" OnClick="btnAggiornaCorsi_Click" />
        <%--</div>--%>

        <hr />
        <div>
            <%--TABELLA DELLE MATERIE DEL CORSO--%>
            <asp:Label ID="lblMatcORSO" CssClass="griglia" runat="server" Text="Materie del Corso"></asp:Label>
            <asp:GridView ID="gridMatCorso" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="titolo" HeaderText="materie presenti:" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

