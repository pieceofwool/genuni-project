using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CV : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        COMPETENZE.Competenze_WSSoapClient C = new COMPETENZE.Competenze_WSSoapClient(); ;
        //C.COD_DOCENTE = int.Parse(Session["CodiceDoc"].ToString());
        int CHIAVE = 1;

        DataTable dt2 = C.SelectOne(CHIAVE);


        DataRow dr2 = dt2.Rows[0];
        byte[] CV = dr2.Field<byte[]>("Cv");
        

        if (CV != null)
        {

            //if (tipo != "application/pdf")
            //{
            //    string base64String2 = Convert.ToBase64String(CV, 0, CV.Length);
            //    string Src = "data:image/jpg;base64," + base64String2;
            //    Lit2.Text = "<img style='width:1000px' src='" + Src + "' />";
            //}

           // else
           // {
                string embed = "<object data=\"{0}{1}\" type=\"application/pdf\" width=\"800px\" height=\"700px\">";
                embed += "If you are unable to view file, you can download from <a href = \"{0}{1}&download=1\">here</a>";
                embed += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
                embed += "</object>";
                Lit2.Text = string.Format(embed, ResolveUrl("GestoreCvPdf.ashx?chiave="), CHIAVE /*valore chiave*/);

           // }
        }


    }
}


//public string ReadPDF(DataRow r)
//{
//    string embed = "<object data=\"{0}{1}\" type=\"application/pdf\" width=\"800px\" height=\"700px\">";
//    string chiave = r["chiave"].ToString();

//    embed += "If you are unable to view file, you can download from <a href = \"{0}{1}&download=1\">here</a>";
//    embed += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
//    embed += "</object>";
//    return string.Format(embed, ResolveUrl("gestore.ashx?d=" + 1 + "&c="), chiave);

//}
