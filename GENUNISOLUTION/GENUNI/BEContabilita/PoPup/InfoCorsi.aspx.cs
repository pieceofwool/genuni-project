using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEContabilita_PoPup_InfoCorsi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int codice = Convert.ToInt32(Session["id"]);
        lit.Text = codice.ToString();
    }
}