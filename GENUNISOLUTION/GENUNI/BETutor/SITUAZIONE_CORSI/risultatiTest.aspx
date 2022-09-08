<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="risultatiTest.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <p>

        <%--risultati dei test per l' intero corso--%>
        <asp:GridView ID="grvRisulati" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="grvRisulati_SelectedIndexChanged"></asp:GridView>
    </p>
    <asp:Button ID="Button1" runat="server" Text="elenco studenti" OnClick="Button1_Click" />
</asp:Content>

