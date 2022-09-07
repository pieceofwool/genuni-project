using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (rdbStudente.Checked == true) // Studente
        {
            NascondiDocenti();
        }

        if (Session["IscrizioneComeDocente"] != null)
        {
            rdbStudente.Checked = false;
            rdbDocente.Checked = true;

            MostraDocenti();

            Session["IscrizioneComeDocente"] = null;
        }
    }

    protected void rdbStudente_CheckedChanged(object sender, EventArgs e)
    {
        rdbDocente.Checked = false;

        NascondiDocenti();
    }

    protected void rdbDocente_CheckedChanged(object sender, EventArgs e)
    {
        rdbStudente.Checked = false;

        MostraDocenti();
    }

    protected void MostraDocenti()
    {
        txtRagioneSociale.Visible = true;
        txtPartitaIva.Visible = true;
        txtRagioneSociale.Enabled = true;
        txtPartitaIva.Enabled = true;
        litRagioneSociale.Visible = true;
        litPartitaIva.Visible = true;
    }

    protected void NascondiDocenti()
    {
        txtRagioneSociale.Visible = false;
        txtPartitaIva.Visible = false;
        txtRagioneSociale.Enabled = false;
        txtPartitaIva.Enabled = false;
        litRagioneSociale.Visible = false;
        litPartitaIva.Visible = false;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (IsPostBack == true)
        {

            // controlli formali
            if (string.IsNullOrEmpty(txtLogEmail.Text.ToString()) || string.IsNullOrEmpty(txtLogPwd.Text.ToString()))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Attenzione: compilare tutti i campi!')", true);
                return;
            }

            UTENTI.Utenti_WSSoapClient U = new UTENTI.Utenti_WSSoapClient();
            CRYPTA.Crypta_WSSoapClient C = new CRYPTA.Crypta_WSSoapClient();

            string usr = txtLogEmail.Text.Trim();

            string plaintext = txtLogPwd.Text.Trim(); // Attenzione alle password, quì vengono passate le password pulite

            string pwd = C.PWD_CRYPTA(plaintext); // E quì vengono cryptate, ergo, se volete provare a fare test con password pulite per un motivo o altro

            if (U.Login(usr, pwd) == true) // Come overload usate "(usr, plaintext)" invece di "(usr, pwd)"
            {
                int CodiceAttore = U.RecuperaCodUtente(usr);
                Session["CodiceAttore"] = CodiceAttore; // Session del codice "utente"

                string tipo = U.TipoLogin(usr, pwd);
                Session["TipoAttore"] = tipo; // Session del TIPO dell'utente

                char usertype = Convert.ToChar(Session["TipoAttore"]);

                if (U.Controlla_Abilitazione(CodiceAttore) == true)
                {
                    switch (usertype)
                    {
                        case 'A':
                            Response.Redirect("/BEAdmin/GestioneCorsi.aspx"); //Redirect per gli Admin
                            break;

                        case 'T':
                            Response.Redirect("/BETutor/GestioneTutor.aspx"); //Redirect per i Tutor
                            break;

                        case 'C':
                            Response.Redirect("/BEContabilita/Compenso.aspx"); //Redirect per i Contabili
                            break;
                    }
                }

                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('L'account non è attivo')", true);
                    return;
                }
            }

            else
            {
                ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

                if (E.Login(usr, pwd) == true)
                {
                    int CodiceAttore = E.RecuperaCodEsterno(usr);
                    Session["CodiceAttore"] = CodiceAttore;

                    Session["TipoAttore"] = E.TipoLogin(usr, pwd);
                    char usertype = Convert.ToChar(Session["TipoAttore"]);

                    if (E.Controlla_Abilitazione(CodiceAttore) == true)
                    {
                        switch (usertype)
                        {
                            case 'S':
                                Response.Redirect("/BEStudenti/Modifica_Profilo.aspx"); //Inserire le pagine principali di redirect 
                                break;

                            case 'D':
                                Response.Redirect("/BEDocenti/GestioneDocenti.aspx"); //Inserire le pagine principali di redirect 
                                break;
                        }
                    }

                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('L'account non è attivo, chiedere aiuto ad un'amministratore)", true);
                        return;
                    }
                }

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Password o email errati o autorizzazione all'accesso negata')", true);
                return;
            }
        }
    }

    protected void btnRegistra_Click(object sender, EventArgs e)
    {
        if (rdbDocente.Checked == true) //Se è un docente
        {

            if (string.IsNullOrEmpty(txtUsr.Text) || string.IsNullOrEmpty(txtPwd.Text) || string.IsNullOrEmpty(txtRagioneSociale.Text)
                || string.IsNullOrEmpty(txtNome.Text) || string.IsNullOrEmpty(txtCognome.Text) || string.IsNullOrEmpty(txtDataNascita.Text)
                || string.IsNullOrEmpty(txtPartitaIva.Text) || string.IsNullOrEmpty(txtCodiceFiscale.Text) || string.IsNullOrEmpty(txtIndirizzo.Text)
                || string.IsNullOrEmpty(txtCap.Text) || string.IsNullOrEmpty(txtCitta.Text) || string.IsNullOrEmpty(txtProvincia.Text)
                || string.IsNullOrEmpty(txtNazione.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Il form non è stato compilato.')", true);
                return;
            }

            ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

            string Tipo = "D";
            string usr = txtUsr.Text.Trim();
            if (E.ControlloDuplice(usr) == true) //ControlloDuplice (della mail) sarebbe a tutti gli effetti un checkone per controllare se la email dell'esterno esiste già, ma il nome "CheckOne"
                                                 //È già utilizzato per un'altro metodo in RegistrazioneConferma, non è un problema e non ha bisogno di fix, è solo un'appunto.
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Questo e-Mail è già in uso.')", true);
                return;
            }

            CRYPTA.Crypta_WSSoapClient C = new CRYPTA.Crypta_WSSoapClient();
            string plaintext = txtPwd.Text.Trim(); // Attenzione alle password, quì vengono passate le password pulite
            string pwd = C.PWD_CRYPTA(plaintext); // E quì vengono cryptate, ergo, se volete provare a fare test con password pulite per un motivo o altro usate plaintext invece di pwd

            string RagioneSociale = txtRagioneSociale.Text.Trim();
            string Cognome = txtCognome.Text.Trim();
            string Nome = txtNome.Text.Trim();
            string DataNascita = txtDataNascita.Text.Trim();
            string Piva = txtPartitaIva.Text.Trim();
            string CF = txtCodiceFiscale.Text.Trim();
            string Indirizzo = txtIndirizzo.Text.Trim();
            string Cap = txtCap.Text.Trim();
            string Citta = txtCitta.Text.Trim();
            string Provincia = txtProvincia.Text.Trim();
            string Nazione = txtNazione.Text.Trim();
            bool Abilitato = false;
            byte[] Avatar = File.ReadAllBytes(Server.MapPath(@"img\nopropic.jpg"));
            string TipoImg = "image/jpg";

            // salvo il codice di conferma generato casualmente
            Random rnd = new Random();
            string rndCodice = rnd.Next(100000, 999999).ToString();

            E.Insert(Tipo, usr, pwd, RagioneSociale, Cognome, Nome, DataNascita, Piva, CF, Indirizzo, Cap, Citta, Provincia, Nazione, Abilitato, Avatar, TipoImg);

            // mando l'email di conferma
            MAIL.Mail_WSSoapClient M = new MAIL.Mail_WSSoapClient();


            M.MailInviaIscrizioneDocente(usr, rndCodice);

            Session["Tipo"] = Tipo;
            Session["CodiceConferma"] = rndCodice;
            Session["Password"] = pwd;
            Session["RagioneSociale"] = RagioneSociale;
            Session["Cognome"] = Cognome;
            Session["Nome"] = Nome;

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Controlla il tuo indirizzo di posta elettronica per recuperare il tuo codice provvisorio!')", true);
            Response.Redirect("RegistrazioneConferma.aspx?rndCodice=" + rndCodice);

            return;
        }

        else // Se è uno studente
        {
            if (string.IsNullOrEmpty(txtUsr.Text) || string.IsNullOrEmpty(txtPwd.Text)
                            || string.IsNullOrEmpty(txtNome.Text) || string.IsNullOrEmpty(txtCognome.Text) || string.IsNullOrEmpty(txtDataNascita.Text)
                            || string.IsNullOrEmpty(txtCodiceFiscale.Text) || string.IsNullOrEmpty(txtIndirizzo.Text)
                            || string.IsNullOrEmpty(txtCap.Text) || string.IsNullOrEmpty(txtCitta.Text) || string.IsNullOrEmpty(txtProvincia.Text)
                            || string.IsNullOrEmpty(txtNazione.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Il form non è stato compilato.')", true);
                return;
            }

            string RagioneSociale = "";
            string Piva = "";

            ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

            string Tipo = "S";
            string usr = txtUsr.Text.Trim();

            if (E.ControlloDuplice(usr) == true) //ControlloDuplice (della mail) sarebbe a tutti gli effetti un checkone per controllare se la email dell'esterno esiste già, ma il nome "CheckOne"
                                                 //È già utilizzato per un'altro metodo in RegistrazioneConferma, non è un problema e non ha bisogno di fix, è solo un'appunto.
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Questa e-Mail è già in uso.')", true);
                return;
            }

            CRYPTA.Crypta_WSSoapClient C = new CRYPTA.Crypta_WSSoapClient();
            string plaintext = txtPwd.Text.Trim(); // Attenzione alle password, quì vengono passate le password pulite
            string pwd = C.PWD_CRYPTA(plaintext); // E quì vengono cryptate, ergo, se volete provare a fare test con password pulite per un motivo o altro usate plaintext invece di pwd

            string Cognome = txtCognome.Text.Trim();
            string Nome = txtNome.Text.Trim();
            string DataNascita = txtDataNascita.Text.Trim();
            string CF = txtCodiceFiscale.Text.Trim();
            string Indirizzo = txtIndirizzo.Text.Trim();
            string Cap = txtCap.Text.Trim();
            string Citta = txtCitta.Text.Trim();
            string Provincia = txtProvincia.Text.Trim();
            string Nazione = txtNazione.Text.Trim();
            bool Abilitato = false;
            byte[] Avatar = File.ReadAllBytes(Server.MapPath(@"img\nopropic.jpg"));
            string TipoImg = "image/jpg";

            // salvo il codice di conferma generato casualmente
            Random rnd = new Random();
            string rndCodice = rnd.Next(100000, 999999).ToString();

            E.Insert(Tipo, usr, pwd, RagioneSociale, Cognome, Nome, DataNascita, Piva, CF, Indirizzo, Cap, Citta, Provincia, Nazione, Abilitato, Avatar, TipoImg);

            // mando l'email di conferma
            MAIL.Mail_WSSoapClient M = new MAIL.Mail_WSSoapClient();

            M.MailInviaIscrizioneStudente(usr, rndCodice);

            Session["Tipo"] = Tipo;
            Session["CodiceConferma"] = rndCodice;
            Session["Password"] = pwd;
            Session["RagioneSociale"] = RagioneSociale;
            Session["Cognome"] = Cognome;
            Session["Nome"] = Nome;

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Controlla il tuo indirizzo di posta elettronica per recuperare il tuo codice provvisorio!')", true);
            Response.Redirect("RegistrazioneConferma.aspx?rndCodice=" + rndCodice);

            return;
        }
    }
}