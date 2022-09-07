using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCandidati_Click(object sender, EventArgs e)
    {
        Session["IscrizioneComeDocente"] = 'D';

        Response.Redirect("Login.aspx" + "?status=1");
    }

    protected void btnIscrivitiNews_Click(object sender, EventArgs e)
    {
        if (chbxPrivacy.Checked == true)
        {
            if (string.IsNullOrEmpty(txtEmail.Text.ToString()) == true)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Inserire una mail valida')", true);
                return;
            }

            string email = txtEmail.Text.Trim().ToString();

            txtEmail.Text = "";

            NEWSLETTER.Newsletter_WSSoapClient N = new NEWSLETTER.Newsletter_WSSoapClient();
            MAIL.Mail_WSSoapClient M = new MAIL.Mail_WSSoapClient();

            N.NewsletterIscrivi(email);

            M.RingraziamentoNewsletter(email);

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Iscrizione alla Newsletter effettuata con successo!')", true);
            return;
        }

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Accettare Informativa sulla Privacy prima di preiscriversi')", true);
        return;

    }

    protected void RedirectSezioneContabile()
    {
        if (Session["CodiceAttore"] != null)
        {
            string usertype = Session["TipoAttore"].ToString();

            if (usertype == "S")
            {
                Response.Redirect("/BEStudenti/SituazioneContabile.aspx");
            }

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Solo gli studenti possono comprare GenMoney')", true);
            return;
        }

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Fai accesso prima di poter comprare GenMoney')", true);
        Response.Redirect("Login.aspx");
        return;
    }

    protected void btnGenMoney50_Click(object sender, EventArgs e)
    {
        RedirectSezioneContabile();
    }

    protected void btnGenMoney100_Click(object sender, EventArgs e)
    {
        RedirectSezioneContabile();
    }

    protected void btnGenMoney200_Click(object sender, EventArgs e)
    {
        RedirectSezioneContabile();
    }
}