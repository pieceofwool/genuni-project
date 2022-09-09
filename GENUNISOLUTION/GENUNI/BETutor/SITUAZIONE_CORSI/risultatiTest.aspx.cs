using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BETutor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnStudenti.Enabled = false;
        TEST.Test_WSSoapClient T = new TEST.Test_WSSoapClient();
        int COD_CORSO = Convert.ToInt32(Session["Chiave_Corso"]);
        grvRisulati.DataSource = T.Test_SelectCorso(COD_CORSO);

    }

    protected void grvRisulati_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["COD_STUDENTE"] = grvRisulati.SelectedDataKey[0];
        btnStudenti.Enabled = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../SITUAZIONE_STUDENTI/corsiDegliStudenti.aspx");
    }
}