<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApprovaCorsi.aspx.cs" Inherits="BEAdmin_Popup_ApprovaCorsi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../assets/css/styleBE_Grafica.css" rel="stylesheet" />

</head>
<body>
     <form id="form1" runat="server">
        
        <div id="popup1" class="popup">
            
            <div>
                Sei sicuro/a di voler approvare il corso selezionato?<br />
                <asp:Button ID="btnApprova" CssClass="btnBE" runat="server" Text="Approva corso" OnClick="btnApprova_Click" />
            </div>
        </div>
        <a href="#" class="close-popup"></a>

    </form>
</body>
</html>
