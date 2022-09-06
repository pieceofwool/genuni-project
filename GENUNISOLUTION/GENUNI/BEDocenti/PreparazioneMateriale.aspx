<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PreparazioneMateriale.aspx.cs" Inherits="BEDocenti_PreparazioneMateriale" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

     <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />


    <script type="text/javascript">

        $(document).ready(function () {

            $('.popupInserisciMateriale').click(function () {

                var url = 'POPUP/preparazioneMateriale/InserisciMateriale.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Inserisci materiale ',
                    resizable: false,
                    width: 400,
                    height: 400,
                    overlay: { opacity: 0.9, background: 'black' },

                    open: function (type, data) { $(this).parent().appendTo('form'); }
                });

                return false;
            });
        });
    </script>

     <script type="text/javascript">

         $(document).ready(function () {

             $('.popupModificaMateriale').click(function () {

                 var url = 'POPUP/preparazioneMateriale/ModificaMateriale.aspx';
                 var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                 inserisci.dialog({
                     modal: true,
                     title: 'Modifica materiale',
                     resizable: false,
                     width: 400,
                     height: 400,
                     overlay: { opacity: 0.9, background: 'black' },

                     open: function (type, data) { $(this).parent().appendTo('form'); }
                 });

                 return false;
             });
         });
     </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="grvProgrammi" runat="server">
                <Columns>
                    <asp:ButtonField Text="Seleaziona" />
                </Columns>
            </asp:GridView>

            <%--popup per l'inserimento di tutto il materiale--%>
            <asp:Button class="popupInserisciMateriale" ID="btnInserisciMateriale" runat="server" Text="Inserisci materiale" />
            <asp:Button class="popupModificaMateriale" ID="btnModificaMateriale" runat="server" Text="Modifica materiale " />


        </div>
    </form>
</body>
</html>
