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
}