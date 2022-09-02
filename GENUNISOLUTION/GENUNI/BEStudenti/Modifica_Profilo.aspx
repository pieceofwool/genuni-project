<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Modifica_Profilo.aspx.cs" Inherits="Modifica_Profilo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/StyleStudenti.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <div style="background-image: url('#'); background-repeat: no-repeat; background-attachment: fixed; background-position: left;">
        <div class="wrapper fadeInDown">
            <div id="formContent">

                <div class="manage-fields-wrapper">
                    <div class="udlite-container user-manage--container--11_wD">
                        <input type="hidden" name="csrfmiddlewaretoken" value="ZWMsn0DLX2ef9iOICnMhzc516rmtjGXoQpxXBMHDmwfcZmEiPMlMh6xKDH5megwi"><input name="ignore_warnings" type="hidden" value="false"><div class="user-manage--section--4Hqsd">
                            <fieldset class="udlite-form-group">
                                <legend class="udlite-form-label udlite-heading-sm">Fondamentali:</legend>
                                <div class="udlite-form-group">
                                    <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--3">Nome</label><asp:TextBox ID="txtNome" runat="server" placeholder="Nome" MaxLength="64"></asp:TextBox>
                                </div>
                                <div class="udlite-form-group">
                                    <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--5">Cognome</label><asp:TextBox ID="txtCognome" runat="server" placeholder="Cognome" MaxLength="64"></asp:TextBox>
                                </div>
                                <div class="udlite-form-group">
                                    <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--7">Intestazione</label><div class="udlite-text-input-container">
                                        <asp:TextBox ID="txtDescrizione" runat="server" placeholder="Descrizione"></asp:TextBox>
                                    </div>
                                    <div id="form-group-note--8" class="udlite-form-note udlite-text-xs">Aggiungi un titolo professionale come "Insegnante presso GenUni" o "Architetto".</div>
                                </div>
                                <div class="udlite-form-group">
                                    <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--9">Biografia</label><div class="udlite-in-udheavy rt-editor-container">

                                        <asp:TextBox ID="txtBiografia" runat="server" placeholder="Biografia" TextMode="MultiLine"></asp:TextBox>

                                        <div id="form-group-note--10" class="udlite-form-note udlite-text-xs">Non sono ammessi link e codici coupon in questa sezione.</div>
                                    </div>
                                    <div class="udlite-form-group">
                                        <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--11">Lingue</label><div class="udlite-select-container udlite-select-container-large">

                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>--Seleziona Lingua--</asp:ListItem>
                                                <asp:ListItem>Tedesco</asp:ListItem>
                                                <asp:ListItem>Inglese</asp:ListItem>
                                                <asp:ListItem>Spagnolo</asp:ListItem>
                                                <asp:ListItem>Olandese</asp:ListItem>
                                                <asp:ListItem>Italiano</asp:ListItem>
                                                <asp:ListItem>Giapponese</asp:ListItem>
                                                <asp:ListItem>Cinese</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <asp:Button ID="btnSalva" runat="server" Text="Salva" />
                                    </div>
                            </fieldset>
                        </div>
                        <div>
                            <div>
                                <asp:Label runat="server" Text="Nome"
                                    Width="100px"></asp:Label>
                                <asp:TextBox ID="TextBox_user_name" runat="server" Width="100px"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label2" runat="server" Text="Password"
                                    Width="100px"></asp:Label>
                                <asp:TextBox ID="TextBox_password" runat="server"
                                    TextMode="Password" Width="100px">
                                </asp:TextBox>
                                <br />
                                <asp:Button ID="btn_Salva" runat="server" Text="Salva" />
                                <br />
                                <asp:Label ID="lb1" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

