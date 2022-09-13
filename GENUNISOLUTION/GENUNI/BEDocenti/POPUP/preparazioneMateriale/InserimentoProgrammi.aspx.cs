using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEDocenti_POPUP_inserimentoProgrammi_InserimentoProgrammi : System.Web.UI.Page
{
    protected int link;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (MATERIALE.Visible == false)
        {
            link = 1;
        }
    }

    protected void btnInserisci_Click1(object sender, EventArgs e)
    {
        PROGRAMMI.Programmi_WSSoapClient Pr = new PROGRAMMI.Programmi_WSSoapClient();
        int COD_MATERIA = Convert.ToInt32(Session["COD_MATERIA"]);
        DataTable dt = Pr.SelectProgrammiMateria(COD_MATERIA);
        int INDICE = 1;

        if (dt.Rows.Count == 0)
        {
            INDICE = 1;
        }
        else
        {
            foreach (DataRow dr in dt.Rows)
            {
                INDICE = dr.Field<int>("Indice") + 1;
            }

        }

        //controlli formali
        //int INDICE = 0;
        //if (!string.IsNullOrEmpty(txtIndice.Text))
        //{
        //    INDICE = Convert.ToInt32(txtIndice.Text);
        //}
        //se è vuoto sia link che materiale
        if (string.IsNullOrEmpty(txtLink.Text) && !fupMateriale.HasFile)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ERRORE", "alert('Inserire un link o un materiale')", true);
            return;
        }

        //controllo selezione ddl
        string TIPO_MATERIALE;
        if (link == 1)
        {
            TIPO_MATERIALE = "";
        }
        else
        {
            TIPO_MATERIALE = fupMateriale.PostedFile.ContentType.ToString();
        }



        string TIPO = ddlTipo.SelectedValue.ToString();
        string LINK = txtLink.Text.ToString();
        byte[] MATERIALE = fupMateriale.FileBytes;
        string TITOLO_MATERIALE = txtTitolo.Text.ToString();

        string DESCRIZIONE = txtDescrizione.Text.ToString();


        Pr.Insert(COD_MATERIA, TIPO, INDICE, LINK, MATERIALE, TITOLO_MATERIALE, TIPO_MATERIALE, DESCRIZIONE);

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "OK", "alert('Inseririmento effettuato')", true);

        txtLink.Text = "";
        txtTitolo.Text = "";
        txtDescrizione.Text = "";



    }

    protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
    {
        string Tipo = ddlTipo.SelectedValue.ToString();
        switch (Tipo)
        {
            case ("LF"):
                MATERIALE.Visible = false;
                LINK.Visible = true;
                link = 1;

                break;

            case ("LV"):
                MATERIALE.Visible = false;
                LINK.Visible = true;
                link = 1;

                break;

            case ("MA"):
                LINK.Visible = false;
                MATERIALE.Visible = true;
                link = 0;

                break;

        }







    }


}