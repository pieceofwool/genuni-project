<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Modifica_Profilo_VecchiaVersione.aspx.cs" Inherits="Modifica_Profilo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/StyleStudenti.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <div class="wrapper fadeInDown" style="padding-right: 350px;">
        <div class="formContent">
            <div class="manage-fields-wrapper">
                <div class="udlite-container user-manage--container--11_wD">
                    <input type="hidden" name="csrfmiddlewaretoken" value="ZWMsn0DLX2ef9iOICnMhzc516rmtjGXoQpxXBMHDmwfcZmEiPMlMh6xKDH5megwi"><input name="ignore_warnings" type="hidden" value="false"><div class="user-manage--section--4Hqsd">
                        <fieldset class="udlite-form-group" style="padding-top: 32px;">
                            <table>
                                <tr>
                                    <td>
                                        <div id="tabella" runat="server">
                                            <asp:Label ID="lblRes" runat="server" Text=""></asp:Label>
                                        </div>
                                        <div class="udlite-form-label udlite-heading-sm">Profilo:</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="udlite-form-group">
                                            <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--3">Nome</label><br />
                                            <asp:TextBox ID="txtNome" runat="server" MaxLength="64"></asp:TextBox>
                                        </div>
                                        <div class="udlite-form-group">
                                            <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--5">Cognome</label><asp:TextBox ID="txtCognome" runat="server" MaxLength="64"></asp:TextBox>
                                        </div>
                                        <div class="udlite-form-group">
                                            <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--5">Indirizzo</label>
                                            <asp:TextBox ID="txtIndirizzo" runat="server"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                        <div class="formContent" id="">
                            <div class="manage-fields-wrapper" id="manage2">
                                <div class="udlite-container user-manage--container--11_wD">
                                    <input type="hidden" name="csrfmiddlewaretoken" value="ZWMsn0DLX2ef9iOICnMhzc516rmtjGXoQpxXBMHDmwfcZmEiPMlMh6xKDH5megwi">
                                    <input name="ignore_warnings" type="hidden" value="false"><div class="user-manage--section--4Hqsd">
                                        <div class="udlite-form-group">
                                            <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--5">Città</label><br />
                                            <asp:TextBox ID="txtCitta" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="udlite-form-group">
                                            <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--5">Provincia</label>
                                            <asp:TextBox ID="txtProvincia" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="udlite-form-group">
                                            <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--5">Nazionalità</label>
                                            <asp:TextBox ID="txtNazionalita" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="udlite-form-group">
                                            <asp:Button ID="btnSalva" runat="server" CssClass="btnBE" Text="Salva" OnClick="btnSalva_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="contentModificaPassword">
        <div class="formContent" id="formContentModificaPassword">
            <div class="manage-fields-wrapper">
                <div class="udlite-container user-manage--container--11_wD">
                    <input type="hidden" name="csrfmiddlewaretoken" value="ZWMsn0DLX2ef9iOICnMhzc516rmtjGXoQpxXBMHDmwfcZmEiPMlMh6xKDH5megwi"><input name="ignore_warnings" type="hidden" value="false"><fieldset class="user-manage--section--4Hqsd">
                        <fieldset class="udlite-form-group" style="padding-top: 32px;">
                            <div id="Div1" runat="server">
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </div>
                            <legend class="udlite-form-label udlite-heading-sm">Modifica Password:</legend>
                            <asp:Label runat="server" Text="User"
                                Width="100px"></asp:Label>
                            <asp:TextBox ID="txtUser" runat="server" Width="200px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Password"
                                Width="100px"></asp:Label>
                            <asp:TextBox ID="txtPassword" runat="server"
                                TextMode="Password" Width="200px">
                            </asp:TextBox>
                            <br />
                            <asp:Button ID="btnSalvaPass" runat="server" Text="Salva" OnClick="btnSalvaPass_Click" />
                            <br />
                            <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
                        </fieldset>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

