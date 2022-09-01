<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEDocenti.master" AutoEventWireup="true" CodeFile="SituazioneCorsi.aspx.cs" Inherits="BEDocenti_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />
    <br />
    <br />

   <%-- verrà creata una literal con all'interno stampati automaticamente tutti i corsi dal db--%>
    <asp:GridView ID="grvCorsiAttivi" runat="server" OnSelectedIndexChanged="grvCorsiAttivi_SelectedIndexChanged" Height="200px" Width="461px" DataKeyNames="Chiave">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" SelectText="Visualizza" />
        </Columns>
    </asp:GridView>

    <asp:GridView ID="grvAccettazioneCorsi" runat="server"></asp:GridView>

    <asp:GridView ID="grvStoricoCorsi" runat="server"></asp:GridView>

</asp:Content>

