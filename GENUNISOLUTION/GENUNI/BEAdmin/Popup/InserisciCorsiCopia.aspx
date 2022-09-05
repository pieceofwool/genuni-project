<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InserisciCorsiCopia.aspx.cs" Inherits="Admin_Popup_InserisciCorsi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../assets/css/styleBE_Grafica.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">X</button>
            <h1>Inserisci corsi</h1>
        </div>
        <div class="modal-body">
            <div class="panel panel-default">
                <div class="panel-heading text-center">
                    <input id="txt" type="text" class="lbl" />
                </div>
                <div class="panel-body">
                    <table>
                        <tr>
                            <td>
                                <input id="lbl" type="text" class="txt" placeholder=" " />
                                <%--<asp:Label ID="lbl" CssClass="lbl" runat="server" Text=""></asp:Label>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <select id="ddlUtenti" title="Tutor assegnato">
                                    <option></option>
                                </select>
                                <%--<asp:DropDownList ID="ddlUtenti" ToolTip="Tutor assegnato" runat="server"></asp:DropDownList><br />--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="file" id="fupAvatar" title="Avatar" accept=".png,.jpg,.jpeg" />
                                <%--<asp:FileUpload ID="fupAvatar" runat="server" ToolTip="Avatar" accept=".png,.jpg,.jpeg" />--%>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <input id="txtTitolo" type="text" class="txt" placeholder="Titolo" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input id="txtTipo" type="text" class="txt" placeholder="Tipo" />
                                <%--<asp:TextBox ID="txtTipo" CssClass="txt" runat="server" PlaceHolder="Tipo"></asp:TextBox>--%><br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input id="txtDescrizione" type="text" class="txt" placeholder="Descrizione" />
                                <%--<asp:TextBox ID="txtDescrizione" CssClass="txt" runat="server" PlaceHolder="Descrizione"></asp:TextBox>--%><br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input id="txtDataPartenza" type="date" class="txt" />
                                <%--<asp:TextBox ID="txtDataPartenza" CssClass="txt" runat="server" ToolTip="Data Partenza" TextMode="Date"></asp:TextBox>--%><br />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <div class="panel-footer">
                    <%--<input type="button" value="Find Employee" id="empbutton" />--%>
                    <asp:Button ID="btnInserisci" CssClass="btnBE" runat="server" Text="Inserisci" />
                    <%--<input type="button" id="btnInserisci" class="btnBE" value="Inserisci" />--%>
                    <div class="col-xs-10" id="lblstatus"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
