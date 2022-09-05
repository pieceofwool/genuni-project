<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="DefinizioneMaterie.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Definizione materie</h4>
        <table>
            <tr>
                <td>
                    <%-- titolo --%>
                    <asp:Label ID="Label1" CssClass="lbl" runat="server" Text="Titolo: "></asp:Label>
                    <asp:TextBox ID="TextBox1" CssClass="txt" runat="server"></asp:TextBox>

                    <%-- descrizione --%>
                    <asp:Label ID="Label2" CssClass="lbl" runat="server" Text="Descrizione: "></asp:Label>
                    <asp:TextBox ID="TextBox2" CssClass="txt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <%-- indice --%>
                    <asp:Label ID="Label3" CssClass="lbl" runat="server" Text="Indice: "></asp:Label>
                    <asp:TextBox ID="TextBox3" CssClass="txt" runat="server"></asp:TextBox>

                    <%-- inserisci materia --%>
                    <asp:Button ID="Button1" runat="server" CssClass="btnBE" Text="Inserisci Materia" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

