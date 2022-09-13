using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FAQ_Studenti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        DataTable dt = new DataTable();

        int CodiceCorso = int.Parse(Session["Chiave"].ToString());

        dt = C.SelectOne(CodiceCorso);

        string NomeCorso = dt.Rows[0]["Titolo"].ToString();

        InserisciCorso.InnerText = "Chat del corso: " + NomeCorso;

        CaricaDesc();
    }

    protected void CaricaAsc()
    {

        litChat.Text = "";

        int CodiceCorso = int.Parse(Session["Chiave"].ToString());

        // int CHIAVE = 1; // DEBUG
        CHAT.Chat_WSSoapClient C = new CHAT.Chat_WSSoapClient();
        DataTable dt = C.SelectChatCorso(CodiceCorso);

        CaricaChat(dt);
    }

    protected void CaricaDesc()
    {
        litChat.Text = "";
        int CodiceCorso = int.Parse(Session["Chiave"].ToString());

        //int CHIAVE = Session["CodiceCorso"]
        //int CHIAVE = 1; // DEBUG

        CHAT.Chat_WSSoapClient C = new CHAT.Chat_WSSoapClient();
        DataTable dt = C.SelectChatCorsoDesc(CodiceCorso);

        CaricaChat(dt);
    }

    protected void CaricaChat(DataTable dt)
    {
        litChat.Text = "";
        CHAT.Chat_WSSoapClient C = new CHAT.Chat_WSSoapClient();

        if (dt.Rows.Count == 0)
        {
            // metto messaggio di riempimento nella lit se non esistono messaggi per quel corso
            litChat.Text = "Questa chat non ha ancora nessun messaggio.";
            return;
        }

        int i = 0;//lavoro con i per accedere alla dt in quanto dr mi richiede il cast e con null dà problemi
        int key = 0;
        foreach (DataRow dr in dt.Rows)
        {

            //se è un esterno faccio join con tabella esterni se no con la tabella utenti per recuperare i dati corretti

            //se il campo cod_Interno è nullo allora è uno esterno(studente o docente)
            if (string.IsNullOrEmpty(dt.Rows[i]["Cod_Interno"].ToString()))
            {
                // int cod_studente = (int)dt.Rows[i]["Cod_Studente"];

                //salvo la chiave della chat
                key = dr.Field<int>("Chiave");

                //chiamo un nuova datatable che contiene la select join con l'esterno per avere le sue informazioni
                DataTable dt2 = C.SelectOneJoinEsterni(key);

                if (dt2.Rows.Count == 0)
                {
                    //la join è fallita, evito di scrivere il messaggio di un esterno non più esistente
                    return;
                }

                //recupero variabili
                string date = dt2.Rows[0]["Data_Post"].ToString();
                DateTime Data = DateTime.Parse(date);
                string giorno = Data.ToString("d");
                string ora = Data.ToString("t");
                // string giorno = Data.Date.ToString().Substring(0, 10);
                //string ora = Data.TimeOfDay.ToString();

                string messaggio = dt2.Rows[0]["Contenuto"].ToString();
                char tipo = char.Parse(dt2.Rows[0]["Tipo"].ToString());
                string nome = dt2.Rows[0]["Nome"].ToString();
                string cognome = dt2.Rows[0]["Cognome"].ToString();

                string IMG;
                string esterno;

                if (tipo == 'D') { esterno = "Docente"; }
                else { esterno = "Studente"; }

                //estensione immagine
                string ext = dt2.Rows[0]["TipoImg"].ToString();

                //per accedere al varbinary meglio usare una datarow
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


                //riempo la literal


                litChat.Text += "<tr><td>" + IMG + "</td>";
                litChat.Text += "<td><b> " + nome + " " + cognome + " </b><br /><small>(" + esterno + ")</small></td>";
                // litChat.Text += "<td><small> Il " + date.Substring(0, 10) + " <br /> alle" + date.Substring(10) + " </small></td>";
                litChat.Text += "<td><small> Il " + giorno + " <br /> alle: " + ora + " </small></td>";
                litChat.Text += "<td><b> " + messaggio + " </b></td></tr>";




            }


            //se il campo cod_Interno non è nullo allora è un interno(admin o tutor)
            else
            {
                key = dr.Field<int>("Chiave");

                //chiamo un nuova datatable che contiene la select join con l'interno per avere le sue informazioni
                DataTable dt2 = C.SelectOneJoinUtenti(key);

                if (dt2.Rows.Count == 0)
                {
                    //la join è fallita, evito di scrivere il messaggio di un utente non più esistente
                    return;
                }

                //recupero variabili
                string date = dt2.Rows[0]["Data_Post"].ToString();
                DateTime Data = DateTime.Parse(date);
                string giorno = Data.ToString("d");
                string ora = Data.ToString("t");
                // string giorno = Data.Date.ToString().Substring(0, 10);
                // string ora = Data.TimeOfDay.ToString();

                string messaggio = dt2.Rows[0]["Contenuto"].ToString();
                char tipo = char.Parse(dt2.Rows[0]["Tipo"].ToString());
                string nome = dt2.Rows[0]["Nome"].ToString();
                string cognome = dt2.Rows[0]["Cognome"].ToString();

                string IMG;
                string esterno = "Tutor";

                if (tipo == 'T') { esterno = "Tutor"; }
                if (tipo == 'A') { esterno = "Admin"; }

                IMG = "<img src=\"../img/logo.png\" style=\"width:70px\" />";

                litChat.Text += "<tr><td>" + IMG + "</td>";
                litChat.Text += "<td><b> " + nome + " " + cognome + " </b><br /><small>(" + esterno + ")</small></td>";
                // litChat.Text += "<td><small> Il " + date.Substring(0, 10) + " <br /> alle" + date.Substring(10) + " </small></td>";
                litChat.Text += "<td><small> Il " + giorno + " <br /> alle: " + ora + " </small></td>";
                litChat.Text += "<td><b> " + messaggio + " </b></td></tr>";
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

    protected void BtnEsci_Click(object sender, EventArgs e)
    {
        int CodiceCorso = int.Parse(Session["Chiave"].ToString());

        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        DataTable dt = new DataTable();

        //int CodiceCorso = int.Parse(Session["Chiave"].ToString());

        dt = C.SelectOne(CodiceCorso);

        string NomeCorso = dt.Rows[0]["Titolo"].ToString();

        Response.Redirect("Corsi.aspx?codice=" + CodiceCorso + "&corso=" + NomeCorso + "");
    }

    protected void BtnRispondi_Click(object sender, EventArgs e)
    {
        CHAT.Chat_WSSoapClient C = new CHAT.Chat_WSSoapClient();

        int CodiceCorso = int.Parse(Session["Chiave"].ToString());
        //int codiceCorso = 1; //DEBUG, sostituire con Session

        int CodiceEsterno = int.Parse(Session["CodiceAttore"].ToString());
        //int codiceEsterno = 2; //DEBUG, sostituire con Session
        string contenuto = txtRisposta.InnerText;


        C.InsertEsterni(CodiceCorso, CodiceEsterno, contenuto);

        CaricaDesc();

        txtRisposta.InnerText = null;
    }
}