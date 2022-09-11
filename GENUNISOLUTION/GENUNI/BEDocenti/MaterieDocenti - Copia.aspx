<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="MaterieDocenti - Copia.aspx.cs" Inherits="Default2" %>

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

        .header {
            background-color: #5fcf80;
            color: black;
            font-size: 22px;
        }
    </style>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">MATERIA</h4>
        <%--Materie Docente--%>
        <%-- header--%>
        <table class="header" style="width: 917px; text-align: center; margin-top: 100px;">
            <tr>
                <td style="width: 33.3%"></td>
                <td runat="server" id="InserireCorso" style="width: 33.3%"><b><big></big></b></td>
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
                    <td><b>Materia</b></td>
                    <td><b>Programma</b></td>
                </tr>
                <asp:Literal ID="litMaterie" runat="server"></asp:Literal>
            </table>
        </div>
        <%--footer--%>
        <table style="border: 1px solid black; border-collapse: collapse; width: 917px; text-align: right; margin-bottom: 100px;">
            <tr>
                <td><small><%--Vengono mostrate tutte le materie accettate del corso cliccato--%></small></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="BtnEsci" CssClass="btnBE" runat="server" Text="Indietro" OnClick="BtnEsci_Click" />
                </td>
            </tr>
        </table>
        <%--chat corso--%>
        <table style="border: 1px solid black; border-collapse: collapse; width: 917px; text-align: center; margin-top: 100px; font-size: 20px; margin-top: -50px;">
            <tr>

                <asp:Literal ID="litChat" runat="server"></asp:Literal>
            </tr>

        </table>
    </div>
</asp:Content>

