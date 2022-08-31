using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PopUp_Profilo_ModificaComp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtSkills.Text.Trim()))
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ERRORE", "alert('Dati non validi')", true);

        }


        //  [WebMethod]
        //    COMPETENZE C = new COMPETENZE();

        //    C.Skills = txtSkills.Text.Trim();
        

        //SqlCommand cmd = new SqlCommand();
        //E.chiave = int.Parse(griglia.SelectedDataKey[0].ToString());

        //byte[] CvVecchio = E.SelectOne(cmd).Rows[0].Field<byte[]>("Avatar");


        ////dichiaro variabili
        //if (!FileUpload1.HasFile)
        //{
        //    E.Cv = CvVecchio;
        //}
        //else
        //{
        //    E.Cv = FileUpload1.FileBytes;
        //}

        //Estensione??
    }
}