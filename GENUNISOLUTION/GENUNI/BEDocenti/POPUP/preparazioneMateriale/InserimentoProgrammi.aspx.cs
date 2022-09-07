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
        PROGRAMMI.Programmi_WSSoapClient Pr = new PROGRAMMI.Programmi_WSSoapClient();

        int COD_MATERIA = Convert.ToInt32(Session["COD_MATERIA"]);
        string TIPO = ddlTipo.SelectedValue.ToString();
        int INDICE = Convert.ToInt32(txtIndice.Text);
        string LINK = txtLink.Text.ToString();
        byte[] MATERIALE = fupMateriale.FileBytes;
        string TITOLO_MATERIALE = txtTitolo.Text.ToString();
        string TIPO_MATERIALE = txtTipoMateriale.Text.ToString();
        string DESCRIZIONE = txtDescrizione.Text.ToString();

        Pr.Insert(COD_MATERIA, TIPO, INDICE, LINK, MATERIALE, TITOLO_MATERIALE, TIPO_MATERIALE, DESCRIZIONE);
    }

    protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
    {
        //int LF = 1;
        //int LV = 2;
        //int MA = 3;
        //if (ddlTipo.SelectedValue = Convert.ToInt32(1);
        //{

        //}
    }


}