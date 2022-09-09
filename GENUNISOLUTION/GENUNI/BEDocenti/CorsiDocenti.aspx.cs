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
        int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
        //int CHIAVE = 2;
        int i = 0;
        MATERIE.Materie_WSSoapClient MA = new MATERIE.Materie_WSSoapClient();
        DataTable storico = new DataTable();
        storico = MA.SelectMaterieDocente(CHIAVE);
        foreach (DataRow riga in storico.Rows)
        {
            if(storico.Rows.Count == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "ERRORE", "alert('Nessuna materia presente')", true);
                return;
            }

            bool accettata = bool.Parse(storico.Rows[i][2].ToString());
            int chiave = int.Parse(storico.Rows[i][0].ToString());

            string materia = storico.Rows[i][1].ToString();
            string corso = storico.Rows[i][3].ToString();
            string data = storico.Rows[i][4].ToString().Substring(0, 10);

            if (accettata)
            {
                litStorico.Text += "<tr><td>" + materia + "</td><td>" + corso + "</td><td>" + data + "</td></tr>";
            }
            else
            {
                litDaAccettare.Text += "<tr><td>" + materia + "</td><td>" + corso + "</td><td>" + data + "</td>"
                   + "<td><input id=\"btnAccetta"+chiave+"\" type=\"button\" value=\"Accetta\" onclick=\"Accetta("+chiave+")\"/></td></tr>";
            }

            i++;
        }

        DataTable corsi = new DataTable();
        corsi = MA.SelectCorsiDocente(CHIAVE);

        foreach(DataRow riga in corsi.Rows)
        {
            if (corsi.Rows.Count == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "ERRORE", "alert('Nessun corso presente')", true);
                return;
            }

            string corso = riga.Field<string>("Corso").ToString();
            int codice = riga.Field<int>("Chiave");

            litCorsi.Text += "<tr><td>"+corso+"</td><td><a href=\"MaterieDocenti.aspx?codice="+codice+"&corso="+corso+"\">Vai al Corso</a></td></tr>";
        }


    }

    protected void BtnIndietro_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profilo.aspx");
    }
}