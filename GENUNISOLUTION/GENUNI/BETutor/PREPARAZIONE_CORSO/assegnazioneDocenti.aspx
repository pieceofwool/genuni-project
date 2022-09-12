<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="assegnazioneDocenti.aspx.cs" Inherits="BETutor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>

        <table>
            <tr>
                <td>
                    <%--ddl materie non assegnate del corso selezionato--%>
                    <asp:Label ID="lblMateria" CssClass="lblP" runat="server" Text="Materia: "></asp:Label>
                    <asp:DropDownList ID="ddlMaterie" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <%--barra di ricerca del docente per skills--%>
                    <asp:Label ID="Label1" CssClass="lblP" runat="server" Text="Cerca per competenze"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtRicercaDocente" CssClass="txt" style="border: solid 1px #9fff74" runat="server" TextMode="Search"></asp:TextBox>
                    <asp:Button ID="btnSkills" runat="server" Text="Cerca" OnClick="btnSkills_Click" />
                </td>
            </tr>
        </table>
        
            <asp:GridView ID="GridDocenti" runat="server" AutoGenerateSelectButton="True" DataKeyNames="Chiave" OnSelectedIndexChanged="GridDocenti_SelectedIndexChanged" AutoGenerateColumns="False">
                <columns>
                    <asp:BoundField DataField="Cognome" HeaderText="Cognome" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" />
                    <asp:BoundField DataField="Ragione_Sociale" HeaderText="Ragione Sociale" />
                    <asp:BoundField DataField="Skills" HeaderText="Skills" />
                </columns>
            </asp:GridView>
        <p>
            <%--vai a cronistoria docente selezionato--%>
            <asp:Button ID="btnCronistoriaDocente" CssClass="btnBE" runat="server" Text="Cronistoria docente" OnClick="btnCronistoriaDocente_Click"></asp:Button>

            <%--seleziona prof--%>
            <asp:Button ID="btnSelezionaDocente" CssClass="btnBE" runat="server" Text="Scegli docente" OnClick="btnSelezionaDocente_Click" />
        </p>
    </div>
</asp:Content>

