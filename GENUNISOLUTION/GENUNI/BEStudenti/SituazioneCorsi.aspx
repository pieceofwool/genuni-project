﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="SituazioneCorsi.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Corsi acquistati</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">
                    <!-- POPUP, HTML-->
                    <%--<asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("FileData") %>' runat="server" OnClick="lnkDownload_Click"></asp:LinkButton>--%>
                    <asp:GridView ID="grigliaCorsiAcquistati" DataKeyNames="Cod_Corso, Chiave" AutoGenerateColumns="False" CssClass="griglia" runat="server" OnSelectedIndexChanged="grigliaCorsiAcquistati_SelectedIndexChanged" >
                        <Columns>
                            <asp:BoundField DataField="Cod_Corso" Visible="false" />
                            <asp:BoundField DataField="Chiave" Visible="false" />
                            <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                            <asp:BoundField DataField="Cognome" HeaderText="Cognome" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" />
                            <asp:BoundField DataField="Avatar_Corso" Visible="false" />
                            <asp:BoundField DataField="Tipo" Visible="false" />
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true" SelectText="Accedi al corso">
                                <ControlStyle CssClass="btnBE" />
                            </asp:CommandField>
                        </Columns>
                      
                        <HeaderStyle CssClass="headergrid" />
                        <SelectedRowStyle CssClass="selezionegrid"/>
                    </asp:GridView>
                </td>
            </tr>
        </table>

    </div>
    <div class="containerBE2">
        <h4 class="titoliBE">Corsi disponibili</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">
                    <!-- POPUP, HTML-->
                    <asp:GridView ID="grigliaCorsiDisponibili" CssClass="griglia" DataKeyNames="Chiave" AutoGenerateColumns="False" runat="server" OnSelectedIndexChanged="grigliaCorsiDisponibili_SelectedIndexChanged">

                        <Columns>
                            <asp:BoundField DataField="Chiave" Visible="false" />
                            <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                            <asp:BoundField DataField="Data_Partenza" HeaderText="Data partenza" />
                            <asp:BoundField DataField="Costo" HeaderText="Costo" />
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true" SelectText="Acquista corso">
                                <ControlStyle CssClass="btnBE" />
                            </asp:CommandField>
                        </Columns>
                 
                        <HeaderStyle CssClass="headergrid" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

