<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="assegnazioneDocenti.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
       <br /><br /><br /><br />
            <%--popup--%>
            <p>
                <%--ddl materie non assegnate del corso selezionato--%>
                <asp:Label ID="lblMateria" runat="server" Text="Materia: "></asp:Label>
                <asp:DropDownList ID="ddlMaterie" runat="server"></asp:DropDownList>
            </p>
            <p>
                <%--barra di ricerca del docente per skills--%>
                <asp:Label ID="Label1" runat="server" Text="Cerca per competenze"></asp:Label><br />
                <asp:TextBox ID="txtRicercaDocente" runat="server" TextMode="Search"></asp:TextBox>
                <asp:Button ID="btnSkills" runat="server" Text="Cerca" OnClick="btnSkills_Click" />
            </p>
            <p>
                <asp:GridView ID="GridDocenti" runat="server" AutoGenerateSelectButton="True" DataKeyNames="Chiave" OnSelectedIndexChanged="GridDocenti_SelectedIndexChanged" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Cognome" HeaderText="Cognome" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" />
                        <asp:BoundField DataField="Ragione_Sociale" HeaderText="Ragione Sociale" />
                        <asp:BoundField DataField="Skills" HeaderText="Skills" />
                    </Columns>
                </asp:GridView>
            </p>
            <p>
                <%--vai a cronistoria docente selezionato--%>
                <asp:Button ID="btnCronistoriaDocente" runat="server" Text="Cronistoria docente" OnClick="btnCronistoriaDocente_Click"></asp:Button>

                <%--seleziona prof--%>
                <asp:Button ID="btnSelezionaDocente" runat="server" Text="Scegli docente" OnClick="btnSelezionaDocente_Click" />
            </p>
        </div>
</asp:Content>

