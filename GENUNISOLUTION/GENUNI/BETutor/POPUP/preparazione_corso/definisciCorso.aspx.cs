using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BETutor_POPUP_preparazione_corso_definisciCorso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInserisciCorso_Click(object sender, EventArgs e)
    {
        if (txtDataDiPartenza.Text == "" || txtDescrizione.Text == "" || txtTipo.Text == "" || txtTitolo.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati mancanti')", true);
            return;
        }
        else
        {

            CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
            int CHIAVE = Convert.ToInt32(Session["CHIAVE"]);
            string TITOLO = txtTitolo.Text;
            string TIPO = txtTipo.Text;
            string DESCRIZIONE = txtDescrizione.Text.ToString();
            byte[] AVATAR_CORSO = UploadAvatar.FileBytes;
            string DATA_PARTENZA = txtDataDiPartenza.Text.ToString();
            string TIPOIMG = UploadAvatar.PostedFile.ContentType;

            C.UpdateForTutor(CHIAVE, TITOLO, TIPO, DESCRIZIONE, AVATAR_CORSO, TIPOIMG, DATA_PARTENZA);

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati inseriti correttamente')", true);
            return;
        }
    }
}