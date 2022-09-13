using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEDocenti_POPUP_inserimentoProgrammi_ModificaProgrammi : System.Web.UI.Page
{
    static int link;
    static int INDICE;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            int CHIAVE = Convert.ToInt32(Session["CHIAVE"]);

            PROGRAMMI.Programmi_WSSoapClient P = new PROGRAMMI.Programmi_WSSoapClient();
            DataTable dt = new DataTable();
            dt = P.SelectOne(CHIAVE);

            string Tipo = dt.Rows[0][2].ToString();
            switch (Tipo)
            {
                case ("LF"):
                    MATERIALE.Visible = false;
                    LINK.Visible = true;
                    link = 1;
                    ddlTipo.SelectedValue = "LF";
                    txtLink.Text = dt.Rows[0][4].ToString();

                    break;

                case ("LV"):
                    MATERIALE.Visible = false;
                    LINK.Visible = true;
                    link = 1;
                    ddlTipo.SelectedValue = "LV";
                    txtLink.Text = dt.Rows[0][4].ToString();

                    break;

                case ("MA"):
                    LINK.Visible = false;
                    MATERIALE.Visible = true;
                    link = 0;
                    ddlTipo.SelectedValue = "MA";

                    break;

            }

            INDICE = (int)dt.Rows[0][3];
            txtTitolo.Text = dt.Rows[0][6].ToString();
            txtDescrizione.Text = dt.Rows[0][8].ToString();
        }



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
                txtLink.Text = "";

                break;

        }
    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {

        int CHIAVE = Convert.ToInt32(Session["CHIAVE"]);



        //controllo selezione ddl
        string TIPO_MATERIALE;
        byte[] MATERIALE;

        //se è un link
        if (link == 1)
        {
            TIPO_MATERIALE = "";
            byte[] array = Encoding.ASCII.GetBytes("null");
            MATERIALE = array;
        }

        //se è un materiale
        else
        {

            //se non ha file il fileupload tengo il vecchio materiale letto dal database
            if (!fupMateriale.HasFile)
            {
                PROGRAMMI.Programmi_WSSoapClient P = new PROGRAMMI.Programmi_WSSoapClient();
                DataTable dt = new DataTable();

                dt = P.SelectOne(CHIAVE);
                byte[] vecchio = (byte[])dt.Rows[0]["Materiale"];
                string tipo = dt.Rows[0]["Tipo_Materiale"].ToString();

                MATERIALE = vecchio;
                TIPO_MATERIALE = tipo;
            }

            else //altrimenti procedo con il salvataggio del nuovo
            {
                TIPO_MATERIALE = fupMateriale.PostedFile.ContentType.ToString();
                MATERIALE = fupMateriale.FileBytes;
            }
            
        }

        int COD_MATERIA = Convert.ToInt32(Session["COD_MATERIA"]);
        string TIPO = ddlTipo.SelectedValue.ToString();
        string LINK = txtLink.Text.ToString();
        string TITOLO_MATERIALE = txtTitolo.Text.ToString();
        string DESCRIZIONE = txtDescrizione.Text.ToString();

        PROGRAMMI.Programmi_WSSoapClient Pr = new PROGRAMMI.Programmi_WSSoapClient();

        Pr.Update(CHIAVE, COD_MATERIA, TIPO, INDICE, LINK, MATERIALE, TITOLO_MATERIALE, TIPO_MATERIALE, DESCRIZIONE);

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "OK", "alert('Modifica effettuata')", true);

        txtLink.Text = "";
        txtTitolo.Text = "";
        txtDescrizione.Text = "";
    }
}

