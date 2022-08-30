<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GestioneAdmin.aspx.cs" Inherits="GestioneAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<%--L'admin non gestisce la contabilità, admin != admin contabile.--%>



<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li>
                    <a href="GestioneTutor.aspx">Abilitazione tutor e contabili</a>
                    <%--SelectAll (where TIPO = T OR C) tutor e contabili--%>
                    <%--ABILITATO SI/NO (Una SP che sia in grado di cambiare quel bool insomma)--%>
                </li>
                <li>
                    <a href="GestioneCorsi.aspx">Creazione e assegnazione corsi</a>
                    <%--Insert into corsi--%>
                    <%--SelectAll corsi nella prima pagina, poi popup per assegnare un tutor.--%>
                </li>
                <li>
                    <a href="GestioneReport.aspx">Grafici e report</a>
                    <%--???--%>
                </li>
            </ul>
        </div>
    </form>
</body>
</html>
