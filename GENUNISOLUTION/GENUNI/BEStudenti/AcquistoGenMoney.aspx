<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="AcquistoGenMoney.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />    
    <div>
        <p>Quanti GenMoney vuoi acquistare?</p>
        <asp:DropDownList ID="ddlPacchetto" runat="server" OnSelectedIndexChanged="ddlPacchetto_SelectedIndexChanged">
            <asp:ListItem>50</asp:ListItem>
            <asp:ListItem>100</asp:ListItem>
            <asp:ListItem>200</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnCompra" runat="server" Text="Compra" OnClick="btnCompra_Click" />
        <asp:Label ID="lblC" runat="server" Text=""></asp:Label>

    </div>
</asp:Content>

