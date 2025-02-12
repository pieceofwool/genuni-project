﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class preparazioneDomande : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            AggiornaDomande();
    }

    protected void btnAggiungiDomanda_Click(object sender, EventArgs e)
    {
        //ricavo il codice test dal corso
        TEST.Test_WSSoapClient T = new TEST.Test_WSSoapClient();

        int COD_CORSO = int.Parse(Session["Chiave_Corso"].ToString());

        DataTable dt = new DataTable();
        dt = T.SelectOneByCorso(COD_CORSO);

        //scrivo i prarametri

        int COD_TEST = int.Parse(dt.Rows[0]["CHIAVE"].ToString());

        string DOMANDA = txtInserimentoDomanda.Text.ToString();
        string RISPOSTA1 = txtCorretta.Text.ToString();
        string RISPOSTA2 = txtIncompleta.Text.ToString();
        string RISPOSTA3 = txtErrata.Text.ToString();
        string VOTI = "1,0,-1";


        DOMANDE.Domande_WSSoapClient D = new DOMANDE.Domande_WSSoapClient();

        D.Insert(COD_TEST, DOMANDA, RISPOSTA1, RISPOSTA2, RISPOSTA3, VOTI);

    }

    protected void AggiornaDomande()
    {
        DOMANDE.Domande_WSSoapClient D = new DOMANDE.Domande_WSSoapClient();
        int COD_CORSO = Convert.ToInt32(Session["Chiave_Corso"]);
        gridDomande.DataSource = D.DomandeSelectAllCorso(COD_CORSO);
        gridDomande.DataBind(); 

    }

    protected void btnAggiorna_Click(object sender, EventArgs e)
    {
        AggiornaDomande();
    }
}