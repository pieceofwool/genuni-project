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

        /*  #header-fixed {
            position: fixed;
            top: 200px;
        }*/
    </style>
    <%--<script type="text/javascript">

        var tableOffset = $("#table-1").offset().top;
        var $header = $("#table-1 > thead").clone();
        var $fixedHeader = $("#header-fixed").append($header);

        $(window).bind("scroll", function () {
            var offset = $(this).scrollTop();

            if (offset >= tableOffset && $fixedHeader.is(":hidden")) {
                $fixedHeader.show();
            } else if (offset < tableOffset) {
                $fixedHeader.hide();
            }
        });
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table id="header-fixed" style="margin-top: 100px">
        <tr>
            <td style="width: 33%">
                <asp:Button ID="BtnCaricaAsc" runat="server" Text="Meno Recenti" OnClick="BtnCaricaAsc_Click" />
            </td>
            <td style="text-align:center; width: 33%"><b>Chat del Corso</b></td>
            <td style="text-align:end; width: 33%">
                <asp:Button ID="BtnCaricaDesc" runat="server" Text="Più Recenti" OnClick="BtnCaricaDesc_Click" />
            </td>
        </tr>
    </table>

    <div runat="Server" style="overflow: auto; width: 1200px; height: 700px;">


        <%--chat--%>
        <table id="table-1" style="overflow: auto; width: 1175px;">

            <tr>
            </tr>
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
                <textarea id="txtRisposta" runat="server" style="width: 1100px;"></textarea>

            </td>
            <td>
                <asp:Button ID="BtnRispondi" runat="server" Text="Rispondi" UseSubmitBehavior="False" OnClick="BtnRispondi_Click" />
            </td>
        </tr>

    </table>



</asp:Content>

