using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaGrigliaCreazione();
    }

    protected void gridCreazioneCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow riga = gridCreazioneCorsi.SelectedRow;
        Session["ChiaveCreazione"] = gridCreazioneCorsi.SelectedDataKey[0].ToString();
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

    protected void CaricaGrigliaCreazione()
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();

        gridCreazioneCorsi.DataSource = C.SelectAll();
        gridCreazioneCorsi.DataBind();

    }
}