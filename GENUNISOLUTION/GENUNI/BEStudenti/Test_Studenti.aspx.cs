using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test_Studenti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ConcludiTest_Click(object sender, EventArgs e)
    {
        ////estrarre le domande dalla session 
        ////controllo che risponda a tutte le domande
        //if (test1.SelectedValue== null || test2.SelectedValue==null || test3.SelectedValue==null 
        //    //|| test4.SelectedValue==null ||
        //    //test5.SelectedValue==null || test6.SelectedValue==null || test7.SelectedValue==null || test8.SelectedValue==null ||
        //    //test9.SelectedValue==null || test10.SelectedValue==null)
        //    )
        //{
        //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Rispondere a tutte le Domande!')", true);
        //    return;
        //}
        //int Esatte = int.Parse(test1.SelectedValue + test2.SelectedValue + test3.SelectedValue
        //    //+ test4.SelectedValue + test5.SelectedValue +
        //    //test6.SelectedValue + test7.SelectedValue + test8.SelectedValue + test9.SelectedValue + test10.SelectedValue);
        //    );
        ////se è minore della Soglia
        //if (Esatte <=2)
        //{
        //    lbl.Text= "Non superato";
        //}

        ////se è maggiore della soglia
        //if (Esatte >=2)
        //{
        //    lbl.Text="Superato";
        //}
        //int Corso= int.Parse(Session["Cod_Corso"].ToString());
        //int Studente= int.Parse(Session["Cod_Studente"].ToString());
        //int Punteggio = Esatte;
        ////inserisci il punteggio nel db
        //CLASSI.Classi_WSSoapClient C= new CLASSI.Classi_WSSoapClient();
        //C.Insert_Punteggio(Corso, Studente, Punteggio);
        //lbl.Text="Torna alla Home";
        ////se fa il test appare il bottone
        //btnTornaHomeCorso.Visible=true;


    }

    protected void TornaHomeCorso_Click(object sender, EventArgs e)
    {
        Response.Redirect("Corsi.aspx");
    }


    protected void btn_Click(object sender, EventArgs e)
    {

    }
}