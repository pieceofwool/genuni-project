using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class POPUP_profilo_ModificaPassword : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // condizioni e logica di un modifica password



    protected void btnModificaPassword_Click(object sender, EventArgs e)
    {
        string VecchiaPassword = txtVecchiaPassword.Text;   // checkone
        string NuovaPassword = txtNuovaPassword.Text; // update della vecchia
        string ConfermaNuovaPassword = txtConfermaNuovaPassword.Text; // valudazione classica ==

        if (string.IsNullOrEmpty(VecchiaPassword.Trim()) || string.IsNullOrEmpty(NuovaPassword.Trim()) || string.IsNullOrEmpty(ConfermaNuovaPassword.Trim()))

        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Campi non validi.')", true);
            return;
        }
        if (ConfermaNuovaPassword == VecchiaPassword && NuovaPassword == VecchiaPassword)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('La password attuale è uguale a quella nuova')", true);
        }
        if (NuovaPassword != ConfermaNuovaPassword)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Le password devono coincidere')", true);
            return;
        }
       
        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();
        //E.CHIAVE = int.Parse(Session["CodiceEsterno"].ToString());
        int CHIAVE = 1;

        DataTable dt = new DataTable();
        dt.TableName = "Esterni";
        dt = E.SelectOne(CHIAVE);
        string user = dt.Rows[0]["Usr"].ToString();


        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('La password è stata modificata con successo" + "')", true); 
    }
}

//[WebMethod]
//public void UpdatePassword(string USR, string PWD)
//{
//    ESTERNI e = new ESTERNI();

//    e.USR = USR;
//    e.PWD = PWD;
//    e.UpdatePassword();
//}