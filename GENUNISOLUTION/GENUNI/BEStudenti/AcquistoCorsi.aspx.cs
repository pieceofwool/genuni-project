using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEStudenti_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaCorsiDisponibili();
    }


    protected void CaricaCorsiDisponibili()
    {
        CORSI.Corsi_WSSoapClient c = new CORSI.Corsi_WSSoapClient();
        //int CHIAVE = int.Parse(Session["CHIAVE"].ToString());
        int CHIAVE = 1;
        grigliaCorso.DataSource = c.SelectOne(CHIAVE);
        grigliaCorso.DataBind();
    }


    protected void grigliaCorso_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[1].Visible = false;
        e.Row.Cells[2].Visible = false;
        e.Row.Cells[5].Visible = false;
        e.Row.Cells[8].Visible = false;
        e.Row.Cells[9].Visible = false;
        e.Row.Cells[11].Visible = false;
    }

    protected void grigliaCorso_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["CHIAVE"] = grigliaCorso.SelectedDataKey[0];
    }
}