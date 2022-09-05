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
        string Nome = txtNome.Text;
        string Cognome = txtCognome.Text;
        string Indirizzo = txtIndirizzo.Text;
        string Citta = txtCitta.Text;
        string Provincia = txtProvincia.Text;
        string Nazionalita = txtNazionalita.Text;
        // Se non vi è nessun elemento selezionato impedisco il proseguimento
        if (Session["CHIAVE"] == null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Seleziona una riga per poterla modificare')", true);
            return;
        }

        if (string.IsNullOrEmpty(txtNome.Text) || string.IsNullOrEmpty(txtCognome.Text) || string.IsNullOrEmpty(txtIndirizzo.Text) || 
            string.IsNullOrEmpty(txtCitta.Text) || string.IsNullOrEmpty(txtProvincia.Text) || string.IsNullOrEmpty(txtNazionalita.Text))
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
        string User = txtUser.Text;
        string Password = txtPassword.Text;

        // Controlli formali
        if (string.IsNullOrEmpty(txtUser.Text) || string.IsNullOrEmpty(txtPassword.Text))
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Dati non validi", "alert('Compilare tutti i campi')", true);
            return;
        }

        //modifico la Password
        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

        E.UpdatePassword(User, Password);
        lbl1.Text="User e Password Modificati!";
    }
}