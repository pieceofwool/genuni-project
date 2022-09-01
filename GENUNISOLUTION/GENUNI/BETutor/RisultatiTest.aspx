<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="RisultatiTest.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <%--scelta del corso--%>
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

        <%--risultati--%>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
</asp:Content>

