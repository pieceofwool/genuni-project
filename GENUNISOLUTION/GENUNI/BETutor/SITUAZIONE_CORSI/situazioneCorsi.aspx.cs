using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();

        int COD_TUTOR = Convert.ToInt32(Session["CodiceAttore"]);
        GridCorsi.DataSource= C.SelectForTutor(COD_TUTOR);
        GridCorsi.DataBind();

    }

    protected void grvCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["Chiave_Corso"] = GridCorsi.SelectedDataKey[0];
        Session["nomecorso"] = GridCorsi.SelectedRow.Cells[4].Text;
    }

    protected void btnRisultatiTest_Click(object sender, EventArgs e)
    {
        Response.Redirect("risultatiTest.aspx");
    }

    protected void btnPreparaDomande_Click(object sender, EventArgs e)
    {
        Response.Redirect("../POPUP/corsi/preparazioneDomande.aspx");
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