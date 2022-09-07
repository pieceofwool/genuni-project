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
        <asp:GridView ID="grigliaCorsiAcquistati" runat="server" OnSelectedIndexChanged="grigliaCorsiAcquistati_SelectedIndexChanged" >
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" SelectText="Accedi al corso" />
            </Columns>


        </asp:GridView>
    </div>
    <div>

        <asp:Label ID="Label2" runat="server" Text="Corsi disponibili"></asp:Label>
        <asp:GridView ID="grigliaCorsiDisponibili" runat="server" OnSelectedIndexChanged="grigliaCorsiDisponibili_SelectedIndexChanged" >
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="Acquista corso" ShowSelectButton="True" />
                

            </Columns>

        </asp:GridView>
    </div>
</asp:Content>

