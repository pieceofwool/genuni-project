using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Popup_AssegnaCorsi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CaricaDDL();
        }
    }

    protected void btnAssegna_Click(object sender, EventArgs e)
    {
        //CORSI C = new CORSI();
        int Chiave = int.Parse(Session["ChiaveAssegnazione"].ToString());
        int Cod_Utente = int.Parse(ddlTutor.SelectedValue);
        //C.Chiave = Chiave;
        // C.Cod_Utente = Cod_Utente;
        // metodo e SP da creare
        //C.Assegna();

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Tutor assegnato correttamente')", true);
    }
    protected void CaricaDDL()
    {
        //Da aggiornare con effettiva classe, metodo e nome del datatextfield

        //UTENTI U = new UTENTI();
        //  ddlTutor.DataSource = U.SelectTutor();
        ddlTutor.DataValueField = "Chiave";
        ddlTutor.DataTextField = "Cognome";
        ddlTutor.DataBind();
        ddlTutor.SelectedValue = null;
    }
}