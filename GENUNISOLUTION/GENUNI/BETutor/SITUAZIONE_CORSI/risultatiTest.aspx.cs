using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BETutor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        TEST.Test_WSSoapClient T = new TEST.Test_WSSoapClient();
        int COD_CORSO = Convert.ToInt32(Session["Chiave_Corso"]);
        grvRisulati.DataSource = T.Test_SelectCorso(COD_CORSO);

    }
}