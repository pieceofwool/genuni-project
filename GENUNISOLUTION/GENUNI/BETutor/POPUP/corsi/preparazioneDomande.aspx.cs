using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class preparazioneTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        


    }

    protected void btnAggiungiDomanda_Click(object sender, EventArgs e)
    {
        //ricavo il codice test dal corso
        TEST.Test_WSSoapClient T = new TEST.Test_WSSoapClient();

        int COD_CORSO = int.Parse(Session["Chiave_Corso"].ToString());

        DataTable dt = new DataTable();
        dt = T.Test_SelectCorso(COD_CORSO);
        

        //scrivo i prarametri
        int COD_TEST = Convert.ToInt32(dt.Rows[0]["Chiave"]);
        string DOMANDA = txtInserimentoDomanda.Text.ToString();
        string RISPOSTA1 = txtCorretta.Text.ToString();
        string RISPOSTA2 = txtIncompleta.Text.ToString();
        string RISPOSTA3 = txtErrata.Text.ToString();
        string VOTI = "1,0,-1";


        DOMANDE.Domande_WSSoapClient D = new DOMANDE.Domande_WSSoapClient();

        D.Insert(COD_TEST, DOMANDA, RISPOSTA1, RISPOSTA2, RISPOSTA3, VOTI);
    }
}