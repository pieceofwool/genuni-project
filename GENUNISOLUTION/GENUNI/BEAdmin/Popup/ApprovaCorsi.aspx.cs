using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BEAdmin_Popup_ApprovaCorsi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnApprova_Click(object sender, EventArgs e)
    {

        if (Session["ChiaveApprovazione"] == null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Selezionare una voce dalla tabella')", true);
            return;
        }

        int Chiave = int.Parse(Session["ChiaveApprovazione"].ToString());
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        C.Update_Status(Chiave);


        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Corso approvato correttamente')", true);
    }
}