using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class definizioneMaterie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            CaricaMaterie();
        }

    }

    protected void btnInserisciMaterie_Click(object sender, EventArgs e)
    {
        if (txtTitolo.Text == "" || txtIndice.Text == "" || txtDescrizione.Text == "")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati non inseriti')", true);
            return;
        }
        else
        {
            InserisciMateria();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('dati inseriti correttamente')", true);
            return;
        }
    }

    protected void InserisciMateria()
    {

        MATERIE.Materie_WSSoapClient Ma = new MATERIE.Materie_WSSoapClient();

        int COD_CORSO = Convert.ToInt32(Session["CHIAVE"]);
        int COD_DOCENTE = 0;
        int COSTO_DOCENTE = 0;
        string TITOLO = txtTitolo.Text.ToString();
        string DESCRIZIONE = txtDescrizione.Text.ToString();
        int INDICE = int.Parse(txtIndice.Text);
        string PREPARATO = "";
        string ACCETTATO = "";
        string DATA_RISPOSTA = "";

        Ma.Insert(COD_CORSO, COD_DOCENTE, COSTO_DOCENTE, TITOLO, DESCRIZIONE, INDICE, PREPARATO, ACCETTATO, DATA_RISPOSTA);
    }

    protected void CaricaMaterie()
    {
        MATERIE.Materie_WSSoapClient Ma = new MATERIE.Materie_WSSoapClient();
        gridMaterie.DataSource = Ma.MateriePreparate();
        gridMaterie.DataBind();

    }


}