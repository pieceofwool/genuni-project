<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBackendAdmin.master" AutoEventWireup="true" CodeFile="GestioneAdmin.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--L'admin non gestisce la contabilità, admin != admin contabile.--%>

    <div>
        <ul>
            <li>
                <a href="Admin/GestioneTutor.aspx">Abilitazione tutor e contabili</a>
                <%--SelectAll (where TIPO = T OR C) tutor e contabili--%>
                <%--ABILITATO SI/NO (Una SP che sia in grado di cambiare quel bool insomma)--%>
            </li>
            <li>
                <a href="Admin/GestioneCorsi.aspx">Creazione e assegnazione corsi</a>
                <%--Insert into corsi--%>
                <%--SelectAll corsi nella prima pagina, poi popup per assegnare un docente
                    se non è stato già assegnato, infine popup per assegnare uno studente.--%>
            </li>
            <li>
                <a href="Admin/GestioneReport.aspx">Grafici e report</a>
                <%--???--%>
            </li>
        </ul>
    </div>

</asp:Content>

