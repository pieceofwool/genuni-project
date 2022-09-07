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

        int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());

        //trasformo una datatable in un intero
        TEST.Test_WSSoapClient t = new TEST.Test_WSSoapClient();
        DataTable dt = t.SelectSoglia(CHIAVE);
        int soglia = int.Parse(dt.Rows[0]["Soglia"].ToString());

        CLASSI.Classi_WSSoapClient c = new CLASSI.Classi_WSSoapClient();
        DataTable da = c.Select_Punteggio(CHIAVE);
        int risultato = int.Parse(da.Rows[0]["Punteggio"].ToString());

        if (risultato >= soglia)
        {
            attestato.Visible = true;
        }
        else
        {
            attestato.Visible = false;
        }
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
        System.Net.ServicePointManager.ServerCertificateValidationCallback += (sender, cert, chain, sslPolicyErrors) => true;
        HttpWebRequest httpRequest = (HttpWebRequest)WebRequest.Create("https://www.canva.com/design/play?type=TACTmE1fsnQ&template=EADmBlGOtoU&category=tACZCk6N0I4&schema=web-2&locale=it-IT/attestato.pdf");
        httpRequest.Method = WebRequestMethods.Http.Get;
        HttpWebResponse httpResponse = (HttpWebResponse)httpRequest.GetResponse();
        Stream ResponseStream = httpResponse.GetResponseStream();

        using (Stream stream = httpResponse.GetResponseStream())
        {
            MemoryStream ms = new MemoryStream();
            stream.CopyTo(ms);
            byte[] arrayByte = ms.ToArray();
            File.WriteAllBytes("C:\\Varie\\test.pdf", arrayByte);

        }
        lblDownload.Text = "Download completato.";

    }
}