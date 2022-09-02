using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tipologieCorsii : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        DataTable dt = new DataTable();
        dt = C.SelectAll();
        foreach (DataRow dr in dt.Rows)
        {
            string Titolo = dr.Field<string>("Titolo").ToString();
            string Descrizione = dr.Field<string>("Descrizione").ToString();
            string tipo = dr.Field<string>("Tipo_Img").ToString();
            byte[] arr = dr.Field<byte[]>("Avatar_Corso");
            string Src;

            if (arr != null)
            {
                string base64String1 = Convert.ToBase64String(arr, 0, arr.Length);
                Src = "data:image/" + tipo + ";base64," + base64String1;
                 
            }
            else { Src = "img/logo.png"; }

            litCorso.Text += "<div class=\"col - md - 6 col - lg - 4 wow bounceInUp\" data-wow-duration=\"1.4s\">";
            litCorso.Text += "<div class=\"box\">";
            litCorso.Text += "<img style=\"width:99%; border-radius:5% \" src='"+Src+"' />";
            litCorso.Text += "<h4 class=\"title\"><a href = \"#\" >"+ Titolo +"  </a></h4>";
            litCorso.Text += "<p class=\"description\">"+ Descrizione +" </p>";
            litCorso.Text += "</div>";
            litCorso.Text += "</div>";
        }
        
        
       


    }
}