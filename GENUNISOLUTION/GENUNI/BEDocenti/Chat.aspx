<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="BEDocenti_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        * {
            margin: 0 auto;
        }

        table {
            width: 1200px;
        }

        table {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <%--chat--%>
    <table style="margin-top: 100px">
        <tr>
            <td colspan="4"><b>Chat del Corso</b></td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="BtnCaricaAsc" runat="server" Text="Visualizza per Data crescente" OnClick="BtnCaricaAsc_Click" />
                <asp:Button ID="BtnCaricaDesc" runat="server" Text="Visualizza per Data decrescente" OnClick="BtnCaricaDesc_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 70px"></td>
            <td style="width: 150px"></td>
            <td style="width: 150px"></td>
            <td></td>
        </tr>

        <asp:Literal ID="litChat" runat="server"></asp:Literal>

    </table>

    <%--risposta--%>
    <table>
        <tr>
            <td>
                <textarea id="txtRisposta" runat="server" style="width: 1000px;"></textarea>

            </td>
            <td>
                <asp:Button ID="BtnRispondi" runat="server" Text="Rispondi" UseSubmitBehavior="False"  OnClick="BtnRispondi_Click" />
            </td>
        </tr>

    </table>



</asp:Content>

