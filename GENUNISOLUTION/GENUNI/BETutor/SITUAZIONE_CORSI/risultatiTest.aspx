<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="risultatiTest.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>

        <%--risultati dei test per l' intero corso--%>
        <asp:GridView ID="grvRisulati" runat="server"></asp:GridView>
    </p>
</asp:Content>

