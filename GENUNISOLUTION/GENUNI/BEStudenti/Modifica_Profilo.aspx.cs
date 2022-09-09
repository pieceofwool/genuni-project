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
            if (Session["CodiceAttore"] == null)
            {
                lblRes.Text = "ERRORE, selezionare una voce";
                tabella.Visible = false;

                return;
            }
           
            int cod = int.Parse(Session["CodiceAttore"].ToString());
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
        
        int Chiave= int.Parse(Session["CodiceAttore"].ToString());
        string Nome = txtNome.Text.Trim();
        string Cognome = txtCognome.Text.Trim();
        string Indirizzo = txtIndirizzo.Text.Trim();
        string Citta = txtCitta.Text.Trim();
        string Provincia = txtProvincia.Text.Trim();
        string Nazionalita = txtNazionalita.Text.Trim();
        // Se non vi è nessun elemento selezionato impedisco il proseguimento
        if (Session["CodiceAttore"] == null)
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
    
}