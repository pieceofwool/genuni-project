using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;

public partial class Admin_Popup_ModificaCorsi : System.Web.UI.Page
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


    public void UpdateTextBox()
    {
        CORSI c = new CORSI();//creo l'oggetto t di tipospesa

        DataTable dt = new DataTable();//creo l'oggetto datatable


        int Chiave = int.Parse(Session["id"].ToString());//creo una variabile intera da passare al metodo Select

        //prendo la procedura
        //mi restituisce un data table
        dt = c.Select(Chiave);


        //di questo datatable prendimi alla riga X il contenuto di Y { MATRICE}
        ddlUtenti.SelectedValue = dt.Rows[0]["Cod_Utente"].ToString();
        txtTitolo.Text = dt.Rows[0]["Titolo"].ToString();
        txtTipo.Text = dt.Rows[0]["Tipo"].ToString();
        txtDescrizione.Text = dt.Rows[0]["Descrizione"].ToString();
        txtDescrizione.Text = dt.Rows[0].Field<DateTime>(4).ToString("yyyy-MM-dd");
        ddlAziende.SelectedValue = dt.Rows[0]["CodiceAzienda"].ToString();

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
        C.Titolo = Titolo;
        C.Tipo = Tipo;
        C.Descrizione = Descrizione;
        C.Data_Partenza = Data_Partenza;
        C.Update();

        lbl.Text = "Record Inserito";
        txtTitolo.Text = "";
        txtTipo.Text = "";
        txtDescrizione.Text = "";
        txtDataPartenza.Text = "";
    }
}