using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEContabilita_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CaricaDDl();
            SceltaVisualiazzione();
        }
    }

    protected void CaricaDDl()
    {
        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();
        ddlDocenti.DataSource = E.SelectAll_Docenti();
        ddlDocenti.DataValueField = "Chiave";
        ddlDocenti.DataTextField = "Cognome";
        ddlDocenti.DataBind();
    }

    protected void CaricaGrigliaDocenteSingolo()
    {
        CONTABILITA.Contabilita_WSSoapClient C = new CONTABILITA.Contabilita_WSSoapClient();
        string dataInzio = txtDataInzio.Text;
        string dataFine = txtDataFine.Text;
        int codDocente = int.Parse(ddlDocenti.SelectedValue.ToString());
        grdDocente.DataSource = C.ListaSpeseDocenteSingolo(dataInzio, dataFine, codDocente);
        grdDocente.DataBind();
    }

    protected void CaricaGrigliaDocenti()
    {
        CONTABILITA.Contabilita_WSSoapClient C = new CONTABILITA.Contabilita_WSSoapClient();
        string dataInzio = txtDataInzio.Text;
        string dataFine = txtDataFine.Text;
        grdDocente.DataSource = C.ListaSpese(dataInzio, dataFine);
        grdDocente.DataBind();

    }

    protected void SceltaVisualiazzione()
    {
        if (rdbDocente.Checked)
        {
            CaricaGrigliaDocenteSingolo();
            ddlDocenti.Enabled = true;
        }
        else
        {
            CaricaGrigliaDocenti();
            ddlDocenti.Enabled = false;

        }
    }

    protected void btnInvia_Click(object sender, EventArgs e)
    {
        SceltaVisualiazzione();
    }

}