using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Popup_InserisciCorsi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CaricaDDL();
        }
    }


    protected void CaricaDDL()
    {
        //Da aggiornare con effettiva classe, metodo e nome del datatextfield

        UTENTI U = new UTENTI();
        ddlUtenti.DataSource = U.SelectTutor();
        ddlUtenti.DataValueField = "Chiave";
        ddlUtenti.DataTextField = "CognomeNome";
        ddlUtenti.DataBind();
        ddlUtenti.SelectedValue = null;
    }

    protected void btnInserisci_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtTitolo.Text) || string.IsNullOrEmpty(txtTipo.Text) || string.IsNullOrEmpty(txtDescrizione.Text))
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Tutti i campi devono essere pieni')", true);
            return;
        }

    

        int Cod_Utente = int.Parse(ddlUtenti.SelectedValue.ToString());
        string Titolo = txtTitolo.Text.Trim();
        string Tipo = txtTipo.Text.Trim();
        string Descrizione = txtDescrizione.Text.Trim();
        string Data_Partenza = txtDataPartenza.Text.Trim();



        CORSI C = new CORSI();
        C.Titolo=Titolo;
        C.Tipo=Tipo;
        C.Descrizione = Descrizione;
        C.Data_Partenza = Data_Partenza;
        C.Insert();

        lbl.Text = "Record Inserito";
        txtTitolo.Text = "";
        txtTipo.Text = "";
        txtDescrizione.Text = "";
        txtDataPartenza.Text = "";
    }
}