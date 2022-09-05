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
        CaricaCorsiAcquistati();
        CaricaCorsiDisponibili();
    }

    protected void grigliaCorsiAcquistati_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Corsi.aspx");
        //Session["codiceStudente"] = grigliaCorsiAcquistati.SelectedDataKey[0];
        //select all con il cod_studente
    }

    protected void grigliaCorsiDisponibili_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("AcquistoCorsi.aspx");
    }

    protected void CaricaCorsiAcquistati()
    {
        CORSI.Corsi_WSSoapClient c = new CORSI.Corsi_WSSoapClient();
        //da sostituire con il codice del corso tramite session
        int CHIAVE = 1;
        grigliaCorsiAcquistati.DataSource = c.SelectOne(CHIAVE);
        grigliaCorsiAcquistati.DataBind();
        //DA SOSTITUIRE CON LA NUOVA PROCEDURE




        //CLASSI.Classi_WSSoapClient cl = new CLASSI.Classi_WSSoapClient();
        //grigliaCorsiAcquistati.DataSource = cl.SelectOne(CHIAVE);
        //grigliaCorsiAcquistati.DataBind();

    }


    protected void CaricaCorsiDisponibili()
    {
        CORSI.Corsi_WSSoapClient c = new CORSI.Corsi_WSSoapClient();
        grigliaCorsiDisponibili.DataSource = c.SelectNonAssegnati();
        grigliaCorsiDisponibili.DataBind();
    }

    protected void grigliaCorsiAcquistati_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("Corsi.aspx");
    }

    protected void grigliaCorsiDisponibili_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("AcquistoCorsi.aspx");
    }

    protected void grigliaCorsiAcquistati_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[1].Visible = false;
        e.Row.Cells[2].Visible = false;
        e.Row.Cells[5].Visible = false;
        e.Row.Cells[8].Visible = false;
        e.Row.Cells[9].Visible = false;
        e.Row.Cells[11].Visible = false;
    }
}