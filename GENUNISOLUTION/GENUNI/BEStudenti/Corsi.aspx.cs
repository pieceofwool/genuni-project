using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEstudenti_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        caricaGriglia();
        int Cod_Corso = int.Parse(Session["Chiave"].ToString());
        CORSI.Corsi_WSSoapClient C=new CORSI.Corsi_WSSoapClient();
        DataTable NomeCorso = new DataTable();
        NomeCorso=C.SelectOne(Cod_Corso);
        lblTitoloCorso.Text = NomeCorso.Rows[0]["Titolo"].ToString();
        TEST.Test_WSSoapClient T = new TEST.Test_WSSoapClient();
        DataTable DTCodTest = new DataTable();
        DTCodTest=T.SelectOneByCorso(Cod_Corso);
        int Cod_Test = DTCodTest.Rows[0]["Chiave"];



        //trasformo una datatable in un intero
        DataTable dt = T.SelectSoglia(Cod_Corso);
        int soglia = int.Parse(dt.Rows[0]["Soglia"].ToString());

        CLASSI.Classi_WSSoapClient c = new CLASSI.Classi_WSSoapClient();
        int Cod_Studente = int.Parse(Session["Cod_Studente"].ToString());
        DataTable da = c.Select_Punteggio(Cod_Studente);
        int risultato = int.Parse(da.Rows[0]["Punteggio"].ToString());

        if (risultato >= soglia)
        {
            lblEsito.Text = "Il test di questo corso è stato già superato. Puoi continuare ad accedere a questa pagina per visualizzare il materiale di studio.";
            btnTest.Visible = false;
        }
        else
        {
            lblEsito.Text = "Il test di questo corso è già stato effettuato e non è stato superato. Se vuoi effettuare nuovamente il test, puoi iscriverti ad un nuovo corso. Puoi comunque continuare ad accedere a questa pagina per visualizzare il materiale di studio.";
            btnTest.Visible = false;
        }
    }

    protected void grigliaMaterie_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Materie.aspx");
    }

    protected void caricaGriglia()
    {
        MATERIE.Materie_WSSoapClient m = new MATERIE.Materie_WSSoapClient();
        int CHIAVE = int.Parse(Session["Chiave"].ToString());
        grigliaMaterie.DataSource = m.MaterieInfoCorso(CHIAVE);
        grigliaMaterie.DataBind();
    }

    protected void btnAttestato_Click(object sender, EventArgs e)
    {

        //DataTable dt = new DataTable();
        //dt = l.Select();

        //lit.Text = "";
        //foreach (DataRow r in dt.Rows)
        //{
        //    if (r["Tipo_Materiale"].ToString().Trim() == "application/pdf")
        //    {
        //        string embed = "<object data=\"{0}{1}\" type=\"application/pdf\" width=\"800px\" height=\"700px\">";
        //        embed += "If you are unable to view file, you can download from <a href = \"{0}{1}&download=0\">here</a>";
        //        embed += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
        //        embed += "</object>";
        //        lit.Text += string.Format(embed, ResolveUrl("gestore.ashx?c="), r["chiave"]);
        //    }

        //    if (r["TIPO"].ToString().Trim() == "image/jpeg")
        //    {
        //        lit.Text += "<img style='widht: 200px;' src='gestore.ashx?c=" + r["chiave"].ToString() + "' />";
        //    }
        //}

    }

    protected void btnTest_Click(object sender, EventArgs e)
    {
        int Chiave = int.Parse(Session["Chiave"].ToString());
        TEST.Test_WSSoapClient T = new TEST.Test_WSSoapClient();
        T.SelectOne(Chiave);
        Response.Redirect("Test_Studenti.aspx");
    }
}