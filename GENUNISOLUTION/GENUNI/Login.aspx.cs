using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (IsPostBack == true)
        {

            // controlli formali
            if (string.IsNullOrEmpty(txtMail.Text.ToString()) || string.IsNullOrEmpty(txtPassword.Text.ToString()))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Attenzione: compilare tutti i campi!')", true);
                return;
            }

            UTENTI.Utenti_WSSoapClient U = new UTENTI.Utenti_WSSoapClient();
            CRYPTA.Crypta_WSSoapClient C = new CRYPTA.Crypta_WSSoapClient();

            string usr = txtMail.Text.Trim();

            string plaintext = txtPassword.Text.Trim(); // Attenzione alle password, quì vengono passate le password pulite

            string pwd = C.PWD_CRYPTA(plaintext); // E quì vengono cryptate, ergo, se volete provare a fare test con password pulite per un motivo o altro

            if (U.Login(usr, plaintext) == true) // Come overload usate "(usr, plaintext)" invece di "(usr, pwd)"
            {
                int CodiceAttore = U.RecuperaCodUtente(usr);
                Session["CodiceAttore"] = CodiceAttore; // Session del codice "utente"

                string tipo = U.TipoLogin(usr, plaintext);
                Session["TipoAttore"] = tipo; // Session del TIPO dell'utente

                char usertype = Convert.ToChar(Session["TipoAttore"]);

                if (U.Controlla_Abilitazione(CodiceAttore) == true)
                {
                    switch (usertype)
                    {
                        case 'A':
                            Response.Redirect("/BEAdmin/GestioneAdmin.aspx"); //Redirect per gli Admin
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

                if (E.Login(usr, plaintext) == true)
                {
                    int CodiceAttore = E.RecuperaCodEsterno(usr);
                    Session["CodiceAttore"] = CodiceAttore;

                    Session["TipoAttore"] = E.TipoLogin(usr, plaintext);
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
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('L'account non è attivo)", true);
                        return;
                    }
                }

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Password o email errati o autorizzazione all'accesso negata')", true);
                return;
            }
        }
    }
}
