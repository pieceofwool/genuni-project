<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Materie.aspx.cs" Inherits="BEstudenti_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">Materiale Didattico</h4>
        <table class="tablePopUp">
            <tr>
                <td>
                    <asp:GridView ID="grigliaMateriale" CssClass="griglia" runat="server" OnSelectedIndexChanged="grigliaMateriale_SelectedIndexChanged" DataKeyNames="Chiave">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="true" SelectText="Apri materiale">
                                <ControlStyle CssClass="btnBE" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle />
                        <HeaderStyle CssClass="headergrid" />
                    </asp:GridView>
                </td>
            </tr>
            <%-- <tr>
                <td>
                    <asp:Button ID="btnTest" runat="server" CssClass="btnBE" Text="Vai al test" OnClick="btnTest_Click" />
                </td>
            </tr>--%>
        </table>
    </div>
</asp:Content>

