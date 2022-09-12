<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="MaterieDocenti.aspx.cs" Inherits="Default2" %>

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
         /*   width: 70%;
            font-size: 16px;
            margin-top: 8px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;*/
        }

        h4 {
            background-color: #5fcf80;
            width: 920px;
        }

            h4::after {
            }

            h4:hover {
                color: white;
                width: 920px;
            }
    </style>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
       
        <%--Materie Docente--%>
        <%-- header--%>
        <h4 class="header titoliBE" style="width: 917px; text-align: center; margin-top: 50px; margin-bottom:-24px;">
            <tr>
                <td style="width: 33.3%"></td>
                <td runat="server" id="InserireCorso" style="width: 33.3%"><b><big></big></b></td>
                <td style="width: 33.3%"></td>
            </tr>
        </h4>
        <br />
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
        <br />
        <br />
        <br />
        <%--footer--%>
        <table style="width: 920px; font-size: 19px; text-align: center; margin-top: -72px;">
            <tr>
                <td><small><%--Vengono mostrate tutte le materie accettate del corso cliccato--%></small></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="BtnEsci" CssClass="btnBE" runat="server" Text="Indietro" OnClick="BtnEsci_Click" />
                </td>
            </tr>
        </table>
    </div>
    <br />
    <%--chat corso--%>
    <table style="width: 920px; font-size: 19px; text-align: center; margin-top: -52px;">
        <tr>
            <asp:Literal ID="litChat" runat="server"></asp:Literal>
        </tr>
    </table>
</asp:Content>

