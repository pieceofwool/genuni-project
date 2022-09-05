<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Compenso.aspx.cs" Inherits="BEContabilita_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Compenso</h4>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblDocente" CssClass="lbl" runat="server" Text="Docente"></asp:Label>
                    <asp:DropDownList ID="ddlDocente" CssClass="ddl" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAnno" CssClass="lbl" runat="server" Text="Anno"></asp:Label>
                    <asp:TextBox ID="txtMese" CssClass="txt" runat="server" TextMode="Month"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl" CssClass="lbl" runat="server" Text="Compenso"></asp:Label>
                    <asp:Label ID="lblCompenso" CssClass="lbl" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

