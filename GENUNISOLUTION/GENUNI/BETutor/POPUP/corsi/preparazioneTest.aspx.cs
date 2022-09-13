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

        if (string.IsNullOrEmpty(txtData.Text.ToString()) || string.IsNullOrEmpty(txtOra.Text.ToString()) || string.IsNullOrEmpty(txtSogliaDiSuperamento.Text.ToString()))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Riempire i campi')", true);
            return;
        }

        else
        {
            TEST.Test_WSSoapClient T = new TEST.Test_WSSoapClient();

            int ChiaveCorso = int.Parse(Session["Chiave_Corso"].ToString());
            int Soglia = int.Parse(txtSogliaDiSuperamento.Text);
            string DataTest = txtData.Text.ToString();
            string OraTest = txtOra.Text.ToString();

            
            T.Insert(ChiaveCorso, Soglia, DataTest, OraTest);

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Test creato con successo')", true);
            return;
        }

    }
}