using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int codice = int.Parse(Request.QueryString["codice"].ToString());

        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        DataTable dt = new DataTable();
        dt = C.SelectOne(codice);
        griglia.DataSource = dt;
        griglia.DataBind();
    }
}