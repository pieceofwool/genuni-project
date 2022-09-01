using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PopUp_Profilo_ModificaComp : System.Web.UI.Page
{
    public DataTable dt2 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            COMPETENZE.Competenze_WSSoapClient C = new COMPETENZE.Competenze_WSSoapClient();
            int CHIAVE = 1;
        dt2 = C.SelectOne(CHIAVE);

        txtSkills.Text = dt2.Rows[0]["Skills"].ToString();

        }
    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtSkills.Text.Trim()))
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ERRORE", "alert('Dati non validi')", true);

        }



        COMPETENZE.Competenze_WSSoapClient C = new COMPETENZE.Competenze_WSSoapClient();


        //C.COD_DOCENTE = int.Parse(Session["CodiceDoc"].ToString());
        int CHIAVE = 1;
        dt2 = C.SelectOne(CHIAVE);
        DataRow dr2 = dt2.Rows[0];
        byte[] arr2 = dr2.Field<byte[]>("Cv");
        byte[] CV;


        if (!FileUploadCV.HasFile)
        {
            CV = arr2;
        }
        else
        {
            CV = FileUploadCV.FileBytes;
        }

        string SKILLS = txtSkills.Text.Trim();
        C.Update(CHIAVE, CV, SKILLS);

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ok", "alert('Competenze inserite correttamente')", true);

    }
}