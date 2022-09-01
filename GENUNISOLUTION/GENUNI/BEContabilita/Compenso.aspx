<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Compenso.aspx.cs" Inherits="BEContabilita_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
    <br />
    <br />
    <br />
    <br />
     <table>
        <tr>
            <td>
                <asp:Label ID="lblDocente" runat="server" Text="Docente"></asp:Label>
                
                <asp:DropDownList ID="ddlDocente" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAnno" runat="server" Text="Anno"></asp:Label>
                <asp:TextBox ID="txtMese" runat="server" TextMode="Month"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl" runat="server" Text="Compenso"></asp:Label>
                <asp:Label ID="lblCompenso" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

