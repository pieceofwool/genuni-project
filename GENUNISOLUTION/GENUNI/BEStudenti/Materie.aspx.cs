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
        //griglia popolata tramite la tabella PROGRAMMI
    }

    protected void btnTest_Click(object sender, EventArgs e)
    {
        Response.Redirect("Test_Studenti.aspx");
    }
}