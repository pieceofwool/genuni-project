<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="risultatiTest.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Risultati test</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">
                    <asp:Button ID="Button1" runat="server" CssClass="btnBE" Text="Elenco studenti" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <%--risultati dei test per l' intero corso--%>
                    <asp:GridView ID="grvRisulati" runat="server" CssClass="griglia" AutoGenerateSelectButton="True" OnSelectedIndexChanged="grvRisulati_SelectedIndexChanged"></asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

