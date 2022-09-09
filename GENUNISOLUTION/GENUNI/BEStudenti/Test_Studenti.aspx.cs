using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test_Studenti : System.Web.UI.Page
{
    public int Cod_Corso;
    public int Cod_Test;
    protected void Page_Load(object sender, EventArgs e)
    {
        //chiamo il Cod_Corso per prendere il test
        int Cod_Corso = int.Parse(Session["Chiave"].ToString());
        TEST.Test_WSSoapClient T = new TEST.Test_WSSoapClient();
        DataTable dat = new DataTable();
        dat= T.SelectOne(Cod_Corso);

        int Cod_Test = int.Parse(dat.Rows[0]["Chiave"].ToString());
        //dal Test chiamo le Domande e Risposte
        DOMANDE.Domande_WSSoapClient D = new DOMANDE.Domande_WSSoapClient();
        DataTable dt = new DataTable();
        dt = D.DomandeSelectAllTest(Cod_Test);

        Label1.Text = dt.Rows[0]["Domanda"].ToString();
        RadioButton1.Text = dt.Rows[0]["Risposta1"].ToString();
        RadioButton2.Text = dt.Rows[0]["Risposta2"].ToString();
        RadioButton3.Text = dt.Rows[0]["Risposta3"].ToString();

        Label2.Text = dt.Rows[1]["Domanda"].ToString();
        RadioButton4.Text = dt.Rows[1]["Risposta1"].ToString();
        RadioButton5.Text = dt.Rows[1]["Risposta2"].ToString();
        RadioButton6.Text = dt.Rows[1]["Risposta3"].ToString();

        Label3.Text = dt.Rows[2]["Domanda"].ToString();
        RadioButton7.Text = dt.Rows[2]["Risposta1"].ToString();
        RadioButton8.Text = dt.Rows[2]["Risposta2"].ToString();
        RadioButton9.Text = dt.Rows[2]["Risposta3"].ToString();

        Label4.Text = dt.Rows[3]["Domanda"].ToString();
        RadioButton10.Text = dt.Rows[3]["Risposta1"].ToString();
        RadioButton11.Text = dt.Rows[3]["Risposta2"].ToString();
        RadioButton12.Text = dt.Rows[3]["Risposta3"].ToString();

        Label5.Text = dt.Rows[4]["Domanda"].ToString();
        RadioButton13.Text = dt.Rows[4]["Risposta1"].ToString();
        RadioButton14.Text = dt.Rows[4]["Risposta2"].ToString();
        RadioButton15.Text = dt.Rows[4]["Risposta3"].ToString();

        Label6.Text = dt.Rows[5]["Domanda"].ToString();
        RadioButton16.Text = dt.Rows[5]["Risposta1"].ToString();
        RadioButton17.Text = dt.Rows[5]["Risposta2"].ToString();
        RadioButton18.Text = dt.Rows[5]["Risposta3"].ToString();

        Label7.Text = dt.Rows[6]["Domanda"].ToString();
        RadioButton19.Text = dt.Rows[6]["Risposta1"].ToString();
        RadioButton20.Text = dt.Rows[6]["Risposta2"].ToString();
        RadioButton21.Text = dt.Rows[6]["Risposta3"].ToString();

        Label8.Text = dt.Rows[7]["Domanda"].ToString();
        RadioButton22.Text = dt.Rows[7]["Risposta1"].ToString();
        RadioButton23.Text = dt.Rows[7]["Risposta2"].ToString();
        RadioButton24.Text = dt.Rows[7]["Risposta3"].ToString();

        Label9.Text = dt.Rows[8]["Domanda"].ToString();
        RadioButton25.Text = dt.Rows[8]["Risposta1"].ToString();
        RadioButton26.Text = dt.Rows[8]["Risposta2"].ToString();
        RadioButton27.Text = dt.Rows[8]["Risposta3"].ToString();

        Label10.Text = dt.Rows[9]["Domanda"].ToString();
        RadioButton28.Text = dt.Rows[9]["Risposta1"].ToString();
        RadioButton29.Text = dt.Rows[9]["Risposta2"].ToString();
        RadioButton30.Text = dt.Rows[9]["Risposta3"].ToString();
    }


    protected void ConcludiTest_Click(object sender, EventArgs e)
    {
        //chiamo il Cod_Corso per prendere il test
        int Cod_Corso = int.Parse(Session["Chiave"].ToString());
        TEST.Test_WSSoapClient T = new TEST.Test_WSSoapClient();
        DataTable dat = new DataTable();
        dat= T.SelectOne(Cod_Corso);

        int Cod_Test = int.Parse(dat.Rows[0]["Chiave"].ToString());



        int PunteggioTotale = 0;

        int risposta1 = 0;
        int risposta2 = 0;
        int risposta3 = 0;
        int risposta4 = 0;
        int risposta5 = 0;
        int risposta6 = 0;
        int risposta7 = 0;
        int risposta8 = 0;
        int risposta9 = 0;
        int risposta10 = 0;


        //prendo l'indice della risp data
        if (RadioButton1.Checked == true) { risposta1 = 0; }
        if (RadioButton2.Checked == true) { risposta1 = 1; }
        if (RadioButton3.Checked == true) { risposta1 = 2; }

        if (RadioButton4.Checked == true) { risposta2 = 0; }
        if (RadioButton5.Checked == true) { risposta2 = 1; }
        if (RadioButton6.Checked == true) { risposta2 = 2; }

        if (RadioButton7.Checked == true) { risposta3 = 0; }
        if (RadioButton8.Checked == true) { risposta3 = 1; }
        if (RadioButton9.Checked == true) { risposta3 = 2; }

        if (RadioButton10.Checked == true) { risposta4 = 0; }
        if (RadioButton11.Checked == true) { risposta4 = 1; }
        if (RadioButton12.Checked == true) { risposta4 = 2; }

        if (RadioButton13.Checked == true) { risposta5 = 0; }
        if (RadioButton14.Checked == true) { risposta5 = 1; }
        if (RadioButton15.Checked == true) { risposta5 = 2; }

        if (RadioButton16.Checked == true) { risposta6 = 0; }
        if (RadioButton17.Checked == true) { risposta6 = 1; }
        if (RadioButton18.Checked == true) { risposta6 = 2; }

        if (RadioButton19.Checked == true) { risposta7 = 0; }
        if (RadioButton20.Checked == true) { risposta7 = 1; }
        if (RadioButton21.Checked == true) { risposta7 = 2; }

        if (RadioButton22.Checked == true) { risposta8 = 0; }
        if (RadioButton23.Checked == true) { risposta8 = 1; }
        if (RadioButton24.Checked == true) { risposta8 = 2; }

        if (RadioButton25.Checked == true) { risposta9 = 0; }
        if (RadioButton26.Checked == true) { risposta9 = 1; }
        if (RadioButton27.Checked == true) { risposta9 = 2; }

        if (RadioButton28.Checked == true) { risposta10 = 0; }
        if (RadioButton29.Checked == true) { risposta10 = 1; }
        if (RadioButton30.Checked == true) { risposta10 = 2; }

        //prendo il campo risp della domanda e tramite lo split creo un array di quei 3 valori
        DOMANDE.Domande_WSSoapClient D = new DOMANDE.Domande_WSSoapClient();
        DataTable dt = new DataTable();
        dt = D.DomandeSelectAllTest(Cod_Test);

        string voti1 = dt.Rows[0]["Voti"].ToString();
        string[] voti1Array = voti1.Split(',');

        string voti2 = dt.Rows[1]["Voti"].ToString();
        string[] voti2Array = voti2.Split(',');

        string voti3 = dt.Rows[2]["Voti"].ToString();
        string[] voti3Array = voti3.Split(',');

        string voti4 = dt.Rows[3]["Voti"].ToString();
        string[] voti4Array = voti4.Split(',');

        string voti5 = dt.Rows[4]["Voti"].ToString();
        string[] voti5Array = voti5.Split(',');

        string voti6 = dt.Rows[5]["Voti"].ToString();
        string[] voti6Array = voti6.Split(',');

        string voti7 = dt.Rows[6]["Voti"].ToString();
        string[] voti7Array = voti7.Split(',');

        string voti8 = dt.Rows[7]["Voti"].ToString();
        string[] voti8Array = voti8.Split(',');

        string voti9 = dt.Rows[8]["Voti"].ToString();
        string[] voti9Array = voti9.Split(',');

        string voti10 = dt.Rows[9]["Voti"].ToString();
        string[] voti10Array = voti10.Split(',');

        //confronto le posizioni + converto in int e aggiungo a punteggio totale
        PunteggioTotale = Convert.ToInt32(voti1Array[risposta1]);
        PunteggioTotale += Convert.ToInt32(voti2Array[risposta2]);
        PunteggioTotale += Convert.ToInt32(voti3Array[risposta3]);
        PunteggioTotale += Convert.ToInt32(voti4Array[risposta4]);
        PunteggioTotale += Convert.ToInt32(voti5Array[risposta5]);
        PunteggioTotale += Convert.ToInt32(voti6Array[risposta6]);
        PunteggioTotale += Convert.ToInt32(voti7Array[risposta7]);
        PunteggioTotale += Convert.ToInt32(voti8Array[risposta8]);
        PunteggioTotale += Convert.ToInt32(voti9Array[risposta9]);
        PunteggioTotale += Convert.ToInt32(voti10Array[risposta10]);

        //controllo che risponda a tutte le domande
        if (RadioButton1.Checked== false && RadioButton2.Checked==false && RadioButton3.Checked==false && RadioButton4.Checked==false && RadioButton5.Checked==false && RadioButton6.Checked==false &&
            RadioButton7.Checked==false && RadioButton8.Checked==false && RadioButton9.Checked==false && RadioButton10.Checked==false && RadioButton11.Checked==false && RadioButton12.Checked==false && 
            RadioButton13.Checked==false && RadioButton14.Checked==false && RadioButton15.Checked==false && RadioButton16.Checked==false && RadioButton17.Checked==false && RadioButton18.Checked==false &&
            RadioButton19.Checked==false && RadioButton20.Checked==false && RadioButton21.Checked==false && RadioButton22.Checked==false && RadioButton23.Checked==false && RadioButton24.Checked==false && 
            RadioButton25.Checked==false && RadioButton26.Checked==false && RadioButton27.Checked==false && RadioButton28.Checked==false && RadioButton29.Checked==false && RadioButton30.Checked==false)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Rispondi a tutte le Domande!')", true);
            return;
        }
        //punteggio da fare insert nella tab classi
        int Cod_Studente = int.Parse(Session["Cod_Studente"].ToString());
        CLASSI.Classi_WSSoapClient C = new CLASSI.Classi_WSSoapClient();
        C.Insert_Punteggio(Cod_Corso, Cod_Studente, PunteggioTotale);

        //se4leziona soglia per mettere a confronto
        DataTable data= new DataTable();
        TEST.Test_WSSoapClient Te = new TEST.Test_WSSoapClient();
        data= Te.SelectSoglia(Cod_Corso);
        int Soglia = int.Parse(data.Rows[0]["Soglia"].ToString());
        //int Soglia = int.Parse(Te.SelectSoglia(Cod_Corso).ToString());

        //se è minore della Soglia
        if (PunteggioTotale <=Soglia)
        {
            //ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Test non Superato! Torna alla Home')", true);
            lbl.Text="Test non Superato!";
            btnTornaHomeCorso.Visible=true;
            btnConcludiTest.Visible=false;
        }

        //se è maggiore della soglia
        if (PunteggioTotale >=Soglia)
        {
            //ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Test Superato! Torna alla Home')", true);
            lbl.Text="Test Superato!";
            btnTornaHomeCorso.Visible=true;
            btnConcludiTest.Visible=false;

        }
        
        

    }


    protected void TornaHomeCorso_Click(object sender, EventArgs e)
    {
        Response.Redirect("SituazioneCorsi.aspx");
    }

}
