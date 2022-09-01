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
    }

    protected void btnAcquista_Click(object sender, EventArgs e)
    {
        Response.Redirect("AcquistoGenMoney.aspx");
    }

    protected void CaricaGenMoney()
    {
        GENMONEY.GenMoney_WSSoapClient g = new GENMONEY.GenMoney_WSSoapClient();
        grigliaGenMoney.DataSource = g.SelectAll();
        grigliaGenMoney.DataBind();
    }
}