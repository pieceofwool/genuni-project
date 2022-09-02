<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Materie.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>Materiale Didattico</p>
    <asp:GridView id="grigliaMateriale" runat="server"></asp:GridView>
    <div>
        <asp:Button ID="btnTest" runat="server" Text="Vai al test" OnClick="btnTest_Click" />
    </div>
</asp:Content>

