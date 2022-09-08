<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="SituazioneCorsi.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                    <asp:GridView ID="grigliaCorsiAcquistati" CssClass="gtiglia" runat="server" OnSelectedIndexChanged="grigliaCorsiAcquistati_SelectedIndexChanged" OnRowCommand="grigliaCorsiAcquistati_RowCommand" OnRowDataBound="grigliaCorsiAcquistati_RowDataBound">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true" SelectText="Accedi al corso">
                                <ControlStyle CssClass="btnBE" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle />
                        <HeaderStyle CssClass="headergrid" />
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
                    <asp:GridView ID="grigliaCorsiDisponibili" CssClass="gtiglia" runat="server" OnSelectedIndexChanged="grigliaCorsiDisponibili_SelectedIndexChanged" OnRowCommand="grigliaCorsiDisponibili_RowCommand">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true" SelectText="Acquista corso">
                                <ControlStyle CssClass="btnBE" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle />
                        <HeaderStyle CssClass="headergrid" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

