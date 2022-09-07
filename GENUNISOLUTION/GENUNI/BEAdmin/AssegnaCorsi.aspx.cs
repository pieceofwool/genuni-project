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
        CaricaGrigliaAssegnazione();
    }

    protected void gridAssegnazioneCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow riga = gridAssegnazioneCorsi.SelectedRow;
        Session["ChiaveAssegnazione"] = gridAssegnazioneCorsi.SelectedDataKey[0].ToString();
    }

    protected void btnAggiornaAssegnazione_Click(object sender, EventArgs e)
    {
        CaricaGrigliaAssegnazione();
    }

    protected void CaricaGrigliaAssegnazione()
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();

        gridAssegnazioneCorsi.DataSource = C.SelectAll();
        gridAssegnazioneCorsi.DataBind();
    }

}