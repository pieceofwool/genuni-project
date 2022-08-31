<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Materie.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>Materiale didattico</td>
        </tr>
    </table>
    <table>
        <tr>
            <td>Link lezioni frontali</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnTest" runat="server" Text="Vai al test" OnClick="btnTest_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

