using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registazione_conferma : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInvia_Click(object sender, EventArgs e)
    {
        //mi salvo in una variabile il codice random preso dalla pagina "registrazione" e istanzio un bool
        int CodiceConferma = int.Parse(Session["CodiceConferma"].ToString());

        string Tipo = Session["Tipo"].ToString();
        string usr = txtEmail.Text.Trim();
        string pwd = Session["Password"].ToString();
        string RagioneSociale = Session["RagioneSociale"].ToString();
        string Cognome = Session["Cognome"].ToString();
        string Nome = Session["Nome"].ToString();

        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

        if (txtCodice.Text == CodiceConferma.ToString())
        {
            if (E.CheckOne(Tipo, usr, pwd, RagioneSociale, Cognome, Nome) == true)
            {
                int Chiave = E.RecuperaCodEsterno(usr);

                E.AbilitaEsterno(Chiave);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Email errata')", true);
                return;
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Codice di conferma errato')", true);
            return;
        }

        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Registrazione effettuata con successo!')", true);
        Response.Redirect("/root/form/LOG/LOGIN/Login.aspx");

    }
}