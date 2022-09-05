using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEstudenti_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCompra_Click(object sender, EventArgs e)
    {
        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();
        int AMMONTARE= int.Parse(ddlPacchetto.SelectedValue);
        //int COD_STUDENTE = int.Parse(Session["Cod_Studente"].ToString());
        int COD_STUDENTE = 1;
        //qui va l'insert senza codice corso
        g.Studenti_Acquisto(COD_STUDENTE, AMMONTARE);
        lblC.Text = "GenMoney acquistati! Clicca su Situazione Contabile per visualizzare il saldo";

    }

    protected void ddlPacchetto_SelectedIndexChanged(object sender, EventArgs e)
    {
        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();
        int AMMONTARE = int.Parse(ddlPacchetto.SelectedValue);

    }
}