using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Popup_InserisciCorsi : System.Web.UI.Page
{
    string[] estensioni = { ".jpg", ".png", ".bmp" };
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
        UTENTI.Utenti_WSSoapClient U = new UTENTI.Utenti_WSSoapClient();

        //UTENTI U = new UTENTI();
        ddlUtenti.DataSource = U.SelectTutor();
        ddlUtenti.DataValueField = "Chiave";
        ddlUtenti.DataTextField = "Cognome";
        ddlUtenti.DataBind();
        ddlUtenti.SelectedValue = null;
    }

    protected void btnInserisci_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtTitolo.Text))
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Il campo titolo non può essere vuoto')", true);
            return;
        }
        if (!estensioni.Contains(Path.GetExtension(fupAvatar.FileName)))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Formato file non valido: caricare .jpg, .png o .bmp')", true); ;
            return;
        }



        int Cod_Utente = int.Parse(ddlUtenti.SelectedValue.ToString());
        string Titolo = txtTitolo.Text.Trim();
        string Tipo = txtTipo.Text.Trim();
        string Descrizione = txtDescrizione.Text.Trim();
        string Data_Partenza = txtDataPartenza.Text.Trim();
        byte[] Avatar = fupAvatar.FileBytes;

        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        //CORSI C = new CORSI();

        //TOGLI COMMENTO UNA VOLTA CHE VIENE FIXATO NEL WS

        //C.TITOLO = Titolo;
        //C.TIPO = Tipo;
        //C.DESCRIZIONE = Descrizione;
        //C.DATA_PARTENZA = Data_Partenza;
        //C.AVATAR_CORSO = avatar;
        //C.TIPO_IMG = fupAvatar.PostedFile.ContentType;

        //C.Insert(Titolo);

        lbl.Text = "Record Inserito";
        txtTitolo.Text = "";
        txtTipo.Text = "";
        txtDescrizione.Text = "";
        txtDataPartenza.Text = "";
        fupAvatar.Dispose();
    }
}