using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class assegnazioneDocenti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        //procedure per selezione del profe
    }

    protected void btnCronistoria_Click(object sender, EventArgs e)
    {
        Response.Redirect("/cronistoriaDocenti.aspx");
    }
}