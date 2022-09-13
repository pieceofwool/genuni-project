using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BETutor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {//carica ddl
        if (!IsPostBack == true)
        {
            MATERIE.Materie_WSSoapClient M = new MATERIE.Materie_WSSoapClient();
            int COD_CORSO = Convert.ToInt32(Session["Chiave_Corso"].ToString());
            DataTable dt = new DataTable();
            dt = M.SelectNonAssegnate(COD_CORSO);
            ddlMaterie.DataSource = dt;
            ddlMaterie.DataValueField = dt.Columns[0].ToString();
            ddlMaterie.DataTextField = dt.Columns[1].ToString();
            ddlMaterie.DataBind();
        }

        btnCronistoriaDocente.Enabled = false;
        btnSelezionaDocente.Enabled = false;
    }

    protected void btnSkills_Click(object sender, EventArgs e)
    {
        //ricerca per skills
        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();
        string skills = txtRicercaDocente.Text.ToString();
        GridDocenti.DataSource = E.SelectForSkills(skills);
        GridDocenti.DataBind();
    }
    protected void GridDocenti_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["COD_DOCENTE"]= Convert.ToInt32(GridDocenti.SelectedDataKey[0].ToString());
        btnCronistoriaDocente.Enabled = true;
        btnSelezionaDocente.Enabled = true;
    }

    protected void btnSelezionaDocente_Click(object sender, EventArgs e)
    {
        MATERIE.Materie_WSSoapClient M = new MATERIE.Materie_WSSoapClient();
        int CHIAVE = Convert.ToInt32(ddlMaterie.SelectedValue);
        int COD_DOCENTE = Convert.ToInt32(GridDocenti.SelectedDataKey[0].ToString());
        M.InsertDocente(CHIAVE, COD_DOCENTE);

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati inseriti correttamente')", true);
        return;
    }

    protected void btnCronistoriaDocente_Click(object sender, EventArgs e)
    {
        //bottone per passare a cronistoria
        Response.Redirect("../PREPARAZIONE_CORSO/cronistoriaDocenti.aspx");
    }
}