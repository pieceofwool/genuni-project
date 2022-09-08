using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BEDocenti_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaGrigliaContabilita();
    }
    protected void CaricaGrigliaContabilita()
    {

        ESTERNI.Esterni_WSSoapClient Es = new ESTERNI.Esterni_WSSoapClient();

        int COD_DOCENTE = Convert.ToInt32(Session["COD_DOCENTE"]);

        grvStoricoCorsi.DataSource = Es.Guadagni(COD_DOCENTE);
        grvStoricoCorsi.DataBind();
    }

    protected void btnAggiorna_Click(object sender, EventArgs e)
    {
        CaricaGrigliaContabilita();
    }


}