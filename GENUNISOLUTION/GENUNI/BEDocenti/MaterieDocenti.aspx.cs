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
        int codicecorso = int.Parse(Request.QueryString["codice"].ToString());
        string nomecorso = Request.QueryString["corso"].ToString();
        InserireCorso.InnerText = "Corso "+ nomecorso;

        litChat.Text = "<td><a href=\"Chat.aspx?codicecorso="+codicecorso+"&nomecorso="+nomecorso+"\">Chat del corso "+nomecorso+"</a></td>";

        //int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
        int CHIAVE = 2;
        Session["CodiceCorso"] = codicecorso;

        MATERIE.Materie_WSSoapClient MA = new MATERIE.Materie_WSSoapClient();
        DataTable materie = new DataTable();
        
        materie = MA.SelectMaterieDocenteCorso(CHIAVE, codicecorso);

        foreach(DataRow riga in materie.Rows)
        {
            string materia = riga.Field<string>("Titolo").ToString();
            int codicemateria = riga.Field<int>("Chiave");
            litMaterie.Text += "<tr><td>" + materia + "</td><td><a href=\"ProgrammaDocenti.aspx?" +
                "codice=" + codicemateria + "&corso="+nomecorso+"&materia="+materia+"\">Vai al Programma</a></td></tr>";
        }
    }
}