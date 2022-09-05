using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_Popup_ModificaCorsi : System.Web.UI.Page
{
    string[] estensioni = { ".jpg", ".png", ".bmp", "" };
    protected void Page_Load(object sender, EventArgs e)

    {


        if (!IsPostBack)
        {
            UpdateTextBox();
            
        }
    }

 


    public void UpdateTextBox()
    {
        
        CORSI.Corsi_WSSoapClient c = new CORSI.Corsi_WSSoapClient();
        DataTable dt = new DataTable();//creo l'oggetto datatable
        if (Session["ChiaveCreazione"] == null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Selezionare una voce dalla tabella')", true);
            return;
        }

        int Chiave = int.Parse(Session["ChiaveCreazione"].ToString());//creo una variabile intera da passare al metodo Select

        //prendo la procedura
        //mi restituisce un data table
        dt = c.SelectOne(Chiave);


        //di questo datatable prendimi alla riga X il contenuto di Y { MATRICE}

        txtTitolo.Text = dt.Rows[0]["Titolo"].ToString();
        txtTipo.Text = dt.Rows[0]["Tipo"].ToString();
        txtDescrizione.Text = dt.Rows[0]["Descrizione"].ToString();
        txtDataPartenza.Text = dt.Rows[0].Field<DateTime>("data_partenza").ToString("yyyy-MM-dd");


    }


    protected void btnModifica_Click(object sender, EventArgs e)
    {
        int Chiave = int.Parse(Session["ChiaveCreazione"].ToString());
        CORSI.Corsi_WSSoapClient c = new CORSI.Corsi_WSSoapClient();

        //CORSI C = new CORSI();
        byte[] avatar = new CORSI.Corsi_WSSoapClient().SelectOne(Chiave).Rows[0].Field<byte[]>("avatar_corso");
        string TIPO_IMG = new CORSI.Corsi_WSSoapClient().SelectOne(Chiave).Rows[0]["tipo_img"].ToString();
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
        if (fupAvatar.HasFile)
        {
            if (!estensioni.Contains(Path.GetExtension(fupAvatar.FileName)))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Formato file non valido: caricare .jpg, .png o .bmp')", true); ;
                return;
            }

            avatar = fupAvatar.FileBytes;
            TIPO_IMG = fupAvatar.PostedFile.ContentType;

        }


        string Titolo = txtTitolo.Text.Trim();
        string Tipo = txtTipo.Text.Trim();
        string Descrizione = txtDescrizione.Text.Trim();
        string Data_Partenza = txtDataPartenza.Text.Trim();


        //DA SISTEMARE
        c.Update(Chiave, Titolo, Tipo, Descrizione, avatar, Data_Partenza, TIPO_IMG);
        lbl.Text = "Record Modificato";
        txtTitolo.Text = "";
        txtTipo.Text = "";
        txtDescrizione.Text = "";
        txtDataPartenza.Text = "";
        fupAvatar.Dispose();
    }


}