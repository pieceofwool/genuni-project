<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="ProgrammiDocenti.aspx.cs" Inherits="Default2" %>

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
     <%-- header--%>
    <table style="width: 1053px; text-align:center;margin-top:100px;" >
        <tr>
            <td></td>
            <td><b runat="server" id="InserireCorso"></b></td>
            <td></td>

        </tr>
    </table>

    <asp:GridView class="grigliaProgrammi" ID="grigliaProgrammi" runat="server"></asp:GridView>

    <%--footer--%>
    <table style="border: 1px solid black; border-collapse: collapse; width: 1053px; text-align:center;margin-bottom:100px;">
        <tr>
            <td><small>Vengono mostrate tutte le materie accettate del corso cliccato</small></td>
        </tr>
    </table>

</asp:Content>

