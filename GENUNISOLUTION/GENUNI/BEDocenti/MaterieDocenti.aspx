<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="MaterieDocenti.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <%--Materie Docente--%>
     <%-- header--%>
    <table style="width: 917px; text-align:center;margin-top:100px;" >
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
    <table style="border: 1px solid black; border-collapse: collapse; width: 917px; text-align:center;margin-bottom:100px;">
        <tr>
            <td><small>Vengono mostrate tutte le materie accettate del corso cliccato</small></td>
        </tr>
    </table>
    <%--chat corso--%>
    <table style="border: 1px solid black; border-collapse: collapse; width: 917px; text-align:center;margin-top:100px;">
        <tr>
            
            <asp:Literal ID="litChat" runat="server"></asp:Literal>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnEsci" runat="server" Text="Indietro" OnClick="BtnEsci_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

