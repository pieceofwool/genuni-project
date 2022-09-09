using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BETutor_POPUP_preparazione_corso_definisciCorso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Riempimento campi con dati esistenti
            int CHIAVE = Convert.ToInt32(Session["ChiaveCorso"]);
            CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();

            DataRow corso = C.SelectOne(CHIAVE).Rows[0];
            txtTitolo.Text = corso["Titolo"].ToString();
            txtTipo.Text = corso["Tipo"].ToString();
            txtDescrizione.Text = corso["Descrizione"].ToString();
            txtDataDiPartenza.Text = corso.Field<DateTime>("Data_Partenza").ToString("yyyy-MM-dd");
        }
    }

    protected void btnInserisciCorso_Click(object sender, EventArgs e)
    {
        // Controlli formali
        if (txtDataDiPartenza.Text == "" || txtDescrizione.Text == "" || txtTipo.Text == "" || txtTitolo.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati mancanti')", true);
            return;
        }

        // Importazione dati
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        int CHIAVE = Convert.ToInt32(Session["ChiaveCorso"]);
        DataRow corso = C.SelectOne(CHIAVE).Rows[0];
        byte[] AVATAR_CORSO = corso.Field<byte[]>("Avatar_Corso");
        string TIPOIMG = corso["Tipo_Img"].ToString();

        // Definizione nuovi dati
        string TITOLO = txtTitolo.Text;
        string TIPO = txtTipo.Text;
        string DESCRIZIONE = txtDescrizione.Text.ToString();
        string DATA_PARTENZA = txtDataDiPartenza.Text.ToString();

        // Controllo presenza nuovo avatar
        if (UploadAvatar.HasFile)
        {
            AVATAR_CORSO = UploadAvatar.FileBytes;
            TIPOIMG = UploadAvatar.PostedFile.ContentType;
        }        

        // Modifica corso e pulizia campi
        C.UpdateForTutor(CHIAVE, TITOLO, TIPO, DESCRIZIONE, AVATAR_CORSO, TIPOIMG, DATA_PARTENZA);

        txtTitolo.Text = string.Empty;
        txtTipo.Text = string.Empty;
        txtDescrizione.Text = string.Empty;
        txtDataDiPartenza.Text = string.Empty;
        UploadAvatar.Dispose();

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati inseriti correttamente')", true);
        return;
    }
}