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
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        //CORSI C = new CORSI();
        int Chiave = int.Parse(Session["ChiaveAssegnazione"].ToString());
        int Cod_Utente = int.Parse(ddlTutor.SelectedValue);
        //C.Chiave = Chiave;
        // C.Cod_Utente = Cod_Utente;

        C.UpdateTutor(Chiave, Cod_Utente);

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Tutor assegnato correttamente')", true);
    }
    protected void CaricaDDL()
    {
        UTENTI.Utenti_WSSoapClient U = new UTENTI.Utenti_WSSoapClient();
        //UTENTI U = new UTENTI();
        ddlTutor.DataSource = U.SelectTutor();
        ddlTutor.DataValueField = "Chiave";
        ddlTutor.DataTextField = "Nome";
        ddlTutor.DataBind();
        ddlTutor.SelectedValue = null;
    }
}