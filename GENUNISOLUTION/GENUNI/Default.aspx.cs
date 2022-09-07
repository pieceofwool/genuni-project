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
        btnIscrivitiNews.Enabled = false;
    }

    protected void btnCandidati_Click(object sender, EventArgs e)
    {
        Session["IscrizioneComeDocente"] = 'D';

        Response.Redirect("Login.aspx" + "?status=1");
    }

    protected void btnIscrivitiNews_Click(object sender, EventArgs e)
    {
        btnIscrivitiNews.Enabled = false;

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

    protected void chbxPrivacy_CheckedChanged(object sender, EventArgs e)
    {
        if (chbxPrivacy.Checked == true)
        {
            btnIscrivitiNews.Enabled = true;
        }
    }
}