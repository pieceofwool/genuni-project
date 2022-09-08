using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BETutor_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        VisualizzaStudentiPerCorso();
    }
    public void VisualizzaStudentiPerCorso()
    {
        CLASSI.Classi_WSSoapClient Cl = new CLASSI.Classi_WSSoapClient();
        int COD_CORSO = Convert.ToInt32(Session["COD_CORSO"]);
        grvStudenti.DataSource = Cl.SelectCorso(COD_CORSO);
        DataBind();
    }

    protected void grvStudenti_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["COD_STUDENTE"] = Convert.ToInt32(grvStudenti.SelectedRow.Cells[2]);

        if (Session["COD_CLASSI"] != null)
        {
            Response.Redirect("../SITUAZIONE_STUDENTI/corsiDegliStudenti.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Seleziona una riga per poterla visualizzare')", true);
            return;
        }
    }
}