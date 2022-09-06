using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaGrigliaCreazione();
        CaricaGrigliaAssegnazione();
        CaricaGrigliaApprovazione();

    }

    protected void gridCreazioneCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow riga = gridCreazioneCorsi.SelectedRow;
        Session["ChiaveCreazione"] = gridCreazioneCorsi.SelectedDataKey[0].ToString();
     

    }
    protected void gridAssegnazioneCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow riga = gridAssegnazioneCorsi.SelectedRow;
        Session["ChiaveAssegnazione"] = gridAssegnazioneCorsi.SelectedDataKey[0].ToString();


    }
    protected void gridApprovazioneCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow riga = gridApprovazioneCorsi.SelectedRow;
        Session["ChiaveApprovazione"] = gridApprovazioneCorsi.SelectedDataKey[0].ToString();


    }

    protected void btnVisualizzaInfo_Click(object sender, EventArgs e)
    {
        GridViewRow riga = gridCreazioneCorsi.SelectedRow;
        Session["ChiaveCreazione"] = gridCreazioneCorsi.SelectedDataKey[0].ToString();
        
    }

    protected void btnAggiornaCreazione_Click(object sender, EventArgs e)
    {
        CaricaGrigliaCreazione();

    }
    protected void btnAggiornaAssegnazione_Click(object sender, EventArgs e)
    {
        CaricaGrigliaAssegnazione();

    }
    protected void btnAggiornaApprovazione_Click(object sender, EventArgs e)
    {
        CaricaGrigliaApprovazione();

    }

    protected void CaricaGrigliaCreazione()
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();

        gridCreazioneCorsi.DataSource = C.SelectAll();
        gridCreazioneCorsi.DataBind();
        
    }
    protected void CaricaGrigliaAssegnazione()
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();

        gridAssegnazioneCorsi.DataSource = C.SelectAll();
        gridAssegnazioneCorsi.DataBind();

    }
    protected void CaricaGrigliaApprovazione()
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();

        gridApprovazioneCorsi.DataSource = C.Select_Utenti_Filtro_Q();
        gridApprovazioneCorsi.DataBind();

    }
}