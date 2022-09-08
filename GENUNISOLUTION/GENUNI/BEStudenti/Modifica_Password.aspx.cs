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
            if (Session["CHIAVE"] == null)
            {
                return;
            }

            int cod = int.Parse(Session["CHIAVE"].ToString());
            ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();
            DataRow sel = E.SelectOne_Profilo_Studenti(cod).Rows[0];

        }
    }
    protected void btnSalvaPass_Click(object sender, EventArgs e)
    {
        CRYPTA.Crypta_WSSoapClient C = new CRYPTA.Crypta_WSSoapClient();
        //dichiaro le variabili
        int Chiave = 1;
        string User = txtUser.Text.Trim();
        string plaintext = txtPassword.Text.Trim();
        string pwd = C.PWD_CRYPTA(plaintext); // E quì vengono cryptate

        // Controlli formali
        if (string.IsNullOrEmpty(txtUser.Text.Trim()) || string.IsNullOrEmpty(txtPassword.Text.Trim()))
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Dati non validi", "alert('Compilare tutti i campi')", true);
            return;
        }

        //modifico la Password
        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

        E.UpdatePassword_Studenti(Chiave, User, pwd);
        lbl1.Text = "User e Password Modificati!";
    }
}