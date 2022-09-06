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
        <%--<asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("FileData") %>' runat="server" OnClick="lnkDownload_Click"></asp:LinkButton>--%>
        <asp:GridView ID="grigliaCorsiAcquistati" runat="server" OnSelectedIndexChanged="grigliaCorsiAcquistati_SelectedIndexChanged" OnRowCommand="grigliaCorsiAcquistati_RowCommand" OnRowDataBound="grigliaCorsiAcquistati_RowDataBound">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" SelectText="Accedi al corso" />
            </Columns>


        </asp:GridView>
    </div>
    <div>

        <asp:Label ID="Label2" runat="server" Text="Corsi disponibili"></asp:Label>
        <asp:GridView ID="grigliaCorsiDisponibili" runat="server" OnSelectedIndexChanged="grigliaCorsiDisponibili_SelectedIndexChanged" OnRowCommand="grigliaCorsiDisponibili_RowCommand">
            <Columns>
                <asp:ButtonField Text="Acquista corso" ButtonType="Button" />
                

            </Columns>

        </asp:GridView>
    </div>
</asp:Content>

