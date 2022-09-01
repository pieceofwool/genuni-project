<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="SituazioneContabile.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div id="Profilo">
            <asp:Label ID="lblNomeStudente" runat="server" Text=""></asp:Label>
        </div>

        <div id="Portafoglio">
            <asp:Label ID="Label1" runat="server" Text="Portafoglio"></asp:Label>
            <asp:GridView ID="grigliaGenMoney" runat="server"></asp:GridView>
            <asp:Button ID="btnAcquista" runat="server" Text="Acquista GenMoney" OnClick="btnAcquista_Click"/>
        </div>
    </div>
</asp:Content>

