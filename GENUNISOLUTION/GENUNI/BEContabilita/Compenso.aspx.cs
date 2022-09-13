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
        }
        CaricaGrigliaDocenti();

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
        string dataInizio;
        string dataFine;
        if (string.IsNullOrEmpty(txtDataInzio.Text))
        {
            dataInizio = "1900-01-01";
        }
        else
        {
            dataInizio = txtDataInzio.Text;
        }

        if (string.IsNullOrEmpty(txtDataFine.Text))
        {
            dataFine = "2999-12-31";
        }
        else
        {
            dataFine = txtDataFine.Text;
        }

        int codDocente = int.Parse(ddlDocenti.SelectedValue.ToString());
        grdDocente.DataSource = C.ListaSpeseDocenteSingolo(dataInizio, dataFine, codDocente);
        grdDocente.DataBind();
    }

    protected void CaricaGrigliaDocenti()
    {
        CONTABILITA.Contabilita_WSSoapClient C = new CONTABILITA.Contabilita_WSSoapClient();
        string dataInizio;
        string dataFine;
        if (string.IsNullOrEmpty(txtDataInzio.Text))
        {
            dataInizio = "1900-01-01";
        }
        else
        {
            dataInizio = txtDataInzio.Text;
        }

        if (string.IsNullOrEmpty(txtDataFine.Text))
        {
            dataFine = "2999-12-31";
        }
        else
        {
            dataFine = txtDataFine.Text;
        }

        grdDocente.DataSource = C.ListaSpese(dataInizio, dataFine);
        grdDocente.DataBind();

    }



    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            ddlDocenti.Enabled = false;
            CaricaGrigliaDocenti();
        }
        else
        {
            ddlDocenti.Enabled = true;

        }
    }

    protected void ddlDocenti_SelectedIndexChanged(object sender, EventArgs e)
    {
        CaricaGrigliaDocenteSingolo();
    }

    protected void btnCarica_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            CaricaGrigliaDocenti();
        }
        else
        {
            CaricaGrigliaDocenteSingolo();
        }
    }
}