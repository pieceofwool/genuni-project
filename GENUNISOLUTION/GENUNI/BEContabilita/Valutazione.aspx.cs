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
        grdValutazione.DataSource = Corsi.SelectAllPreparati(); 
        grdValutazione.DataBind();
    }

    protected void grdValutazione_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow row = grdValutazione.SelectedRow;
        Session["id"] = row.Cells[1].Text;
    }
}