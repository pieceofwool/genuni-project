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

    }//griglia riempita con la tabella materie

    protected void grigliaMaterie_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Materie.aspx");
        //Session["codiceMateria"]= grigliaMaterie.SelectedDataKey[0];
    }

    protected void caricaGriglia()
    {
        PROGRAMMI.Programmi_WSSoapClient p = new PROGRAMMI.Programmi_WSSoapClient();
        grigliaMaterie.DataSource = p.SelectOne();
        grigliaMaterie.DataBind();
        //qui c'è il codicecorso
    }
}