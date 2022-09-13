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

    //protected void NascondiGrigliaStudenti()
    //{

    //    grigliaReportStudenti.Visible = false;
    //    ltlStudenti.Visible = false;
    //    lblTot2.Visible = false;


    //}
    //protected void NascondiGrigliaDocenti()
    //{
    //    grigliaReportDocenti.Visible = false;
    //    ltlDocenti.Visible = false;
    //    lblTot1.Visible = false;
    //}
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
        txtDataInizio.Text= "";
        CaricaGrigliaDocenti();
        CaricaGrigliaStudenti();
        CaricaUtili();

    }

    //if (chkDocenti.Checked && chkStudenti.Checked)
    //{
    //    ltlUtili.Text = "<br/>Utili: ";

    //    decimal utili = C.Utili(DataInizio, DataFine);
    //    lblUtili.Text = utili.ToString();
    //}


    //}

    ////protected void chkDocenti_CheckedChanged(object sender, EventArgs e)
    ////{
    ////    if (chkDocenti.Checked)
    ////    {
    ////        MostraGrigliaDocenti();
    ////    }
    ////    else
    ////    {
    ////        NascondiGrigliaDocenti();
    ////    }
    ////    NascondiUtili();

    ////}

    ////protected void chkStudenti_CheckedChanged(object sender, EventArgs e)
    ////{

    ////    if (chkStudenti.Checked)
    ////    {
    ////        MostraGrigliaStudenti();
    ////    }
    ////    else
    ////    {
    ////        NascondiGrigliaStudenti();
    ////    }
    ////    NascondiUtili();

    ////}
    //protected void MostraGrigliaDocenti()
    //{
    //    grigliaReportDocenti.Visible = true;
    //    ltlDocenti.Visible = true;
    //    lblTot1.Visible = true;

    //}

    //protected void MostraGrigliaStudenti()
    //{
    //    grigliaReportStudenti.Visible = true;
    //    ltlStudenti.Visible = true;
    //    lblTot2.Visible = true;

    //}



    //}
    ////protected void NascondiUtili()
    ////{
    ////    if (!chkDocenti.Checked && !chkStudenti.Checked)
    ////    {
    ////        ltlUtili.Visible = false;
    ////        lblUtili.Visible = false;
    ////    }
    ////}

}