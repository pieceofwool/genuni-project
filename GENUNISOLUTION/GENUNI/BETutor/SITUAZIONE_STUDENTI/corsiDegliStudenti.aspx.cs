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
        VisualizzaCorso();
    }

    public void VisualizzaCorso()
    {
        int COD_STUDENTE = Convert.ToInt32(Session["COD_STUDENTE"]);
        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();
        grvCorsiStudenti.DataSource = E.CorsiFrequentati(COD_STUDENTE);

        grvCorsiStudenti.DataBind();
    }



    protected void btnAggiorna_Click(object sender, EventArgs e)
    {
        VisualizzaCorso();
    }
}