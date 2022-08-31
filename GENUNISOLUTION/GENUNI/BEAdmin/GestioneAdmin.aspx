<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBEAdmin.master" AutoEventWireup="true" CodeFile="GestioneAdmin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--L'admin non gestisce la contabilità, admin != admin contabile.--%>

    <br />
    <br />
    <br />
    <br />

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
                <%--SelectAll corsi nella prima pagina, poi popup per assegnare un docente
                    se non è stato già assegnato, infine popup per assegnare uno studente.--%>
            </li>
            <li>
                <a href="GestioneReport.aspx">Grafici e report</a>
                <%--???--%>
            </li>
        </ul>
    </div>

</asp:Content>

