<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="GestioneTutor.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Gestione Tutor</h4>
        <table>
            <tr>
                <td>
                    <%--<asp:Table ID="table" runat="server"></asp:Table>--%>
                    <%--griglia per visualizzare i corsi attivi--%>

                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <ul>
                        <li><a href="PreparazioneCorso.aspx">Preparazione Corso</a></li>
                    </ul>
                    <ul>
                        <li><a href="PreparazioneTest.aspx">Accesso test (corso)</a></li>
                    </ul>
                    <ul>
                        <li><a href="SituazioneCorsi.aspx">Situazione corsi</a></li>
                    </ul>
                    <ul>
                        <li><a href="SituazioneStudenti.aspx">Situazione studenti</a></li>
                    </ul>
                    <ul>
                        <li><a href="Chat.aspx">Chat di aiuto</a></li>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

