using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEstudenti_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        caricaGriglia();
        //fare l'if con il controllo sul test
        /*int soglia = g.soglia;
         * int risultato = g. risultato;
         * if(risultato>=soglia)
         * {
         *    attestato.visible=true;
         * }
         * else
         * {
         *    attestato.visible=false;
         * }
         */
        attestato.Visible = false;
    }

    protected void grigliaMaterie_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Materie.aspx");
    }

    protected void caricaGriglia()
    {
        MATERIE.Materie_WSSoapClient m = new MATERIE.Materie_WSSoapClient();
        int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
        grigliaMaterie.DataSource = m.MaterieInfoCorso(CHIAVE);
        grigliaMaterie.DataBind();
    }
}