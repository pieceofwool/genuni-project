using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEStudenti_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaCorsiDisponibili();
    }


    protected void CaricaCorsiDisponibili()
    {
        CORSI.Corsi_WSSoapClient c = new CORSI.Corsi_WSSoapClient();
        int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
        grigliaCorso.DataSource = c.NonComprati(CHIAVE);
        grigliaCorso.DataBind();
    }


    protected void grigliaCorso_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["CHIAVE"] = grigliaCorso.SelectedDataKey[0];
    }
}