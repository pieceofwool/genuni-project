using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class POPUP_corsi_preparazioneTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        


    }

    protected void btnCreaTest_Click(object sender, EventArgs e)
    {
        TEST.Test_WSSoapClient T = new TEST.Test_WSSoapClient();
        int COD_CORSO = int.Parse(Session["Chiave_Corso"].ToString());
        int SOGLIA = int.Parse(txtSogliaDiSuperamento.Text);
        string DATA_TEST = txtData.ToString();
        string ORA_TEST = txtOra.ToString();

        //CONTROLLO EFFETTIVO INSERIMENTO
        T.Insert(COD_CORSO, SOGLIA, DATA_TEST, ORA_TEST);
    }
}