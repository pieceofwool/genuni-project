using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registrazione : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["IscrizioneComeDocente"] != null) 
        {
            ddlTipo.SelectedValue = "D";
            ddlTipo.DataBind();

            Session["IscrizioneComeDocenete"] = null;
        }
    }

    protected void btnRegistra_Click(object sender, EventArgs e)
    {
        //controlli formali
        if (string.IsNullOrEmpty(txtUsr.Text) || string.IsNullOrEmpty(txtPwd.Text) || string.IsNullOrEmpty(txtRagioneSociale.Text)
            || string.IsNullOrEmpty(txtNome.Text) || string.IsNullOrEmpty(txtCognome.Text) || string.IsNullOrEmpty(txtDataNascita.Text)
            || string.IsNullOrEmpty(txtPartitaIva.Text) || string.IsNullOrEmpty(txtCodiceFiscale.Text) || string.IsNullOrEmpty(txtIndirizzo.Text)
            || string.IsNullOrEmpty(txtCap.Text) || string.IsNullOrEmpty(txtCitta.Text) || string.IsNullOrEmpty(txtProvincia.Text)
            || string.IsNullOrEmpty(txtNazione.Text))
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Il form non è stato compilato.')", true);
            return;
        }

        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

        string Tipo = ddlTipo.SelectedValue.ToString();
        string usr = txtUsr.Text.Trim();

        CRYPTA.Crypta_WSSoapClient C = new CRYPTA.Crypta_WSSoapClient();
        string plaintext = txtPwd.Text.Trim(); // Attenzione alle password, quì vengono passate le password pulite
        string pwd = C.PWD_CRYPTA(plaintext); // E quì vengono cryptate, ergo, se volete provare a fare test con password pulite per un motivo o altro usate plaintext invece di pwd

        string RagioneSociale = txtRagioneSociale.Text.Trim();
        string Cognome = txtCognome.Text.Trim();
        string Nome = txtNome.Text.Trim();

        if (E.CheckOne(Tipo, usr, plaintext, RagioneSociale, Cognome, Nome) == true)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert(''Questo utente esiste già.')", true);
            return;
        }
        // textbox in variabili

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

        // controllo se l'utente non sia già registrato

        // salvo il codice di conferma generato casualmente
        Random rnd = new Random();
        string rndCodice = rnd.Next(100000, 999999).ToString();

        E.Insert(Tipo, usr, plaintext, RagioneSociale, Cognome, Nome, DataNascita, Piva, CF, Indirizzo, Cap, Citta, Provincia, Nazione, Abilitato, Avatar, TipoImg);

        // mando l'email di conferma
        MAIL.Mail_WSSoapClient M = new MAIL.Mail_WSSoapClient();


        M.mailInvia(usr, rndCodice);

        Session["Tipo"] = Tipo;
        Session["CodiceConferma"] = rndCodice;
        Session["Password"] = plaintext;
        Session["RagioneSociale"] = RagioneSociale;
        Session["Cognome"] = Cognome;
        Session["Nome"] = Nome;

        Response.Redirect("RegistrazioneConferma.aspx?rndCodice=" + rndCodice);

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Controlla il tuo indirizzo di posta elettronica per recuperare il tuo codice provvisorio!')", true);
        return;
    }
}