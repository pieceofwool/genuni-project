using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BETutor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string nomecorso = Session["nomecorso"].ToString();
        InserisciCorso.InnerText = "Chat del corso: " + nomecorso;

        CaricaDesc();
    }

    protected void CaricaAsc()
    {

        litChat.Text = "";

        int CHIAVE =Convert.ToInt32(Session["Chiave_Corso"]);

        // int CHIAVE = 1; // DEBUG
        CHAT.Chat_WSSoapClient C = new CHAT.Chat_WSSoapClient();
        DataTable dt = C.SelectChatCorso(CHIAVE);

        CaricaChat(dt);
    }
    protected void CaricaDesc()
    {
        litChat.Text = "";
        int CHIAVE = Convert.ToInt32(Session["Chiave_Corso"]);
        //int CHIAVE = Session["CodiceCorso"]
        //int CHIAVE = 1; // DEBUG
        CHAT.Chat_WSSoapClient C = new CHAT.Chat_WSSoapClient();
        DataTable dt = C.SelectChatCorsoDesc(CHIAVE);

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
                        IMG = "<img src=\"../../../img/team-1.jpg\" style=\"width:70px\" />";
                    }
                }
                else
                {
                    IMG = "<img src=\"../../../img/team-1.jpg\" style=\"width:70px\" />";
                }


                //riempo la literal


                litChat.Text += "<tr><td>" + IMG + "</td>";
                litChat.Text += "<td><b> " + nome + " " + cognome + " </b><br /><small>(" + esterno + ")</small></td>";
                litChat.Text += "<td><small> Il " + date.Substring(0, 10) + " <br /> alle" + date.Substring(10) + " </small></td>";
                litChat.Text += "<td><b> " + messaggio + " </b></td></tr>";




            }


            //se il campo cod_Interno non è nullo allora è un interno(admin o tutor)
            else
            {
                key = dr.Field<int>("Chiave");

                //chiamo un nuova datatable che contiene la select join con l'interno per avere le sue informazioni
                DataTable dt2 = C.SelectOneJoinUtenti(key);

                //recupero variabili
                string date = dt2.Rows[0]["Data_Post"].ToString();
                string messaggio = dt2.Rows[0]["Contenuto"].ToString();
                char tipo = char.Parse(dt2.Rows[0]["Tipo"].ToString());
                string nome = dt2.Rows[0]["Nome"].ToString();
                string cognome = dt2.Rows[0]["Cognome"].ToString();

                string IMG;
                string esterno = "Tutor";

                if (tipo == 'T') { esterno = "Tutor"; }
                if (tipo == 'A') { esterno = "Admin"; }

                IMG = "<img src=\"../../../img/logo.png\" style=\"width:70px\" />";

                litChat.Text += "<tr><td>" + IMG + "</td>";
                litChat.Text += "<td><b> " + nome + " " + cognome + " </b><br /><small>(" + esterno + ")</small></td>";
                litChat.Text += "<td><small> Il " + date.Substring(0, 10) + " <br /> alle" + date.Substring(10) + " </small></td>";
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

    protected void BtnRispondi_Click(object sender, EventArgs e)
    {
        CHAT.Chat_WSSoapClient C = new CHAT.Chat_WSSoapClient();

        int codiceCorso = Convert.ToInt32(Session["Chiave_Corso"]);
        //int codiceCorso = 1; //DEBUG, sostituire con Session

        int codiceInterno = int.Parse(Session["CodiceAttore"].ToString());
        string contenuto = txtRisposta.InnerText;

        C.InsertInterni(codiceCorso, codiceInterno, contenuto);

        CaricaDesc();

        txtRisposta.InnerText = null;
    }

    protected void BtnEsci_Click(object sender, EventArgs e)
    {
        int codiceCorso = Convert.ToInt32(Session["Chiave_Corso"]);
        string nomecorso = Session["nomecorso"].ToString();
        Response.Redirect("../../SITUAZIONE_CORSI/situazioneCorsi.aspx");
    }
}