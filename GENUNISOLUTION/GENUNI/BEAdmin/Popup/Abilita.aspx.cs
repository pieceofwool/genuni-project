﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Popup_Abilita : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnAbilita_Click(object sender, EventArgs e)
    {
        UTENTI.Utenti_WSSoapClient U = new UTENTI.Utenti_WSSoapClient();

        //UTENTI U = new UTENTI();
        int Chiave = int.Parse(Session["chiave"].ToString());
        U.Abilita(Chiave);

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Stato modificato correttamente')", true);
    }
}