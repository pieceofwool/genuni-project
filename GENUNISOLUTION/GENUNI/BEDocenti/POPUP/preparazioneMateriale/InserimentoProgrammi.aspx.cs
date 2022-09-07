using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEDocenti_POPUP_inserimentoProgrammi_InserimentoProgrammi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInserisci_Click1(object sender, EventArgs e)
    {
        

        //controlli formali
        int INDICE = 0;
        if (!string.IsNullOrEmpty(txtIndice.Text))
        {
            INDICE = Convert.ToInt32(txtIndice.Text);
        }
        //se è vuoto sia link che materiale
        if (string.IsNullOrEmpty(txtLink.Text) && !fupMateriale.HasFile)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ERRORE", "alert('Inserire un link o un materiale')", true);
            return;
        }


        int COD_MATERIA = Convert.ToInt32(Session["COD_MATERIA"]);
        string TIPO = ddlTipo.SelectedValue.ToString();
        string LINK = txtLink.Text.ToString();
        byte[] MATERIALE = fupMateriale.FileBytes;
        string TITOLO_MATERIALE = txtTitolo.Text.ToString();
        string TIPO_MATERIALE = txtTipoMateriale.Text.ToString();
        string DESCRIZIONE = txtDescrizione.Text.ToString();

        PROGRAMMI.Programmi_WSSoapClient Pr = new PROGRAMMI.Programmi_WSSoapClient();
        Pr.Insert(COD_MATERIA, TIPO, INDICE, LINK, MATERIALE, TITOLO_MATERIALE, TIPO_MATERIALE, DESCRIZIONE);

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "OK", "alert('Inseririmento effettuato')", true);
    }

    protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string Tipo = ddlTipo.SelectedValue.ToString();
        //switch (Tipo)
        //{
        //    case ("LF"):
        //        break;
        //}





    }


}