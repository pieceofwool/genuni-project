using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEDocenti_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaAsc();
    }

    protected void CaricaAsc()
    {
        litChat.Text = "";
        //int CHIAVE = Session["CodiceCorso"]
        int CHIAVE = 1;
        CHAT.Chat_WSSoapClient C = new CHAT.Chat_WSSoapClient();
        DataTable dt = C.SelectChatCorso(CHIAVE);

        CaricaChat(dt);
    }
    protected void CaricaDesc()
    {
        litChat.Text = "";
        //int CHIAVE = Session["CodiceCorso"]
        int CHIAVE = 1;
        CHAT.Chat_WSSoapClient C = new CHAT.Chat_WSSoapClient();
        DataTable dt = C.SelectChatCorsoDesc(CHIAVE);

        CaricaChat(dt);
    }
        
        

    protected void CaricaChat(DataTable dt)
    {
        CHAT.Chat_WSSoapClient C = new CHAT.Chat_WSSoapClient();

        int i = 0;
        int key = 0;
        foreach (DataRow dr in dt.Rows)
        {

            //se è un esterno faccio join con tabella esterni se no con la tabella utenti per recuperare i dati corretti
            if (string.IsNullOrEmpty(dt.Rows[i]["Cod_Interno"].ToString()))
            {
               // int cod_studente = (int)dt.Rows[i]["Cod_Studente"];
                
                key = dr.Field<int>("Chiave");
                DataTable dt2 = C.SelectOneJoinEsterni(key);

                //recupero variabili
                string date = dt2.Rows[0]["Data_Post"].ToString();
                string messaggio = dt2.Rows[0]["Contenuto"].ToString();
                char tipo = char.Parse(dt2.Rows[0]["Tipo"].ToString());
                string nome = dt2.Rows[0]["Nome"].ToString();
                string cognome = dt2.Rows[0]["Cognome"].ToString();

                string IMG;
                string esterno;

                if (tipo == 'D') { esterno = "Docente"; }
                else { esterno = "Studente"; }

                string ext = dt2.Rows[0]["TipoImg"].ToString();

                DataRow dr2 = dt2.Rows[0];

                if (dt2.Rows[0]["Avatar"] != null)
                {

                    //byte[] img = (byte[])dt2.Rows[0]["Avatar"];
                    byte[] img = dr2.Field<byte[]>("Avatar");
                    if (img != null)
                    {
                        string base64String1 = Convert.ToBase64String(img, 0, img.Length);
                        string Src = "data:image/" + ext + ";base64," + base64String1;
                        IMG = "<img style='width:80px' src='" + Src + "' />";
                    }
                    else
                    {
                        IMG = "<img src=\"../img/team-1.jpg\" style=\"width:70px\" />";
                    }
                }
                else
                {
                    IMG = "<img src=\"../img/team-1.jpg\" style=\"width:70px\" />";
                }



                litChat.Text += "<tr><td>" + IMG + "</td>";
                litChat.Text += "<td>(" + esterno + ")<br /> " + nome + " " + cognome + " </td>";
                litChat.Text += "<td> Giorno:" + date.Substring(0, 10) + " <br /> Ore:" + date.Substring(10) + " </td>";
                litChat.Text += "<td> " + messaggio + " </td></tr>";

            }

            else
            {
                key = dr.Field<int>("Chiave");
                DataTable dt2 = C.SelectOneJoinUtenti(key);

                //recupero variabili
                string date = dt2.Rows[0]["Data_Post"].ToString();
                string messaggio = dt2.Rows[0]["Contenuto"].ToString();
                char tipo = char.Parse(dt2.Rows[0]["Tipo"].ToString());
                string nome = dt2.Rows[0]["Nome"].ToString();
                string cognome = dt2.Rows[0]["Cognome"].ToString();

                string IMG;
                string esterno = "esterno";

                if (tipo == 'T') { esterno = "Tutor"; }

                IMG = "<img src=\"../img/logo.png\" style=\"width:70px\" />";

                litChat.Text += "<tr><td>" + IMG + "</td>";
                litChat.Text += "<td>(" + esterno + ")<br /> " + nome + " " + cognome + " </td>";
                litChat.Text += "<td> Giorno:" + date.Substring(0, 10) + " <br /> Ore:" + date.Substring(10) + " </td>";
                litChat.Text += "<td> " + messaggio + " </td></tr>";
            }

            i++;
        }

    }

    protected void BtnCaricaAsc_Click(object sender, EventArgs e)
    {
        CaricaAsc();
    }

    protected void BtnCaricaDesc_Click(object sender, EventArgs e)
    {
        CaricaDesc();
    }
}