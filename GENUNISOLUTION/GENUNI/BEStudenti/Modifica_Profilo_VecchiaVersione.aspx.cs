using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modifica_Profilo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CHIAVE"] == null)
            {
                lblRes.Text = "ERRORE, selezionare una voce";
                tabella.Visible = false;

                return;
            }
            int cod = 1;
            //int cod = int.Parse(Session["CHIAVE"].ToString());
            ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();
            DataRow sel = E.SelectOne_Profilo_Studenti(cod).Rows[0];
            
            txtNome.Text = sel["Nome"].ToString();
            txtCognome.Text = sel["Cognome"].ToString();
            txtIndirizzo.Text = sel["Indirizzo"].ToString();
            txtCitta.Text = sel["Citta"].ToString();
            txtProvincia.Text = sel["Provincia"].ToString();
            txtNazionalita.Text=sel["Nazionalita"].ToString();
        }
    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        int Chiave = 1; //sostituire una volta avuta la session
        //int Chiave= int.Parse(Session["CHIAVE"].ToString());
        string Nome = txtNome.Text.Trim();
        string Cognome = txtCognome.Text.Trim();
        string Indirizzo = txtIndirizzo.Text.Trim();
        string Citta = txtCitta.Text.Trim();
        string Provincia = txtProvincia.Text.Trim();
        string Nazionalita = txtNazionalita.Text.Trim();
        // Se non vi è nessun elemento selezionato impedisco il proseguimento
        if (Session["CHIAVE"] == null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Seleziona una riga per poterla modificare')", true);
            return;
        }

        if (string.IsNullOrEmpty(txtNome.Text.Trim()) || string.IsNullOrEmpty(txtCognome.Text.Trim()) || string.IsNullOrEmpty(txtIndirizzo.Text.Trim()) || 
            string.IsNullOrEmpty(txtCitta.Text.Trim()) || string.IsNullOrEmpty(txtProvincia.Text.Trim()) || string.IsNullOrEmpty(txtNazionalita.Text.Trim()))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Dati non Validi')", true); ;
            return;
        }

        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

        E.Update_Profilo_Studenti(Chiave, Nome, Cognome, Indirizzo, Citta, Provincia, Nazionalita);

        lblRes.Text="Info Modificato";
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
        lbl1.Text="User e Password Modificati!";
    }
}