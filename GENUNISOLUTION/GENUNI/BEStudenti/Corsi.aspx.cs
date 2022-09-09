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

        //int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());

        ////trasformo una datatable in un intero
        //TEST.Test_WSSoapClient t = new TEST.Test_WSSoapClient();
        //DataTable dt = t.SelectSoglia(CHIAVE);
        ////int soglia = int.Parse(dt.Rows[0]["Soglia"].ToString());

        //CLASSI.Classi_WSSoapClient c = new CLASSI.Classi_WSSoapClient();
        //DataTable da = c.Select_Punteggio(CHIAVE);
        //int risultato = int.Parse(da.Rows[0]["Punteggio"].ToString());

        //if (risultato >= soglia)
        //{
        //    attestato.Visible = true;
        //}
        //else
        //{
        //    attestato.Visible = false;
        //}
    }

    protected void grigliaMaterie_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Materie.aspx");
    }

    protected void caricaGriglia()
    {
        MATERIE.Materie_WSSoapClient m = new MATERIE.Materie_WSSoapClient();
        int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
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
        int Chiave= int.Parse(Session["Chiave"].ToString()) ;
        TEST.Test_WSSoapClient T=new TEST.Test_WSSoapClient();
        T.SelectOne(Chiave);
        Response.Redirect("Test_Studenti.aspx");
    }
}