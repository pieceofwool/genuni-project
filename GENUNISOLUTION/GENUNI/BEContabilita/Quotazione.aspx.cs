using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEContabilita_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaGriglia();
    }

    protected void CaricaGriglia()
    {
        CORSI.Corsi_WSSoapClient Corsi = new CORSI.Corsi_WSSoapClient();
        grdQuotazione.DataSource = Corsi.SelectAllPreparati();
        grdQuotazione.DataBind();
    }


    protected void grdValutazione_SelectedIndexChanged(object sender, EventArgs e)
    {

        Session["id"] = int.Parse(grdQuotazione.SelectedDataKey[0].ToString());
    }

    protected void btnAggiorna_Click(object sender, EventArgs e)
    {
        CaricaGriglia();
    }
}