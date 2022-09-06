using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BEDocenti_Default : System.Web.UI.Page
{
    CORSI.Corsi_WSSoapClient Co = new CORSI.Corsi_WSSoapClient();
    //variabili corsi

    // avatar corso serve un gestore img



    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaGrigliaCorsiAttivi();
    }

    protected void CaricaGrigliaCorsiAttivi()
    {
        CORSI.Corsi_WSSoapClient Co = new CORSI.Corsi_WSSoapClient();
        //Session["CHIAVE_DOCENTE"] = 1;
        //Session["CHIAVE_CORSO"] = 1;

        int CHIAVE_DOCENTE = 1; /*Convert.ToInt32(Session["CHIAVE_DOCENTE"]);*/
        int CHIAVE_CORSO = 11; /*Convert.ToInt32(Session["CHIAVE_CORSO"]);*/

        grvCorsiAttivi.DataSource = Co.SelectAllDocenti(CHIAVE_DOCENTE, CHIAVE_CORSO);
        grvCorsiAttivi.DataBind();
    }
    //per ogni corso attivo e in corso per docente verranno visualizzati in automatico

    protected void grvCorsiAttivi_SelectedIndexChanged(object sender, EventArgs e)
    {

        Session["CHIAVE_CORSO"] = grvCorsiAttivi.SelectedDataKey[0];
        
        if (Session["CHIAVE_CORSO"] != null)
        {
            Response.Redirect("Materie.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Seleziona una riga per poterla modificare')", true);
            return;
        }
    }
    protected void VisualizzaAccettazioneCorsi()
    {
        CORSI.Corsi_WSSoapClient Co = new CORSI.Corsi_WSSoapClient();
        MATERIE.Materie_WSSoapClient Ma = new MATERIE.Materie_WSSoapClient();

        //Session["CHIAVE_DOCENTE"] = 1;
        //Session["CHIAVE_CORSO"] = 1;

        int CHIAVE_DOCENTE = 1; /*Convert.ToInt32(Session["CHIAVE_DOCENTE"]);*/
        int CHIAVE_CORSO = Convert.ToInt32(Session["CHIAVE_CORSO"]);

        grvAccettazioneCorsi.DataSource = Co.Corsi_SelectNonApprovati();
        grvAccettazioneCorsi.DataBind();
    }
}