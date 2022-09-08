using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class corsiDegliStudenti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        VisualizzaCorso();
    }

    public void VisualizzaCorso()
    {
        int COD_STUDENTE = Convert.ToInt32(Session["COD_TUTOR"]);
        CLASSI.Classi_WSSoapClient C = new CLASSI.Classi_WSSoapClient();
        grvCorsiStudenti.DataSource = C.SelectAllStudente(COD_STUDENTE);

        DataBind();
    }

    

    protected void btnAggiorna_Click(object sender, EventArgs e)
    {
        VisualizzaCorso();
    }
}