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
        CaricaGenMoney();
        CaricaStorico();
    }

    protected void btnAcquista_Click(object sender, EventArgs e)
    {
        Response.Redirect("AcquistoGenMoney.aspx");
    }

    protected void CaricaGenMoney()
    {
        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();
        //int CHIAVE = int.Parse(Session["codiceStudente"].ToString());
        //portafoglio (sum)
        int COD_STUDENTE = 1;
        int saldo = g.SaldoStudente(COD_STUDENTE);
        lblSaldo.Text = saldo.ToString();
    }


    //verificare che il bottone sia utile
    protected void btnAggiornaSaldo_Click(object sender, EventArgs e)
    {
        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();
        //qui va l'aggiornamento della griglia tramite l'aggiornamento del saldo +
        //PROCEDURE GENMONEY_COUNT_STUDENTE
    }


    protected void CaricaStorico()
    {
        //storico acquisti con cod studente
        //GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();
        //int CHIAVE = 1;
        //grigliaStorico.DataSource = g.Storico_Studente(CHIAVE);
        //grigliaStorico.DataBind();
    }

}