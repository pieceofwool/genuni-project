<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="CorsiDocenti.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            margin: 0 auto;
        }

        table {
            width: 500px;
            margin-top:100px;
        }

        table {
            border: 1px solid black;
            border-collapse: collapse;
        }

        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <table>
        <tr>
            <td style="width: 33.3%"></td>
            <td style="width: 33.3%"><b><big>Storico materie</big></b></td>
            <td style="width: 33.3%"></td>

        </tr>
        <tr>
            <td><b>Materie</b></td>
            <td><b>Corso</b></td>
            <td><b>Data partenza</b></td>
        </tr>
        
        
        <asp:Literal ID="litStorico" runat="server"></asp:Literal>

    </table>
</asp:Content>

