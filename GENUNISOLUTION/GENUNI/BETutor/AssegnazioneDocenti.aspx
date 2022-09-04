<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="AssegnazioneDocenti.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Assegnazione docenti</h4>
        <table>
            <tr>
                <td>
                    <%-- carosel per la scelta dei docenti --%>
                    <%--più info sul docente scelto--%>
                </td>
            </tr>
            <tr>
                <td>
                    <%--label per nome e cognome--%>
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    <%-- foto profilo --%>
                    <asp:Image ID="Image1" runat="server" />
                    <%-- cv --%>
                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                    <%-- skills --%>
                    <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

