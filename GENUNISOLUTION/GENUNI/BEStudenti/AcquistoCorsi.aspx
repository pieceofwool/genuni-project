<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="AcquistoCorsi.aspx.cs" Inherits="BEStudenti_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="grigliaCorso" runat="server"></asp:GridView>
    <asp:Button ID="Button1" runat="server" Text="Acquista" />
    <asp:Button ID="Button2" runat="server" Text="Aggiorna Saldo" />
</asp:Content>

