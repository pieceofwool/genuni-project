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
        CaricaGrigliaApprovazione();
    }

    protected void gridApprovazioneCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow riga = gridApprovazioneCorsi.SelectedRow;
        Session["ChiaveApprovazione"] = gridApprovazioneCorsi.SelectedDataKey[0].ToString();
    }

    protected void btnAggiornaApprovazione_Click(object sender, EventArgs e)
    {
        CaricaGrigliaApprovazione();
    }

    protected void CaricaGrigliaApprovazione()
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();

        gridApprovazioneCorsi.DataSource = C.Select_Utenti_Filtro_Q();
        gridApprovazioneCorsi.DataBind();

    }
}