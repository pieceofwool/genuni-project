using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //VISUALIZZAZIONE DELLE GRIGLIE
        if (!IsPostBack)
        {
            CaricaGrigliaDocenti();
            CaricaGrigliaStudenti();
            CaricaUtili();
        }
    }

    protected void CaricaGrigliaDocenti()
    {
        CONTABILITA.Contabilita_WSSoapClient C = new CONTABILITA.Contabilita_WSSoapClient();

        grigliaReportDocenti.DataSource = C.ListaSpese("1900-01-01", "2025-01-01");
        grigliaReportDocenti.DataBind();

        lblTotDoc.Text = C.SommaSpese("1900-01-01", "2025-01-01").ToString() + "€";

    }
    protected void CaricaGrigliaStudenti()
    {
        CONTABILITA.Contabilita_WSSoapClient C = new CONTABILITA.Contabilita_WSSoapClient();

        grigliaReportStudenti.DataSource = C.ListaRicavi("1900-01-01", "2025-01-01");
        grigliaReportStudenti.DataBind();

        lblTotStud.Text = C.SommaRicavi("1900-01-01", "2025-01-01").ToString() + ",00€";

    }

    protected void CaricaUtili()
    {
        CONTABILITA.Contabilita_WSSoapClient C = new CONTABILITA.Contabilita_WSSoapClient();

        decimal utili = C.Utili("1900-01-01", "2025-01-01");
        lblUtili.Text = utili.ToString() + "€";
    }

    protected void btnInvia_Click(object sender, EventArgs e)
    {
        string DataFine = txtDataFine.Text;
        string DataInizio = txtDataInizio.Text;

        if (string.IsNullOrEmpty(txtDataFine.Text))
        {
            DataFine = "2025-01-01";
        }
        if (string.IsNullOrEmpty(txtDataInizio.Text))
        {
            DataInizio = "1900-01-01";
        }

        CONTABILITA.Contabilita_WSSoapClient C = new CONTABILITA.Contabilita_WSSoapClient();

        grigliaReportStudenti.DataSource = C.ListaRicavi(DataInizio, DataFine);
        grigliaReportStudenti.DataBind();

        lblTotStud.Text = C.SommaRicavi(DataInizio, DataFine).ToString() + ",00€";

        grigliaReportDocenti.DataSource = C.ListaSpese(DataInizio, DataFine);
        grigliaReportDocenti.DataBind();

        lblTotDoc.Text = C.SommaSpese(DataInizio, DataFine).ToString() + "€";

        decimal utili = C.Utili(DataInizio, DataFine);
        lblUtili.Text = utili.ToString() + "€";
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtDataFine.Text = "";
        txtDataInizio.Text = "";

        CaricaGrigliaDocenti();
        CaricaGrigliaStudenti();
        CaricaUtili();

    }
}