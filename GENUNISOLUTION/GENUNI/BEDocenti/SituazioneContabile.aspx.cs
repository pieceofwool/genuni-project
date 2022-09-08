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

    protected void btnAggiorna_Click(object sender, EventArgs e)
    {
        CaricaGrigliaContabilita();
    }

    protected void CaricaGrigliaContabilita()
    { 
        
        CONTABILITA.Contabilita_WSSoapClient Co = new CONTABILITA.Contabilita_WSSoapClient();
        int COD_DOCENTE = int.Parse(Session["CodiceAttore"].ToString());

        string DATAINIZIO = txtDataInizio.Text.ToString();
        string DATAFINE = txtDataFine.Text.ToString();
        grvStoricoCorsi.DataSource = Co.ListaSpeseDocenteSingolo(DATAINIZIO, DATAFINE, COD_DOCENTE);   /*metodo per i singoli guadagni*/
        grvStoricoCorsi.DataBind();

    }

    protected void btnSomma_Click(object sender, EventArgs e)
    {
        ESTERNI.Esterni_WSSoapClient Es = new ESTERNI.Esterni_WSSoapClient();
        int COD_DOCENTE = int.Parse(Session["CodiceAttore"].ToString());
        string DATAINIZIO = txtDataInizio.Text.ToString();
        string DATAFINE = txtDataFine.Text.ToString();

        ltlSommaRicavi.Text = Es.Guadagni(COD_DOCENTE, DATAINIZIO, DATAFINE).ToString();
    }
}