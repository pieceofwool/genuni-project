<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="SituazioneContabile.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <div>
        <div id="Portafoglio">
            <asp:Label ID="Label1" runat="server" Text="Portafoglio"></asp:Label>
            <asp:Label ID="lblSaldo" runat="server" Text=""></asp:Label><br />
            <asp:Button ID="btnAcquista" runat="server" Text="Acquista GenMoney" OnClick="btnAcquista_Click"/>
        </div>
        <p>Storico Acquisti</p>
        <div>
            <asp:GridView ID="grigliaStorico" runat="server" OnRowDataBound="grigliaStorico_RowDataBound"></asp:GridView>
        </div>
    </div>
</asp:Content>

