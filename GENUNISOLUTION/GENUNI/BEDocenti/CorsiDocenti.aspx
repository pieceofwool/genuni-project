<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="CorsiDocenti.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        * {
            margin: 0 auto;
        }

        #storico {
            width: 900px;
            margin-top: 100px;
        }

        .tabella {
            width: 100%;
            text-align: center;
        }

        .MaterieScroll {
            overflow: auto;
            max-height: 250px;
            width: 920px;
        }

        table {
            border-collapse: collapse;
            border: 1px solid lightgrey;
            width: 70%;
            font-size: 16px;
            margin-top: 8px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Storico materie</h4>
        <%--corpo scrollabile--%>
        <div class="MaterieScroll">
            <table class="tabella">
                <tr>
                    <td style="width: 33.3%"></td>
                    <td style="width: 33.3%"></td>
                    <td style="width: 33.3%"></td>
                </tr>
                <tr>
                    <td><b>Materie</b></td>
                    <td><b>Corso</b></td>
                    <td><b>Data partenza</b></td>
                </tr>
                <asp:Literal ID="litStorico" runat="server"></asp:Literal>
            </table>
        </div>
    </div>

    <%--footer--%>
    <table style="border-collapse: collapse; border: 1px solid lightgrey; width: 604px; font-size: 19px; margin-top: 8px; text-align: center; margin-left: auto; margin-right: auto; margin-top: -24px;">
        <tr>
            <td><small>Vengono mostrate tutte le materie accettate</small></td>
            <td style="text-align: right">
                <asp:Button ID="BtnIndietro3" CssClass="btnBE" runat="server" Text="Esci" OnClick="BtnIndietro_Click" />
            </td>
        </tr>
    </table>
    <br />

    <%--tabelle materie da accettare--%>

    <%-- header--%>
    <div class="containerBE">
        <h4 class="titoliBE">Materie da accettare</h4>

        <%--corpo scrollabile--%>
        <div class="MaterieScroll">
            <table class="tabella">
                <tr>
                    <td style="width: 30%"></td>
                    <td style="width: 40%"></td>
                    <td style="width: 20%"></td>
                    <td style="width: 10%"></td>
                </tr>
                <tr>
                    <td><b>Materie</b></td>
                    <td><b>Corso</b></td>
                    <td><b>Data partenza</b></td>
                    <td><b></b></td>
                </tr>
                <asp:Literal ID="litDaAccettare" runat="server"></asp:Literal>
            </table>
        </div>
    </div>

    <%--footer--%>
    <table style="border-collapse: collapse; border: 1px solid lightgrey; width: 604px; font-size: 19px; margin-top: 8px; text-align: center; margin-left: auto; margin-right: auto; margin-top: -24px;">
        <tr>
            <td><small>Vengono mostrate tutte le materie non ancora accettate</small></td>
            <td style="text-align: right">
                <asp:Button ID="BtnIndietro2" runat="server" CssClass="btnBE" Text="Esci" OnClick="BtnIndietro_Click" />
            </td>
        </tr>
    </table>
    <br />

    <%--Corsi Docente--%>

    <%-- header--%>
    <div class="containerBE">
        <h4 class="titoliBE">I miei corsi</h4>
        <%--corpo scrollabile--%>
        <div class="MaterieScroll">
            <table class="tabella">
                <tr>
                    <td style="width: 50%"></td>
                    <td style="width: 50%"></td>
                </tr>
                <tr>
                    <td><b>Corso</b></td>
                    <td><b>Link</b></td>
                </tr>
                <asp:Literal ID="litCorsi" runat="server"></asp:Literal>
            </table>
        </div>
    </div>

    <%--footer--%>
    <table style="border-collapse: collapse; border: 1px solid lightgrey; width: 604px; font-size: 19px; margin-top: 8px; text-align: center; margin-left: auto; margin-right: auto; margin-top: -24px;">
        <tr>
            <td><small>Vengono mostrati tutti i corsi in cui si hanno materie accettate</small></td>
            <td style="text-align: right">
                <asp:Button ID="BtnIndietro" runat="server" CssClass="btnBE" Text="Esci" OnClick="BtnIndietro_Click" />
            </td>
        </tr>
    </table>
    <script src="../JavaScript/JSDocenti.js"></script>
</asp:Content>


