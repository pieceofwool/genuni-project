using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEDocenti_POPUP_profilo_InserisciCompetenze : System.Web.UI.Page
{
    public DataTable dt2 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            COMPETENZE.Competenze_WSSoapClient C = new COMPETENZE.Competenze_WSSoapClient();

            int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());

            //int CHIAVE = 1;
            dt2 = C.SelectAllDocente(CHIAVE); //uso selectone apposta

            try
            {
                txtSkills.Text = dt2.Rows[0]["Skills"].ToString();
            }

            catch (Exception)
            {
                return;
            }


        }
    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtSkills.Text.Trim()))
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ERRORE", "alert('Dati non validi')", true);
            return;

        }



        COMPETENZE.Competenze_WSSoapClient C = new COMPETENZE.Competenze_WSSoapClient();

        int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());


        //int CHIAVE = 1;
        dt2 = C.SelectAllDocente(CHIAVE);
       

        byte[] CV;
        string tipoCv = FileUploadCV.PostedFile.ContentType;

        //se non ha file il fileupload tengo il vecchio curriculum letto dal database
        if (!FileUploadCV.HasFile)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Attenzione", "alert('Inserire un CV in formato pdf')", true);
            return;
        }

        else //altrimenti procedo con il salvataggio del nuovo
        {
            //controllo che sia un pdf
            if (tipoCv != "application/pdf" && tipoCv != "application/octet-stream")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "ok", "alert('Inserire un file pdf valido')", true);
                return;
            }
            CV = FileUploadCV.FileBytes;
        }

        string SKILLS = txtSkills.Text.Trim();
        C.Insert(CHIAVE, CV, SKILLS);

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ok", "alert('Competenze inserite correttamente')", true);

    }
}