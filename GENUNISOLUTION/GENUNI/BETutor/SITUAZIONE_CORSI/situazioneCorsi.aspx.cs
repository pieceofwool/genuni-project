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
            //disabilito i bottoni 
            btnChat.Enabled = false;
            btnPreparaDomande.Enabled = false;
            btnRisultatiTest.Enabled = false;
            btnStudenti.Enabled = false;
            popupPreparaTest.Enabled = false;
        
        if (!IsPostBack == true)
        {
            //CARICO LA GRIGLIA
            CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
            int COD_TUTOR = Convert.ToInt32(Session["CodiceAttore"]);
            GridCorsi.DataSource = C.SelectForTutor(COD_TUTOR);
            GridCorsi.DataBind();
        }
    }

    protected void grvCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {
        //abilito i bottoni
        btnChat.Enabled = true;
        btnStudenti.Enabled = true;

        //controlli per i test e relativa abilitazione dei bottoni
        TEST.Test_WSSoapClient T = new TEST.Test_WSSoapClient();
        int COD_CORSO = Convert.ToInt32(GridCorsi.SelectedDataKey[0]);
        DataTable dt = new DataTable();
        dt = T.Test_SelectCorso(COD_CORSO);

        if (dt.Rows.Count < 1)
        {
            popupPreparaTest.Enabled = true;
        }
        else
        {
            btnPreparaDomande.Enabled = true;
            btnRisultatiTest.Enabled = true;
        }
        //creo le session
        Session["Chiave_Corso"] = GridCorsi.SelectedDataKey[0];
        Session["nomecorso"] = GridCorsi.SelectedRow.Cells[4].Text;
    }

    protected void btnRisultatiTest_Click(object sender, EventArgs e)
    {
        Response.Redirect("risultatiTest.aspx");
    }

    protected void btnPreparaDomande_Click(object sender, EventArgs e)
    {
        Response.Redirect("../POPUP/preparazione_domande/preparazioneDomande.aspx");
    }

    protected void popupPreparaTest_Click(object sender, EventArgs e)
    {
        Response.Redirect("../POPUP/corsi/preparazioneTest.aspx");
    }

    protected void btnChat_Click(object sender, EventArgs e)
    {
        Response.Redirect("../POPUP/corsi/Chat.aspx");
    }

    protected void btnStudenti_Click(object sender, EventArgs e)
    {
        Response.Redirect("../SITUAZIONE_STUDENTI/situazioneStudenti.aspx");
    }
}