﻿using System;
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
        Session["Chiave"] = grigliaCorsiAcquistati.SelectedDataKey[0];
        Session["Cod_Studente"] = grigliaCorsiAcquistati.SelectedDataKey[1];
        Response.Redirect("Corsi.aspx");
    }

    protected void grigliaCorsiDisponibili_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["CHIAVE_CORSO"] = grigliaCorsiDisponibili.SelectedDataKey[0];
        Response.Redirect("AcquistoCorsi.aspx");
    }

    protected void CaricaCorsiAcquistati()
    {
        ESTERNI.Esterni_WSSoapClient e = new ESTERNI.Esterni_WSSoapClient();
        int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
        grigliaCorsiAcquistati.DataSource = e.CorsiFrequentati(CHIAVE);
        grigliaCorsiAcquistati.DataBind();
    }


    protected void CaricaCorsiDisponibili()
    {
        CORSI.Corsi_WSSoapClient c = new CORSI.Corsi_WSSoapClient();
        int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
        grigliaCorsiDisponibili.DataSource = c.NonComprati(CHIAVE);
        grigliaCorsiDisponibili.DataBind();
    }


    //protected void grigliaCorsiAcquistati_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    e.Row.Cells[4].Visible = false;
    //    e.Row.Cells[5].Visible = false;
    //}
}