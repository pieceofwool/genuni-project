using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CodiceAttore"] == null)
            {
                return;
            }

            int cod = int.Parse(Session["CodiceAttore"].ToString());
            ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();
            DataRow sel = E.SelectOne_Profilo_Studenti(cod).Rows[0];

        }
    }
    protected void btnSalvaPass_Click(object sender, EventArgs e)
    {
        CRYPTA.Crypta_WSSoapClient C = new CRYPTA.Crypta_WSSoapClient();
        //dichiaro le variabili
        int Chiave = int.Parse(Session["CodiceAttore"].ToString());

        string plaintext2 = txtPassword.Text.Trim();
        string pwd = C.PWD_CRYPTA(plaintext2); // E quì vengono cryptate 

        string plaintext = txtConfermaPassw.Text.Trim();
        string Confermapwd = C.PWD_CRYPTA(plaintext); // E quì vengono cryptate

        // Controlli formali
        if (string.IsNullOrEmpty(txtPassword.Text.Trim()) || string.IsNullOrEmpty(txtConfermaPassw.Text.Trim()))
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Dati non validi", "alert('Compilare tutti i campi')", true);
            return;
        }

        //contro se le password sono uguali
        if(txtPassword.Text == txtConfermaPassw.Text)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Dati non validi", "alert('Errore! Password Identiche')", true);
            return;
        }
        //modifico la Password
        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

        E.UpdatePassword_Studenti(Chiave, Confermapwd);
        lbl1.Text = "Password Modificata!";
    }
}