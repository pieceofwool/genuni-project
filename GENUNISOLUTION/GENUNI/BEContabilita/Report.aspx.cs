using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEContabilita_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            //VISUALIZZAZIONE  DELLE GRIGLIE
            if (rdbDocenti.Checked)
            {
                //CARICA GRIGLIA DOCENTI
            }
            else
            {
                //CARICA GRIGLIA STUDENTI
            }
        }
    }
}