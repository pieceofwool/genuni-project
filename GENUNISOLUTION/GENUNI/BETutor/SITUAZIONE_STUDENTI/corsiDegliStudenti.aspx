<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="corsiDegliStudenti.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <br /><br /><br /><br />

    <div>
        <%-- storico corsi --%>
        <asp:GridView ID="grvCorsiStudenti" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Tipo" HeaderText="Categoria" />
                <asp:BoundField DataField="Titolo" HeaderText="Corso" />
                <asp:BoundField DataField="Data_Partenza" HeaderText="Data Inizio" />
            </Columns>
        </asp:GridView>

        <asp:Button ID="btnAggiorna" runat="server" Text="Aggiorna" OnClick="btnAggiorna_Click" />
    </div>

</asp:Content>

