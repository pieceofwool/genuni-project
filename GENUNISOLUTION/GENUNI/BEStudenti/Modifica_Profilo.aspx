<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBE_Studenti.master" AutoEventWireup="true" CodeFile="Modifica_Profilo.aspx.cs" Inherits="Modifica_Profilo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../assets/css/StyleStudenti.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
        <div class="wrapper fadeInDown">
            <div id="formContent">

                <div class="manage-fields-wrapper">
                    <div class="udlite-container user-manage--container--11_wD">
                        <input type="hidden" name="csrfmiddlewaretoken" value="ZWMsn0DLX2ef9iOICnMhzc516rmtjGXoQpxXBMHDmwfcZmEiPMlMh6xKDH5megwi"><input name="ignore_warnings" type="hidden" value="false"><div class="user-manage--section--4Hqsd">
                            <fieldset class="udlite-form-group" style="padding-top:77px;">
                                <legend class="udlite-form-label udlite-heading-sm">Profilo:</legend>
                                <div class="udlite-form-group">
                                    <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--3">Nome</label><br />
                                    <asp:TextBox ID="txtNome" runat="server"  MaxLength="64"></asp:TextBox>
                                </div>
                                <div class="udlite-form-group">
                                    <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--5">Cognome</label><asp:TextBox ID="txtCognome" runat="server" MaxLength="64"></asp:TextBox>
                                </div>
                                    <div class="udlite-form-group">
                                    <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--5">Indirizzo</label>
                                        <asp:TextBox ID="txtIndirizzo" runat="server"></asp:TextBox>
                                    </div>
                              
                                 <div class="udlite-form-group">
                                     <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--5">Città</label><br />
                                        <asp:TextBox ID="txtCitta" runat="server"></asp:TextBox>
                                    </div>
                               
                                      <div class="udlite-form-group">
                                          <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--5">Provincia</label>
                                        <asp:TextBox ID="txtProvincia" runat="server"></asp:TextBox>
                                    </div>
                               
                                    <div class="udlite-form-group">
                                        <label class="udlite-sr-only udlite-form-label udlite-heading-sm" for="form-group--11">Nazionalità</label><div class="udlite-select-container udlite-select-container-large">

                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>--Seleziona Nazionalità--</asp:ListItem>
                                                <asp:ListItem>Tedesco</asp:ListItem>
                                                <asp:ListItem>Inglese</asp:ListItem>
                                                <asp:ListItem>Spagnolo</asp:ListItem>
                                                <asp:ListItem>Olandese</asp:ListItem>
                                                <asp:ListItem>Italiano</asp:ListItem>
                                                <asp:ListItem>Giapponese</asp:ListItem>
                                                <asp:ListItem>Cinese</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                <div class="udlite-form-group">
                                        <asp:Button ID="btnSalva" runat="server" Text="Salva" />
                                    </div>
                            </fieldset>
                        </div>
                        <hr style="border: 2px solid #5fcf80;background-color: #5fcf80;">
                        <div>
                             <legend class="udlite-form-label udlite-heading-sm">Modifica Password:</legend>
                            <div>
                                <asp:Label runat="server" Text="Vecchia Password"
                                    Width="100px"></asp:Label>
                                <asp:TextBox ID="TxtVecchiaPassword" runat="server" Width="200px"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label2" runat="server" Text="Nuova Password"
                                    Width="100px"></asp:Label>
                                <asp:TextBox ID="txtNuovaPassword" runat="server"
                                    TextMode="Password" Width="200px">
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
</asp:Content>

