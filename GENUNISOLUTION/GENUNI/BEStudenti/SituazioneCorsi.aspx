<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="SituazioneCorsi.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <div id="corsi">
        <asp:Label ID="Label1" runat="server" Text="Corsi acquistati"></asp:Label>
        <asp:GridView ID="grigliaCorsiAcquistati" runat="server" OnSelectedIndexChanged="grigliaCorsiAcquistati_SelectedIndexChanged" OnRowDataBound="grigliaCorsiAcquistati_RowDataBound" DataKeyNames="CHIAVE" >
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" SelectText="Accedi al corso" />
            </Columns>


        </asp:GridView>
    </div>
    <div class="containerBE2">
        <h4 class="titoliBE">Corsi disponibili</h4>
        <table class="tablePopUp">
            <tr>
                <td class="btnGestisci">
                    <!-- POPUP, HTML-->
                    <asp:GridView ID="grigliaCorsiDisponibili" CssClass="gtiglia" runat="server" OnSelectedIndexChanged="grigliaCorsiDisponibili_SelectedIndexChanged">
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

