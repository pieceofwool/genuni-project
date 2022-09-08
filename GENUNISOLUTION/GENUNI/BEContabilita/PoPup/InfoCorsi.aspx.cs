using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class BEContabilita_PoPup_InfoCorsi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            InfoCorsi();

        }
        CaricaGriglia();
    }

    protected void InfoCorsi()
    {
        int codice = Convert.ToInt32(Session["id"]);

        CORSI.Corsi_WSSoapClient corsi = new CORSI.Corsi_WSSoapClient();
        PREISCRIZIONE.Preiscrizione_WSSoapClient preiscrizione = new PREISCRIZIONE.Preiscrizione_WSSoapClient();

        DataTable dtPreiscritti = new DataTable();
        dtPreiscritti = preiscrizione.CountPreiscrizioniCorso(codice);
        string elencoPre = dtPreiscritti.Rows[0].Field<int>("QUANTI").ToString();
        lblPreIscritti.Text += "<p><b>Elenco Preiscritti: ";
        lblPreIscritti.Text += elencoPre;
        lblPreIscritti.Text += "</b><p/>";

        DataTable dtCorsi = new DataTable();
        dtCorsi = corsi.SelectOne(codice);
        foreach (DataRow dr in dtCorsi.Rows)
        {
            litCorsi.Text += "<div>";
            litCorsi.Text += "<p><b>Titolo: ";
            litCorsi.Text += dr.Field<string>("Titolo").ToString();
            litCorsi.Text += "</b><p/>";
            litCorsi.Text += "<p><b>Data Partenza: ";
            litCorsi.Text += dr.Field<DateTime>("Data_Partenza").ToString();
            litCorsi.Text += "</b><p/>";
            litCorsi.Text += "<p><b>Tipo: ";
            litCorsi.Text += dr.Field<string>("Tipo").ToString();
            litCorsi.Text += "</b><p/>";
            litCorsi.Text += "<div/>";
        }
    }

    protected void CaricaGriglia()
    {
        int codice = Convert.ToInt32(Session["id"]);
        CONTABILITA.Contabilita_WSSoapClient contabilita = new CONTABILITA.Contabilita_WSSoapClient();

        DataTable dtContabilita = new DataTable();
        dtContabilita = contabilita.CostoDocentePerCorso(codice);

        grdDocente.DataSource = dtContabilita;
        grdDocente.DataBind();
    }


    protected void VisualizzaCosto()
    {
        if (string.IsNullOrEmpty(txtCosto.Text))
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Inserire un prezzo')", true);
            return;
        }
        int costo = int.Parse(txtCosto.Text);

        CORSI.Corsi_WSSoapClient corsi = new CORSI.Corsi_WSSoapClient();
        int codice = Convert.ToInt32(Session["id"]);

        corsi.CorsiQuotazione(codice, costo);
        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Quotazione effettuata')", true);

    }

    protected void btnInvia_Click(object sender, EventArgs e)
    {
        VisualizzaCosto();
        txtCosto.Text = "";
    }
}