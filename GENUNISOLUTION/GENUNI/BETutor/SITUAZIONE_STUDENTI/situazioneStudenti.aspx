<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBETutor.master" AutoEventWireup="true" CodeFile="situazioneStudenti.aspx.cs" Inherits="BETutor_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="grvStudenti" runat="server" OnSelectedIndexChanged="grvStudenti_SelectedIndexChanged" DataKeyNames="CHIAVE">
                <Columns>
                    <asp:ButtonField ButtonType="Button" Text="vai ai corsi" />
                </Columns>
        </asp:GridView>
</asp:Content>

