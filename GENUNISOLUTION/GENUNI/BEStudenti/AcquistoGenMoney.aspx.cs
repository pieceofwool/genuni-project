﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCompra_Click(object sender, EventArgs e)
    {

        lblC.Text = "Sicuro di voler acquistare questo pacchetto?";
        btnConferma.Visible = true;
        pacchetto.Visible = false;
    }

    protected void btnConferma_Click(object sender, EventArgs e)
    {

        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();
        int COD_STUDENTE = int.Parse(Session["CodiceAttore"].ToString());
        if (rdbPacchetto1.Checked)
        {
            int AMMONTARE = 50;
            g.Studenti_Acquisto(COD_STUDENTE, AMMONTARE);
        }
        if (rdbPacchetto2.Checked)
        {
            int AMMONTARE = 100;
            g.Studenti_Acquisto(COD_STUDENTE, AMMONTARE);
        }
        if (rdbPacchetto3.Checked)
        {
            int AMMONTARE = 200;
            g.Studenti_Acquisto(COD_STUDENTE, AMMONTARE);
        }

        lblC.Text = "GenMoney acquistati! Aggiorna per visualizzare il nuovo saldo.";
        btnConferma.Visible = false;
    }
}