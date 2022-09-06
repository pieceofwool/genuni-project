using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PopUp_Profilo_ModificaProfilo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //// Se non vi è nessun elemento selezionato impedisco il proseguimento
            //if (string.IsNullOrEmpty(Session["CodiceAttore"].ToString()))
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Errore')", true);
            //    return;
            //}



            ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();
            //int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
            int CHIAVE = 1;
            DataTable dt = E.SelectOne(CHIAVE);


            txtUser.Text = dt.Rows[0]["Usr"].ToString();
            txtRagSoc.Text = dt.Rows[0]["Ragione_Sociale"].ToString();
            txtCognome.Text = dt.Rows[0]["Cognome"].ToString();
            txtNome.Text = dt.Rows[0]["Nome"].ToString();
            txtDataNascita.Text = dt.Rows[0]["Data_Nascita"].ToString();
            txtIva.Text = dt.Rows[0]["Piva"].ToString();
            txtCF.Text = dt.Rows[0]["CF"].ToString();
            txtIndirizzo.Text = dt.Rows[0]["Indirizzo"].ToString();
            txtCap.Text = dt.Rows[0]["Cap"].ToString();
            txtCitta.Text = dt.Rows[0]["Citta"].ToString();
            txtProvincia.Text = dt.Rows[0]["Provincia"].ToString();
            txtNazionalita.Text = dt.Rows[0]["Nazionalita"].ToString();



        }
    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        // Controlli formali
        if (string.IsNullOrEmpty(txtUser.Text.Trim()) ||
            string.IsNullOrEmpty(txtCognome.Text.Trim()) ||
            string.IsNullOrEmpty(txtNome.Text.Trim()) ||
            string.IsNullOrEmpty(txtDataNascita.Text.Trim()) ||
            string.IsNullOrEmpty(txtCF.Text.Trim()) ||
            string.IsNullOrEmpty(txtIndirizzo.Text.Trim()) ||
            string.IsNullOrEmpty(txtCap.Text.Trim()) ||
            string.IsNullOrEmpty(txtCitta.Text.Trim()) ||
            string.IsNullOrEmpty(txtProvincia.Text.Trim()) ||
            string.IsNullOrEmpty(txtNazionalita.Text.Trim()) ||
            !int.TryParse(txtCap.Text, out int result)
            
            )

        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ERRORE", "alert('Dati non validi')", true);
            return;
        }

        if(!string.IsNullOrEmpty(txtIva.Text.Trim()) && !int.TryParse(txtIva.Text, out int result2))
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ERRORE", "alert('Dati non validi')", true);
            return;
        }


        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

        //int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
        int CHIAVE = 1;

        string USR = txtUser.Text.Trim();
        string RAGIONE_SOCIALE = txtRagSoc.Text.Trim();
        string COGNOME = txtCognome.Text.Trim();
        string NOME = txtNome.Text.Trim();
        string DATA_NASCITA = txtDataNascita.Text.Trim();
        string PIVA = txtIva.Text.Trim();
        string CF = txtCF.Text.Trim();
        string INDIRIZZO = txtIndirizzo.Text.Trim();
        string CAP = txtCap.Text.Trim();
        string CITTA = txtCitta.Text.Trim();
        string PROVINCIA = txtProvincia.Text.Trim();
        string NAZIONALITA = txtNazionalita.Text.Trim();

        E.UpdateProfilo(CHIAVE, USR, RAGIONE_SOCIALE, COGNOME, NOME, DATA_NASCITA, PIVA, CF, INDIRIZZO, CAP, CITTA, PROVINCIA, NAZIONALITA);

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "SUCCESSO", "alert('Dati modificati correttamente')", true);



    }
}