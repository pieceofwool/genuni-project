using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInvia_Click(object sender, EventArgs e)
    {
        // controlli formali
        if (string.IsNullOrEmpty(txtMail.Text) || string.IsNullOrEmpty(txtPassword.Text))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Attenzione: compilare tutti i campi!')", true);
            return;
        }

        // occhio alla pass, è criptata!! se volete fare delle prove inserendo qualcosa a mano dal DB
        // togliete il CRYPTA a riga 27 e 33

        UTENTI.Utenti_WSSoapClient U = new UTENTI.Utenti_WSSoapClient();
        CRYPTA.Crypta_WSSoapClient C = new CRYPTA.Crypta_WSSoapClient();

        string usr = txtMail.Text.Trim();

        string plaintext = txtPassword.Text.Trim();

        string pwd = C.PWD_CRYPTA(plaintext);

        // se il login va a buon fine, reindirizzo alla pagina figlia "default.aspx
        // e mi salvo il tipoUtente nella session

        if (U.Login(usr, pwd) == true)
        {
            int CodiceUtente = U.RecuperaCodUtente(usr);
            Session["TipoAttore"] = U.TipoLogin(CodiceUtente);
            Session["CodiceAttore"] = CodiceUtente;

            char usertype = Convert.ToChar(Session["TipoAttore"]);

            char testpercontrollareilvalorediusertype = usertype; // usa un punto di stop per controllare il valore di usertype

            switch (usertype)
            {
                case 'A':
                    Response.Redirect("../BEAdmin/"); //Inserire le pagine principali di redirect 
                    break;

                case 'T':
                    Response.Redirect("../BETutor/"); //Inserire le pagine principali di redirect 
                    break;

                case 'C':
                    Response.Redirect("../BEContabilita/"); //Inserire le pagine principali di redirect 
                    break;

            }

        }

        else
        {


            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Password o email errati o autorizzazione all'accesso negata')", true);
            return;
        }
    }
}