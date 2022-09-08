﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class definizioneMaterie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            CaricaMateriePreparate();
            CaricaCorsiCreati();
        }

    }

    protected void btnInserisciMaterie_Click(object sender, EventArgs e)
    {
        if (txtTitolo.Text == "" || txtIndice.Text == "" || txtDescrizione.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati non inseriti')", true);
            return;
        }
        else
        {
            InserisciMateria();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati inseriti correttamente')", true);
            return;
        }
    }

    protected void InserisciMateria()
    {

        MATERIE.Materie_WSSoapClient Ma = new MATERIE.Materie_WSSoapClient();

        int COD_CORSO = Convert.ToInt32(Session["CHIAVE"]);
        int COD_DOCENTE = 0;
        int COSTO_DOCENTE = 0;
        string TITOLO = txtTitolo.Text.ToString();
        string DESCRIZIONE = txtDescrizione.Text.ToString();
        int INDICE = int.Parse(txtIndice.Text);
        string PREPARATO = "";
        string ACCETTATO = "";
        string DATA_RISPOSTA = "";

        Ma.Insert(COD_CORSO, COD_DOCENTE, COSTO_DOCENTE, TITOLO, DESCRIZIONE, INDICE, PREPARATO, ACCETTATO, DATA_RISPOSTA);
    }

    protected void CaricaMateriePreparate()
    {
        MATERIE.Materie_WSSoapClient Ma = new MATERIE.Materie_WSSoapClient();
        gridMatPreparate.DataSource = Ma.MateriePreparate();
        gridMatPreparate.DataBind();

    }

    protected void CaricaCorsiCreati()
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        //int COD_TUTOR = Convert.ToInt32(Session["CodiceAttore"]);
        int COD_TUTOR = 2;
        gridCorsiCreati.DataSource = C.CorsiCreati(COD_TUTOR);
        gridCorsiCreati.DataBind();
    }


    protected void btnAssegnaM_Click(object sender, EventArgs e)
    {
        if (Session["ChiaveCorso"] == null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Selezionare una voce dalla tabella')", true);
            return;
        }
        int ChiaveCorso = int.Parse(Session["ChiaveCorso"].ToString());
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        C.CorsiMaterieAssegnate(ChiaveCorso);

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Materia assegnata correttamente')", true);
    }
    protected void gridCorsiCreati_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow riga = gridCorsiCreati.SelectedRow;
        Session["ChiaveCorso"] = gridCorsiCreati.SelectedDataKey[0].ToString();
    }

    protected void btnAggiornaCorsi_Click(object sender, EventArgs e)
    {
        CaricaCorsiCreati();
    }
}