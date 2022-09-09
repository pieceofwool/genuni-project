<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Test_Studenti.aspx.cs" Inherits="Test_Studenti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <img src="../assets/img/lavoriBE.png" class="icona" />
    </div>
    <div class="containerBE">
        <h4 class="titoliBE">TEST</h4>
        <table class="tablePopUp">
            <tr>
                <td class="tdTest">
                    <asp:Label ID="Label1" CssClass="lblTest" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="rb1" />
                    <br />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="rb1" />
                    <br />
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="rb1" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="tdTest">
                    <asp:Label ID="Label2" CssClass="lblTest" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="rb2" />
                    <br />
                    <asp:RadioButton ID="RadioButton5" runat="server" GroupName="rb2" />
                    <br />
                    <asp:RadioButton ID="RadioButton6" runat="server" GroupName="rb2" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="tdTest">
                    <asp:Label ID="Label3" CssClass="lblTest" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:RadioButton ID="RadioButton7" runat="server" GroupName="rb3" />
                    <br />
                    <asp:RadioButton ID="RadioButton8" runat="server" GroupName="rb3" />
                    <br />
                    <asp:RadioButton ID="RadioButton9" runat="server" GroupName="rb3" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="tdTest">
                    <asp:Label ID="Label4" CssClass="lblTest" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:RadioButton ID="RadioButton10" runat="server" GroupName="rb4" />
                    <br />
                    <asp:RadioButton ID="RadioButton11" runat="server" GroupName="rb4" />
                    <br />
                    <asp:RadioButton ID="RadioButton12" runat="server" GroupName="rb4" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="tdTest">
                    <asp:Label ID="Label5" CssClass="lblTest" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:RadioButton ID="RadioButton13" runat="server" GroupName="rb5" />
                    <br />
                    <asp:RadioButton ID="RadioButton14" runat="server" GroupName="rb5" />
                    <br />
                    <asp:RadioButton ID="RadioButton15" runat="server" GroupName="rb5" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="tdTest">
                    <asp:Label ID="Label6" CssClass="lblTest" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:RadioButton ID="RadioButton16" runat="server" GroupName="rb6" />
                    <br />
                    <asp:RadioButton ID="RadioButton17" runat="server" GroupName="rb6" />
                    <br />
                    <asp:RadioButton ID="RadioButton18" runat="server" GroupName="rb6" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="tdTest">
                    <asp:Label ID="Label7" CssClass="lblTest" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:RadioButton ID="RadioButton19" runat="server" GroupName="rb7" />
                    <br />
                    <asp:RadioButton ID="RadioButton20" runat="server" GroupName="rb7" />
                    <br />
                    <asp:RadioButton ID="RadioButton21" runat="server" GroupName="rb7" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="tdTest">
                    <asp:Label ID="Label8" CssClass="lblTest" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:RadioButton ID="RadioButton22" runat="server" GroupName="rb8" />
                    <br />
                    <asp:RadioButton ID="RadioButton23" runat="server" GroupName="rb8" />
                    <br />
                    <asp:RadioButton ID="RadioButton24" runat="server" GroupName="rb8" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="tdTest">
                    <asp:Label ID="Label9" CssClass="lblTest" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:RadioButton ID="RadioButton25" runat="server" GroupName="rb9" />
                    <br />
                    <asp:RadioButton ID="RadioButton26" runat="server" GroupName="rb9" />
                    <br />
                    <asp:RadioButton ID="RadioButton27" runat="server" GroupName="rb9" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="tdTest">
                    <asp:Label ID="Label10" CssClass="lblTest" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:RadioButton ID="RadioButton28" runat="server" GroupName="rb10" />
                    <br />
                    <asp:RadioButton ID="RadioButton29" runat="server" GroupName="rb10" />
                    <br />
                    <asp:RadioButton ID="RadioButton30" runat="server" GroupName="rb10" />
                    <br />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>

                    <asp:Button ID="btnConcludiTest" runat="server" CssClass="btnBE" Text="Concludi Test!" Visible="true" OnClick="ConcludiTest_Click" />

                    <%--<asp:Label id="lbl" runat="server" Text=""></asp:Label>--%>
                    <asp:Button ID="btnTornaHomeCorso" CssClass="btnBE" runat="server" Text="Torna alla Home del Corso" Visible="False" OnClick="TornaHomeCorso_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    </div>

</asp:Content>

