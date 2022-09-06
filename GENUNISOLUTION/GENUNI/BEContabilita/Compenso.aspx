<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEContabilita.master" AutoEventWireup="true" CodeFile="Compenso.aspx.cs" Inherits="BEContabilita_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Compenso</h4>
        <asp:RadioButton ID="rdbDocente" runat="server" Text="Singolo Docente" Checked="True" GroupName="Docenti"/>
        <asp:RadioButton ID="rdbTutti" runat="server" Text="Tutti i Docenti" GroupName="Docenti" />
        <br />
        <asp:DropDownList ID="ddlDocenti" runat="server" Enabled="False"></asp:DropDownList>
        <asp:Label ID="lblDal" runat="server" Text="Dal"></asp:Label>
        <asp:TextBox ID="txtDataInzio" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Label ID="lblAl" runat="server" Text="Al"></asp:Label>
        <asp:TextBox ID="txtDataFine" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Button ID="btnInvia" runat="server" Text="Invia" OnClick="btnInvia_Click" />
        <hr />
        <asp:GridView ID="grdDocente" runat="server"></asp:GridView>
    </div>
</asp:Content>
