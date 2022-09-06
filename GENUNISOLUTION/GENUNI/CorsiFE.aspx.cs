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
        CaricaTutti();


    }



    //un metodo carica corsi
    protected void CaricaCorsi(DataTable dt)
    {

        litCorso.Text = "";
        //lit per la modal
        litModalCorso.Text = "";
        int i = 0;

        foreach (DataRow dr in dt.Rows)
        {
            string Titolo = dr.Field<string>("Titolo").ToString();
            string Descrizione = dr.Field<string>("Descrizione").ToString();
            string tipo = dr.Field<string>("Tipo_Img").ToString();
            // string data = dr.Field<string>("Data_Partenza").ToString();
            string data = dt.Rows[i]["Data_Partenza"].ToString().Substring(0, 10);
            byte[] arr = dr.Field<byte[]>("Avatar_Corso");
            int Codice = dr.Field<int>("Chiave");
            int prezzo= dr.Field<int>("Costo");

            //accedo alla join con materie con una nuova procedure
            CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
            DataTable dt2 = new DataTable();

            string materie = "";
            string materietemp = "";
            dt2 = C.SelectJoinMateria();
            foreach (DataRow dr2 in dt2.Rows)
            {
                if (dr2.Field<int>("Cod_Corso") == Codice)
                {
                    materietemp += dr2.Field<string>("MATERIE").ToString();
                    materietemp += ", ";
                }
            }

            if (!string.IsNullOrEmpty(materietemp))
            {
                materie = materietemp.Substring(0, materietemp.Length - 2);
            }


            string Src;

            //variabili per modal per distinguere le differenze di ogni scheda
            i++;

            if (arr != null)
            {
                string base64String1 = Convert.ToBase64String(arr, 0, arr.Length);
                Src = "data:image/" + tipo + ";base64," + base64String1;

            }
            else { Src = "img/logo.png"; }
            //creo ogni scheda del corso
            litCorso.Text += "<div class=\"col - md - 6 col - lg - 4 wow bounceInUp\" data-wow-duration=\"1.4s\">";
            litCorso.Text += "<div class=\"box\">";
            litCorso.Text += "<img style=\"height:150px; border-radius:5% \" src='" + Src + "' />";
            litCorso.Text += "<h4 class=\"title\"><a href = \"#\" ></br>" + Titolo + "  </a></h4>";

            //litCorso.Text += "<p class=\"description\">" + Descrizione + " </p>";

            //litCorso.Text += "<p id=\"CodiceCorso\" runat=\"server\" >" + Codice + "</p>";

            //provo con la modal
            litCorso.Text += "<button type=\"button\" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#exampleModalCenter" + i + "\">Info Corso</button>";

            //stampo link con funzione javascript
            //litCorso.Text += "<a href=\"#\" onclick=\"popupCenter({ url: 'InfoCorso.aspx?codice=" + Codice + "', title: 'Info Corso', w: 600, h: 300})\">Info Corso</a>";

            litCorso.Text += "</div>";
            litCorso.Text += "</div>";

            //creo ogni volta una modal
            litModalCorso.Text += "<div class=\"modal fade\" id=\"exampleModalCenter" + i + "\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">";
            litModalCorso.Text += "<div class=\"modal-dialog modal-dialog-centered\" role=\"document\">";
            litModalCorso.Text += "<div class=\"modal-content\">";
            litModalCorso.Text += "<div class=\"modal-header\">";
            litModalCorso.Text += "<h5 style=\"font-size: 25px;\" class=\"modal-title\" id=\"exampleModalLongTitle" + i + "\"><b>" + Titolo + "</b></h5>";
            litModalCorso.Text += "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">";
            litModalCorso.Text += "<span aria-hidden=\"true\">&times;</span>";
            litModalCorso.Text += "</button>";
            litModalCorso.Text += "</div>";
            litModalCorso.Text += "<div class=\"modal-body\">";

            //qui ci metto il contenuto ovvero la tabella
            //litModalCorso.Text +="<img style=\"width:50px; border-radius:5% \" src='" + Src + "' />";

            litModalCorso.Text += "<div style=\"font-size: 18px; background-image: linear-gradient(to bottom, rgba(21, 56, 76, 0.7), rgba(0, 0, 0, 0.8)),url('" + Src + "');"
                                  + "width:100%; min-height: 400px;background-size:cover;color:white; padding:20px; ;\">Data d'inizio: " + data + "</br>Materie: " + materie + "</br>Prezzo: "+prezzo+" GenMoney</br></br>Descrizione del corso:</br>" + Descrizione + "</div>";

            litModalCorso.Text += "</div>";
            litModalCorso.Text += "<div class=\"modal-footer\">";
            litModalCorso.Text += "<button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>";
            litModalCorso.Text += "</div>";
            litModalCorso.Text += "</div>";
            litModalCorso.Text += "</div>";
            litModalCorso.Text += "</div>";




        }
    }


    //uno mostra tutti i corsi, e aggiungo tre bottoni

    protected void CaricaTutti()
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        DataTable dt = new DataTable();
        dt = C.SelectAll();

        CaricaCorsi(dt);
    }
    //uno mostra corsi attivi,

    protected void CaricaAttivi()
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        DataTable dt = new DataTable();
        dt = C.Corsi_SelectApprovati(); //select attivi
                                        // select * from CORSI where Status_Corsi = A

        CaricaCorsi(dt);
    }

    //uno mostra corsi previsti

    protected void CaricaNonAttivi()
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        DataTable dt = new DataTable();
        dt = C.Corsi_SelectNonApprovati(); //select previsti
        // select * from CORSI where Status_Corsi != A

        CaricaCorsi(dt);
    }


    protected void BtnTutti_Click(object sender, EventArgs e)
    {
        CaricaTutti();
    }

    protected void BtnPronti_Click(object sender, EventArgs e)
    {
        CaricaAttivi();
    }

    protected void BtnNonPronti_Click(object sender, EventArgs e)
    {
        CaricaNonAttivi();
    }

}