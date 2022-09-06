using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class BEAdmin_Popup_VisualizzaInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["ChiaveCreazione"] == null)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Selezionare una voce dalla tabella')", true);
                return;
            }

            // Recupero i dati del libro selezionato e li inserisco nei campi del form
            CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();

            DataRow infocorso = C.Utenti_SelectOne(int.Parse(Session["ChiaveCreazione"].ToString())).Rows[0];

            lblTitolo.Text = infocorso["titolo"].ToString();
            lblTipo.Text= infocorso["tipo"].ToString();
            lblDescrizione.Text = infocorso["descrizione"].ToString();
            lblTutor.Text += infocorso["nome"].ToString()+" " + infocorso["cognome"].ToString();
            lblDataCreazione.Text += infocorso["data_creazione"].ToString();
            lblDataStatus.Text+= infocorso["data_status"].ToString();
            lblStatus.Text+= infocorso["status_corsi"].ToString();
            byte[] arr = infocorso.Field<byte[]>("avatar_corso");
            string base64String = Convert.ToBase64String(arr, 0, arr.Length);
            imgAvatar.Src = "data:image/jpg;base64," + base64String;

        }
    }

    public System.Drawing.Image byteArrayToImage(byte[] byteArrayIn)
    {
        MemoryStream ms = new MemoryStream(byteArrayIn);
        System.Drawing.Image returnImage = System.Drawing.Image.FromStream(ms);
        return returnImage;
    }


}