﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="CorsiDocenti.aspx.cs" Inherits="Default2" %>

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
            border: 1px solid #d9d0d0;
        }

        h4 {
            background-color: none;
            width: 920px;
        }

            h4::after {
            }

            h4:hover {
                color: black;
                width: 920px;
            }
    </style>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE" style="margin-top: 99px;">

        <h4 style="width: 920px; margin-bottom: 21px;" class="titoliBE">Storico materie</h4>
        <%--corpo scrollabile--%>
        <div class="MaterieScroll" style="margin-top: -14px">
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
    <table style="border-collapse: collapse; border: 1px solid lightgrey; width: 920px; font-size: 19px; text-align: center; margin-top: -52px;">
        <tr>
            <%--<td><small>--%><%--Vengono mostrate tutte le materie accettate--%>
            <td style="text-align: right; border: 1px solid transparent;">
                <asp:Button ID="BtnIndietro3" CssClass="btnBE" runat="server" Text="Esci" OnClick="BtnIndietro_Click" />
            </td>
        </tr>
    </table>
    <br />

    <%--tabelle materie da accettare--%>

    <%-- header--%>
    <div class="containerBE" style="margin-top: -40px;">
        <h4 style="width: 920px; margin-bottom: 21px;" class="titoliBE">Materie da accettare</h4>
        <%--corpo scrollabile--%>
        <div class="MaterieScroll" style="margin-top: -14px">
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
    <table style="border-collapse: collapse; width: 920px; font-size: 19px; text-align: center; margin-top: -52px;">
        <tr>
            <td style="text-align: right; border: 1px solid transparent;">
                <asp:Button ID="BtnIndietro2" runat="server" CssClass="btnBE" Text="Esci" OnClick="BtnIndietro_Click" />
            </td>
        </tr>
    </table>
    <br />

    <%--Corsi Docente--%>

    <%-- header--%>
    <div class="containerBE" style="margin-top: -40px;">
        <h4 style="width: 920px; margin-bottom: 21px;" class="titoliBE">I corsi</h4>
        <%--corpo scrollabile--%>
        <div class="MaterieScroll" style="margin-top: -14px">
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
    <table style="border-collapse: collapse; width: 920px; font-size: 19px; text-align: center; margin-top: -52px;">
        <tr>
            <td style="text-align: right; border: 1px solid transparent;">
                <asp:Button ID="BtnIndietro" runat="server" CssClass="btnBE" Text="Esci" OnClick="BtnIndietro_Click" />
            </td>
        </tr>
    </table>
    <script src="../JavaScript/JSDocenti.js"></script>
</asp:Content>


