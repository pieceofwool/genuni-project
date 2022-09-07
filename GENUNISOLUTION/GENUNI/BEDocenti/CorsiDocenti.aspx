<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="CorsiDocenti.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        * {
            margin: 0 auto;
        }

        #storico {
            width: 700px;
            margin-top: 100px;
        }

        .tabella {
            width: 700px;
        }

        .MaterieScroll {
            overflow: auto;
            max-height: 250px;
            width: 720px;
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
    <table id="storico" style="width: 717px">
        <tr>
            <td style="width: 33.3%"></td>
            <td style="width: 33.3%"><b><big>Storico materie</big></b></td>
            <td style="width: 33.3%"></td>

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
    <table style="border: 1px solid black; border-collapse: collapse; width: 717px; text-align:center">
        <tr>
            <td><small>Vengono mostrate tutte le materie accettate</small></td>
        </tr>
    </table>

    <br />
    <br />

    <%--tabelle materie da accettare--%>

   <%-- header--%>
    <table style="width: 717px">
        <tr>
            <td style="width: 33.3%"></td>
            <td style="width: 33.3%"><b><big>Materie da accettare</big></b></td>
            <td style="width: 33.3%"></td>
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
    <table style="border: 1px solid black; border-collapse: collapse; width: 717px; text-align:center">
        <tr>
            <td><small>Vengono mostrate tutte le materie non ancora accettate</small></td>
        </tr>
    </table>


    <script src="../JavaScript/JSDocenti.js"></script>

</asp:Content>

