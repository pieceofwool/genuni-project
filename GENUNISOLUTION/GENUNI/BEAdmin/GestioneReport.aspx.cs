using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            //VISUALIZZAZIONE  DELLE GRIGLIE
            if (chkDocenti.Checked)
            {
                CaricaGrigliaDocenti();
            }
            else
            {
                NascondiGrigliaDocenti();
            }

            if (chkStudenti.Checked)
            {
                CaricaGrigliaStudenti();
            }
            else
            {
                NascondiGrigliaStudenti();
            }
        }
    }

    protected void CaricaGrigliaDocenti()
    {
        CONTABILITA.Contabilita_WSSoapClient C = new CONTABILITA.Contabilita_WSSoapClient();

        grigliaReportDocenti.DataSource = C.ListaSpese("1900-01-01", "2025-01-01");
        grigliaReportDocenti.DataBind();
        ltlDocenti.Text = "<br>Spese Docenti";
    }
    protected void CaricaGrigliaStudenti()
    {
        CONTABILITA.Contabilita_WSSoapClient C = new CONTABILITA.Contabilita_WSSoapClient();

        grigliaReportStudenti.DataSource = C.ListaRicavi("1900-01-01", "2025-01-01");
        grigliaReportStudenti.DataBind();
        ltlStudenti.Text = "<br>Ricavo Studenti";
    }
    protected void NascondiGrigliaStudenti()
    {

        grigliaReportStudenti.Visible = false;
        ltlStudenti.Text = "";
    }
    protected void NascondiGrigliaDocenti()
    {
        grigliaReportDocenti.Visible = false;
        ltlDocenti.Text = "";
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
            DataFine = "1900-01-01";
        }
        CONTABILITA.Contabilita_WSSoapClient C = new CONTABILITA.Contabilita_WSSoapClient();
        DataTable dt = new DataTable();
        dt = C.ListaRicavi(DataInizio, DataFine);
        grigliaReportStudenti.DataSource = dt;
        grigliaReportStudenti.DataBind();
        lblTotStud.Text = C.SommaRicavi(DataInizio, DataFine).ToString();

        DataTable dt2 = new DataTable();
        dt2 = C.ListaSpese(DataInizio, DataFine);
        grigliaReportDocenti.DataSource = dt2;
        grigliaReportDocenti.DataBind();
        lblTotDoc.Text = C.SommaSpese(DataInizio, DataFine).ToString();

        if (chkDocenti.Checked && chkStudenti.Checked) { ltlUtili.Text = "<br>Utili: ";

            decimal utili=C.Utili(DataInizio, DataFine);
            lblUtili.Text = utili.ToString(); }

    }
}