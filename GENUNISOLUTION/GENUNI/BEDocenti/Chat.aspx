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
            border: 1px solid lightgrey;
            border-collapse: collapse;
        }
    </style>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <br />
    <br />
    <br />
    <br />
    <h4 class="titoliBE">CHAT</h4>
    <table style="margin-top: 29px">
        <tr>
            <td style="width: 33%">
                <asp:Button ID="BtnCaricaAsc" runat="server" CssClass="btnBE" Text="Meno Recenti" OnClick="BtnCaricaAsc_Click" />
            </td>
            <td id="InserisciCorso" runat="server" style="text-align: center; width: 33%"><b></b></td>
            <td style="text-align: end; width: 33%">
                <asp:Button ID="BtnCaricaDesc" runat="server" CssClass="btnBE" Text="Più Recenti" OnClick="BtnCaricaDesc_Click" />
            </td>
        </tr>
    </table>

    <div runat="Server" style="overflow: auto; width: 1200px; max-height: 700px;">


        <%--chat--%>
        <table style="width: 1182px;">

            <tr>
                <td style="width: 70px"></td>
                <td style="width: 150px"></td>
                <td style="width: 150px"></td>
                <td></td>
            </tr>

            <asp:Literal ID="litChat" runat="server"></asp:Literal>

        </table>
    </div>



    <%--risposta--%>
    <table style="margin-bottom: 100px">
        <tr>
            <td>
                <textarea id="txtRisposta" CssClass="txt" runat="server" style="width: 1100px;"></textarea>

            </td>
            <td>
                <asp:Button ID="BtnRispondi" CssClass="btnBE" runat="server" Text="Rispondi" UseSubmitBehavior="False" OnClick="BtnRispondi_Click" />
                <asp:Button ID="BtnEsci" CssClass="btnBE" runat="server" Text="Indietro" OnClick="BtnEsci_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

