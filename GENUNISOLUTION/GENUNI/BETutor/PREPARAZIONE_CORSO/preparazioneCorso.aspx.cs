using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack == true)
        {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();

        int COD_TUTOR =Convert.ToInt32(Session["CodiceAttore"]);

        GridCorsi.DataSource = C.SelectForTutor(COD_TUTOR);
        GridCorsi.DataBind();
        }
    }
    

    protected void GridCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["CHIAVE"] = GridCorsi.SelectedDataKey[0];
    }
    protected void btnInserisciCorso_Click(object sender, EventArgs e)
    {
        if(txtDataDiPartenza.Text=="" || txtDescrizione.Text == "" || txtTipo.Text == "" || txtTitolo.Text =="")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati mancanti')", true);
            return;
        }
        else
        {

        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        int COD_UTENTE = Convert.ToInt32(Session["CodiceAttore"]);
        string TITOLO = txtTitolo.Text;
        string TIPO = txtTipo.Text;
        string DESCRIZIONE = txtDescrizione.Text.ToString();
        byte[] AVATAR_CORSO = UploadAvatar.FileBytes;
        string DATA_PARTENZA =txtDataDiPartenza.Text.ToString();
        string TIPOIMG = UploadAvatar.PostedFile.ContentType;

        C.UpdateForTutor (COD_UTENTE, TITOLO, TIPO, DESCRIZIONE, AVATAR_CORSO, TIPOIMG, DATA_PARTENZA);

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati inseriti correttamente')", true);
        return;
        }

    }

    protected void btnAssegnazioneDocenti_Click(object sender, EventArgs e)
    {
        Response.Redirect("../PREPARAZIONE_CORSO/assegnazioneDocenti.aspx");
    }

    protected void btnDefinizioneMateria_Click(object sender, EventArgs e)
    {
        Response.Redirect("../POPUP/preparazione_corso/definizioneMaterie.aspx");
    }


}