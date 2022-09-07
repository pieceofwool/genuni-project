using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int codicemateria = int.Parse(Request.QueryString["codice"].ToString());
        string nomecorso = Request.QueryString["corso"].ToString();
        string materia = Request.QueryString["materia"].ToString();

        InserireCorso.InnerText = "Programmi relativi alla materia " + materia + " del corso " + nomecorso;

        PROGRAMMI.Programmi_WSSoapClient P = new PROGRAMMI.Programmi_WSSoapClient();

        grigliaProgrammi.DataSource = P.SelectProgrammiMateria(codicemateria);
        grigliaProgrammi.DataBind();
    }
}