<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Test_Studenti.aspx.cs" Inherits="Test_Studenti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    
        <div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="rb1" />
            <br />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="rb1" />
            <br />
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="rb1" />
            <br />
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="rb2" />
            <br />
            <asp:RadioButton ID="RadioButton5" runat="server" GroupName="rb2" />
            <br />
            <asp:RadioButton ID="RadioButton6" runat="server" GroupName="rb2" />
            <br />
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton7" runat="server" GroupName="rb3" />
            <br />
            <asp:RadioButton ID="RadioButton8" runat="server" GroupName="rb3" />
            <br />
            <asp:RadioButton ID="RadioButton9" runat="server" GroupName="rb3" />
            <br />
        </div>
        <br />
        <div>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton10" runat="server" GroupName="rb4" />
            <br />
            <asp:RadioButton ID="RadioButton11" runat="server" GroupName="rb4" />
            <br />
            <asp:RadioButton ID="RadioButton12" runat="server" GroupName="rb4" />
            <br />
        </div>
        <br />
        <div>
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton13" runat="server" GroupName="rb5" />
            <br />
            <asp:RadioButton ID="RadioButton14" runat="server" GroupName="rb5" />
            <br />
            <asp:RadioButton ID="RadioButton15" runat="server" GroupName="rb5" />
            <br />
        </div>
        <br />
        <div>
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton16" runat="server" GroupName="rb6" />
            <br />
            <asp:RadioButton ID="RadioButton17" runat="server" GroupName="rb6" />
            <br />
            <asp:RadioButton ID="RadioButton18" runat="server" GroupName="rb6" />
            <br />
        </div>
        <br />
        <div>
            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton19" runat="server" GroupName="rb7" />
            <br />
            <asp:RadioButton ID="RadioButton20" runat="server" GroupName="rb7" />
            <br />
            <asp:RadioButton ID="RadioButton21" runat="server" GroupName="rb7" />
            <br />
        </div>
        <br />
        <div>
            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton22" runat="server" GroupName="rb8" />
            <br />
            <asp:RadioButton ID="RadioButton23" runat="server" GroupName="rb8" />
            <br />
            <asp:RadioButton ID="RadioButton24" runat="server" GroupName="rb8" />
            <br />
        </div>
        <br />
        <div>
            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton25" runat="server" GroupName="rb9" />
            <br />
            <asp:RadioButton ID="RadioButton26" runat="server" GroupName="rb9" />
            <br />
            <asp:RadioButton ID="RadioButton27" runat="server" GroupName="rb9" />
            <br />
        </div>
        <br />
        <div>
            <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton28" runat="server" GroupName="rb10" />
            <br />
            <asp:RadioButton ID="RadioButton29" runat="server" GroupName="rb10" />
            <br />
            <asp:RadioButton ID="RadioButton30" runat="server" GroupName="rb10" />
            <br />
        </div>

        <asp:Button runat="server" Text="Concludi Test!" OnClick="ConcludiTest_Click" />
        <%--<asp:Label id="lbl" runat="server" Text=""></asp:Label>--%>
        <asp:Button ID="btnTornaHomeCorso" runat="server" Text="Torna alla Home del Corso" Visible="False" OnClick="TornaHomeCorso_Click" />

</asp:Content>

