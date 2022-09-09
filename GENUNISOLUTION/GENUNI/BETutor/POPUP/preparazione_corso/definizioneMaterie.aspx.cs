using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class definizioneMaterie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            CaricaMateriePreparate();
            //CaricaCorsiCreati();
        }

    }

    protected void btnInserisciMaterie_Click(object sender, EventArgs e)
    {
        if (txtTitolo.Text == "" || txtIndice.Text == "" || txtDescrizione.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati non inseriti')", true);
            return;
        }
        else
        {
            InserisciMateria();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati inseriti correttamente')", true);
            return;
        }
    }

    protected void InserisciMateria()
    {
        MATERIE.Materie_WSSoapClient Ma = new MATERIE.Materie_WSSoapClient();

        int COD_CORSO = Convert.ToInt32(Session["ChiaveCorso"]);
        int COD_DOCENTE = 0;
        int COSTO_DOCENTE = 0;
        string TITOLO = txtTitolo.Text.ToString();
        string DESCRIZIONE = txtDescrizione.Text.ToString();
        int INDICE = int.Parse(txtIndice.Text);

        Ma.Insert(COD_CORSO, COD_DOCENTE, COSTO_DOCENTE, TITOLO, DESCRIZIONE, INDICE);
    }

    protected void CaricaMateriePreparate()
    {
        MATERIE.Materie_WSSoapClient Ma = new MATERIE.Materie_WSSoapClient();
        gridMatCorso.DataSource = Ma.MaterieInfoCorso(int.Parse(Session["ChiaveCorso"].ToString()));
        gridMatCorso.DataBind();
    }

    protected void CaricaCorsiCreati()
    {
        CaricaMateriePreparate();
    }

    protected void btnAssegnaM_Click(object sender, EventArgs e)
    {
        if (Session["ChiaveCorso"] == null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Selezionare una voce dalla tabella dei corsi')", true);
            return;
        }
        int ChiaveCorso = int.Parse(Session["ChiaveCorso"].ToString());
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        C.CorsiMaterieAssegnate(ChiaveCorso);

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Materia assegnata correttamente')", true);
        CaricaMateriePreparate();
    }
    //protected void gridCorsiCreati_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    GridViewRow riga = gridCorsiCreati.SelectedRow;
    //    Session["ChiaveCorso"] = gridCorsiCreati.SelectedDataKey[0].ToString();
    //}

    //protected void btnAggiornaCorsi_Click(object sender, EventArgs e)
    //{
    //    CaricaCorsiCreati();
    //}
}