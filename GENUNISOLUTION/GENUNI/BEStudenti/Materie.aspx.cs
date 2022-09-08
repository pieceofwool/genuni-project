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
        CaricaMateriale();
    }

    protected void btnTest_Click(object sender, EventArgs e)
    {
        Response.Redirect("Test_Studenti.aspx");
    }

    protected void CaricaMateriale()
    {
        PROGRAMMI.Programmi_WSSoapClient p = new PROGRAMMI.Programmi_WSSoapClient();
        int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
        grigliaMateriale.DataSource = p.ProgrammiInfoMateria(CHIAVE);
        grigliaMateriale.DataBind();
    }

    protected void grigliaMateriale_SelectedIndexChanged(object sender, EventArgs e)
    {
        //controllo sulla colonna materiale
        //se + vuoto fare...
        //if (/*controllo tabella materiale*/)
        //{
        //    string link = grigliaMateriale.SelectedRow.Cells[1].Text.ToString();
        //    Response.Redirect(link);
        //}
        //...questo
        //altrimenti response ad un pop up 
        //else
        //{
        string chiave = grigliaMateriale.SelectedDataKey[0].ToString();
        Response.Redirect("GestoreDownload.ashx?chiave=" + chiave);
        //if per vedere se è un file pdf
        //string embed = "<object data=\"{0}{1}\" type=\"application/pdf\" width=\"800px\" height=\"700px\">";
        //embed += "If you are unable to view file, you can download from <a href = \"{0}{1}&download=0\">here</a>";
        //embed += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
        //embed += "</object>";
        //lit.Text += string.Format(embed, ResolveUrl("gestore.ashx?c="), r["chiave"]);
        //}



    }
}