<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="RisultatiTest.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Risultati test</h4>
        <table>
            <tr>
                <td>
                    <%--scelta del corso--%>
                    <asp:DropDownList ID="DropDownList1" CssClass="ddl" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <%--risultati--%>
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

