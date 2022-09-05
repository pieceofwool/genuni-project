<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="AcquistoCorsi.aspx.cs" Inherits="BEStudenti_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="grigliaCorso" runat="server">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
        </Columns>
        
    </asp:GridView>
    <asp:Button ID="btnAcquista" runat="server" Text="Acquista" OnClick="btnAcquista_Click" />
    <asp:Label id="lblErrore" runat="server" Text=""></asp:Label>
    <asp:Button ID="Button2" runat="server" Text="Aggiorna Saldo" />
</asp:Content>

