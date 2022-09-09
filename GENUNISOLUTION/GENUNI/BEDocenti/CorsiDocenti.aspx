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
            width: 900px;
        }

        .MaterieScroll {
            overflow: auto;
            max-height: 250px;
            width: 920px;
        }

        table {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%--tabella storico materie accettate--%>

    <%-- header--%>
    <table id="storico" style="width: 917px; text-align: center;">
        <tr>

            <td><b><big>Storico materie</big></b></td>


        </tr>
    </table>

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

    <%--footer--%>
    <table style="border: 1px solid black; border-collapse: collapse; width: 917px; text-align: center">
        <tr>
            <td><small>Vengono mostrate tutte le materie accettate</small></td>
            <td style="text-align: right">
                <asp:Button ID="BtnIndietro3" runat="server" Text="Esci" OnClick="BtnIndietro_Click" />
            </td>
        </tr>

    </table>

    <br />


    <%--tabelle materie da accettare--%>

    <%-- header--%>
    <table style="width: 917px; text-align: center;">
        <tr>

            <td><b><big>Materie da accettare</big></b></td>

        </tr>
    </table>

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

    <%--footer--%>
    <table style="border: 1px solid black; border-collapse: collapse; width: 917px; text-align: center">
        <tr>
            <td><small>Vengono mostrate tutte le materie non ancora accettate</small></td>
            <td style="text-align: right">
                <asp:Button ID="BtnIndietro2" runat="server" Text="Esci" OnClick="BtnIndietro_Click" />
            </td>
        </tr>

    </table>

    <br />


    <%--Corsi Docente--%>

    <%-- header--%>
    <table style="width: 917px; text-align: center">
        <tr>
            <td style="width: 33.3%"></td>
            <td style="width: 33.3%"><b><big>I miei Corsi</big></b></td>
            <td style="width: 33.3%"></td>

        </tr>
    </table>

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

    <%--footer--%>
    <table style="border: 1px solid black; border-collapse: collapse; width: 917px; text-align: center; margin-bottom: 100px;">
        <tr>
            <td><small>Vengono mostrati tutti i corsi in cui si hanno materie accettate</small></td>
            <td style="text-align: right">
                <asp:Button ID="BtnIndietro" runat="server" Text="Esci" OnClick="BtnIndietro_Click" />
            </td>
        </tr>

    </table>


    <script src="../JavaScript/JSDocenti.js"></script>

</asp:Content>

