<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificaProfilo.aspx.cs" Inherits="PopUp_Profilo_ModificaProfilo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <%--<tr><asp:TextBox ID="txtTipo" placeholder="UTipo" runat="server"></asp:TextBox> </tr>
                <tr><asp:TextBox ID="txtPassword" placeholder="Password" runat="server"></asp:TextBox> </tr>--%>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtUser" placeholder="Username" runat="server"></asp:TextBox>

                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Ragione Sociale"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtRagSoc" placeholder="Ragione Sociale" runat="server"></asp:TextBox>

                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Cognome"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtCognome" placeholder="Cognome" runat="server"></asp:TextBox>

                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Nome"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtNome" placeholder="Nome" runat="server"></asp:TextBox>

                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Data di Nascita"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtDataNascita" placeholder="Data di Nascita" runat="server"></asp:TextBox>

                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="P.Iva"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtIva" placeholder="P.Iva" runat="server"></asp:TextBox>

                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Codice Fiscale"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtCF" placeholder="Codice Fiscale" runat="server"></asp:TextBox>

                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Indirizzo"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtIndirizzo" placeholder="Indirizzo" runat="server"></asp:TextBox>

                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Cap"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtCap" placeholder="Cap" runat="server"></asp:TextBox>

                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Città"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtCitta" placeholder="Città" runat="server"></asp:TextBox>

                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Provincia"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtProvincia" placeholder="Provincia" runat="server"></asp:TextBox>

                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="Nazionalità"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtNazionalita" placeholder="Nazionalità" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnModifica" runat="server" Text="Modifica" OnClick="btnModifica_Click" />

                    </td>

                </tr>
            </table>

        </div>
    </form>
</body>
</html>
