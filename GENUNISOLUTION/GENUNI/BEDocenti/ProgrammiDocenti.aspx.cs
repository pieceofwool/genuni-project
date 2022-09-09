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
        
        string nomecorso = Request.QueryString["corso"].ToString();
        string materia = Request.QueryString["materia"].ToString();

        InserireCorso.InnerText = "Programmi relativi alla materia " + materia + " del corso " + nomecorso;

        CaricaGriglia();
    }

    protected void CaricaGriglia()
    {
        btnModificaMateriale.Visible = false;
        BtnElimina.Visible = false;

        int codicemateria = int.Parse(Request.QueryString["codicemateria"].ToString());
        Session["COD_MATERIA"] = codicemateria;

        PROGRAMMI.Programmi_WSSoapClient P = new PROGRAMMI.Programmi_WSSoapClient();

        //riempo la griglia
        grigliaProgrammi.DataSource = P.SelectProgrammiMateria(codicemateria);
        grigliaProgrammi.DataBind();
    }

    protected void BtnAggiorna_Click(object sender, EventArgs e)
    {
        CaricaGriglia();
    }

    protected void BtnElimina_Click(object sender, EventArgs e)
    {
        int key = int.Parse(grigliaProgrammi.SelectedDataKey[0].ToString());
        PROGRAMMI.Programmi_WSSoapClient P = new PROGRAMMI.Programmi_WSSoapClient();
        P.Delete(key);

        CaricaGriglia();

    }

    protected void grigliaProgrammi_SelectedIndexChanged(object sender, EventArgs e)
    {
        //salvo il datakey chiave e rendo visibili modifica ed elimina
        Session["CHIAVE"] = int.Parse(grigliaProgrammi.SelectedDataKey[0].ToString());
        btnModificaMateriale.Visible = true;
        BtnElimina.Visible = true;
    }

    protected void BtnIndietro_Click(object sender, EventArgs e)
    {
        //torno indietro ma passo i valori nella query string, per non perdere informazioni
        int codice = int.Parse(Session["CodiceCorso"].ToString());
        string corso = Request.QueryString["corso"].ToString();
        Response.Redirect("MaterieDocenti.aspx?codice=" + codice + "&corso=" + corso);


    }
}