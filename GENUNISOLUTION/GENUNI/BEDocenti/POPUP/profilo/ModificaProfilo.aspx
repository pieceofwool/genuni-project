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
                <tr><asp:TextBox ID="txtUser" placeholder="Username" runat="server"></asp:TextBox> </tr>
                <tr><asp:TextBox ID="txtRagSoc" placeholder="Ragione Sociale" runat="server"></asp:TextBox> </tr>
                <tr><asp:TextBox ID="txtCognome" placeholder="Cognome" runat="server"></asp:TextBox> </tr>
                <tr><asp:TextBox ID="txtNome" placeholder="Nome" runat="server"></asp:TextBox> </tr>
                <tr><asp:TextBox ID="txtDataNascita" placeholder="Data di Nascita" runat="server"></asp:TextBox> </tr>
                <tr><asp:TextBox ID="txtIva" placeholder="P.Iva" runat="server"></asp:TextBox> </tr>
                <tr><asp:TextBox ID="txtCF" placeholder="Codice Fiscale" runat="server"></asp:TextBox> </tr>
                <tr><asp:TextBox ID="txtIndirizzo" placeholder="Indirizzo" runat="server"></asp:TextBox> </tr>
                <tr><asp:TextBox ID="txtCap" placeholder="Cap" runat="server"></asp:TextBox> </tr>
                <tr><asp:TextBox ID="txtCitta" placeholder="Città" runat="server"></asp:TextBox> </tr>
                <tr><asp:TextBox ID="txtProvincia" placeholder="Provincia" runat="server"></asp:TextBox> </tr>
                <tr><asp:TextBox ID="txtNazionalita" placeholder="Nazionalita" runat="server"></asp:TextBox> </tr>
                <tr><asp:FileUpload ID="FileUpload1" runat="server" /> </tr>
                <tr>
                    <asp:Button ID="btnModifica" runat="server" Text="Modifica" OnClick="btnModifica_Click" />
                </tr>                
            </table>
            
        </div>
    </form>
</body>
</html>
