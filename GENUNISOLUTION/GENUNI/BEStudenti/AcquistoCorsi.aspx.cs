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
        //quando acquisto un corso si ha un insert dentro classi senza punteggio e una transazione nella tabella genmoney
    }

    protected void btnAcquista_Click(object sender, EventArgs e)
    {
        CLASSI.Classi_WSSoapClient cl = new CLASSI.Classi_WSSoapClient();
        //da sostituire con la session
        int COD_CORSO = 1;
        int COD_STUDENTE = 1;
        CORSI.Corsi_WSSoapClient co = new CORSI.Corsi_WSSoapClient();
        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();

        GridViewRow riga = grigliaCorso.SelectedRow;
        int AMMONTARE = int.Parse(riga.Cells[10].Text.ToString());

        //DataTable dt = new DataTable();
        //int costo = int.Parse(dt.Rows[0]["costo"].ToString());

        if (g.SaldoStudente(COD_STUDENTE) > AMMONTARE)
        {
            cl.Insert(COD_CORSO, COD_STUDENTE);
            g.Insert(COD_STUDENTE, COD_CORSO, AMMONTARE);
        }
        else
        {
            lblErrore.Text = "Saldo insufficiente";
        }
        int saldoNuovo = g.SaldoStudente(COD_STUDENTE) - AMMONTARE;
    }

    protected void CaricaCorsiDisponibili()
    {
        CORSI.Corsi_WSSoapClient c = new CORSI.Corsi_WSSoapClient();
        int CHIAVE = 2;
        grigliaCorso.DataSource = c.SelectOne(CHIAVE);
        grigliaCorso.DataBind();
    }

}