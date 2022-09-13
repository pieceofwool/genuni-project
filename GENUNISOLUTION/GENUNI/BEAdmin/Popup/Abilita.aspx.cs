using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Popup_Abilita : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAbilita_Click(object sender, EventArgs e)
    {
        UTENTI.Utenti_WSSoapClient U = new UTENTI.Utenti_WSSoapClient();
        if (Session["chiave"] == null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Selezionare una voce dalla tabella')", true);
            return;
        }

        int Chiave = int.Parse(Session["chiave"].ToString());
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        if (C.Check_Tutor_Abilitato(Chiave) == true)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Impossibile disabilitare un tutor con corsi assegnati. Togliere le assegnazioni e riprovare')", true);
            return;
        };


        DataTable dt = new DataTable();
        dt = U.SelectOne(Chiave);
        bool Abilitato = bool.Parse(dt.Rows[0]["Abilitato"].ToString());
        U.Abilita(Abilitato, Chiave);

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Stato modificato correttamente')", true);
    }
}