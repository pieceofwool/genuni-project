using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // controllo se lo studente ha già acquistato il corso e disabilito tutto in caso positivo
        CLASSI.Classi_WSSoapClient c = new CLASSI.Classi_WSSoapClient();
        int COD_CORSO = int.Parse(Session["CHIAVE_CORSO"].ToString());
        int COD_STUDENTE = int.Parse(Session["CodiceAttore"].ToString());

        if (c.CheckOne(COD_CORSO, COD_STUDENTE))
        {
            lblTitolo.Text = "Hai già acquistato questo corso!";
            bottoni.Visible = false;
        }
    }

    protected void btnAcquista_Click(object sender, EventArgs e)
    {
        CLASSI.Classi_WSSoapClient cl = new CLASSI.Classi_WSSoapClient();
        int COD_CORSO = int.Parse(Session["CHIAVE_CORSO"].ToString());
        int COD_STUDENTE = int.Parse(Session["CodiceAttore"].ToString());

        CORSI.Corsi_WSSoapClient co = new CORSI.Corsi_WSSoapClient();
        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();

        DataTable dt = co.SelectOne(COD_CORSO);
        int AMMONTARE = int.Parse(dt.Rows[0]["costo"].ToString());

        if (g.SaldoStudente(COD_STUDENTE) >= AMMONTARE)
        {
            cl.Insert(COD_CORSO, COD_STUDENTE);
            g.Insert(COD_STUDENTE, COD_CORSO, AMMONTARE);
            conferma.Visible = false;
            lblErrore.Text = "Corso Acquistato";
            btnAcquista.Visible = false;
        }
        else
        {
            conferma.Visible = false;
            lblErrore.Text = "Saldo insufficiente";
            btnAcquista.Visible = false;
        }
    }
}