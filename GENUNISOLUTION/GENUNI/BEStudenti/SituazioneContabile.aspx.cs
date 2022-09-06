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
    }

    protected void btnAcquista_Click(object sender, EventArgs e)
    {
        Response.Redirect("AcquistoGenMoney.aspx");
    }

    protected void CaricaGenMoney()
    {
        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();
        //int CHIAVE = int.Parse(Session["codiceStudente"].ToString());
        //portafoglio (sum)
        int COD_STUDENTE = int.Parse(Session["CodiceAttore"].ToString());
        int saldo = g.SaldoStudente(COD_STUDENTE);
        lblSaldo.Text = saldo.ToString();
    }



    protected void CaricaStorico()
    {
        //storico acquisti con cod studente
        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();
        int COD_STUDENTE = int.Parse(Session["CodiceAttore"].ToString());
        grigliaStorico.DataSource = g.Storico_Studente(COD_STUDENTE);
        grigliaStorico.DataBind();
    }


    protected void grigliaStorico_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[0].Visible = false;
        e.Row.Cells[1].Visible = false;

    }

    protected void btnAggiornaSaldo_Click(object sender, EventArgs e)
    {
        CaricaGenMoney();
    }
}