<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="SituazioneCorsi.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Situazione corsi</h4>
        <table>
            <tr>
                <td>
                    <asp:GridView ID="GridCorsi" runat="server"></asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

