using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEstudenti_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaGenMoney();
        CaricaStorico();
        CaricaStoricoGenMoney();
    }

    protected void btnAcquista_Click(object sender, EventArgs e)
    {
        Response.Redirect("AcquistoGenMoney.aspx");
    }

    protected void CaricaGenMoney()
    {
        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();
        int COD_STUDENTE = int.Parse(Session["CodiceAttore"].ToString());
        int saldo = g.SaldoStudente(COD_STUDENTE);
        lblSaldo.Text = saldo.ToString();
    }

    protected void CaricaStorico()
    {
        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();
        int COD_STUDENTE = int.Parse(Session["CodiceAttore"].ToString());
        grigliaStoricoAcquisti.DataSource = g.StoricoCorsi(COD_STUDENTE);
        grigliaStoricoAcquisti.DataBind();
    }



    protected void btnAggiornaSaldo_Click(object sender, EventArgs e)
    {
        CaricaGenMoney();
    }

    protected void CaricaStoricoGenMoney()
    {
        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();
        int COD_STUDENTE = int.Parse(Session["CodiceAttore"].ToString());
        grigliaRicariche.DataSource = g.StoricoRicariche(COD_STUDENTE);
        grigliaRicariche.DataBind();
    }

    protected void grigliaRicariche_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[0].Visible = false;
        e.Row.Cells[1].Visible = false;
        e.Row.Cells[2].Visible = false;
    }
}