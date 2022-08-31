using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEDocenti_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    // Se non vi è nessun elemento selezionato impedisco il proseguimento
        //    if (string.IsNullOrEmpty(Session["CodiceDoc"].ToString()))
        //    {
        //        ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Errore')", true);
        //        return;
        //    }

        //    [WebMethod]

        //    ESTERNI E = new ESTERNI();
        //    E.CodiceDoc = int.Parse(Session["CodiceDoc"].ToString());
        //    DataTable dt = E.SelectOne();

        //    string tipo = dt.Rows[0]["TipoImg"].ToString();

        //    byte[] arr1 = dt.Field<byte[]>("Avatar");
        //    string base64String1 = Convert.ToBase64String(arr1, 0, arr1.Length);
        //    string Src = "data:image/" + tipo + ";base64," + base64String1;

        //    lit.Text += "<img style='width:200px' src='" + Src + "' />";

        //    lblUser.Text = dt.Rows[0]["Usr"].ToString();
        //    lblRagSoc.Text = dt.Rows[0]["Ragione_Sociale"].ToString();
        //    lblCognome.Text = dt.Rows[0]["Cognome"].ToString();
        //    lblNome.Text = dt.Rows[0]["Nome"].ToString();
        //    lblDataNascita.Text = dt.Rows[0]["Data_Nascita"].ToString();
        //    lblIva.Text = dt.Rows[0]["Piva"].ToString();
        //    lblCF.Text = dt.Rows[0]["CF"].ToString();
        //    lblIndirizzo.Text = dt.Rows[0]["Indirizzo"].ToString();
        //    lblCap.Text = dt.Rows[0]["Cap"].ToString();
        //    lblCitta.Text = dt.Rows[0]["Citta"].ToString();
        //    lblProvincia.Text = dt.Rows[0]["Provincia"].ToString();
        //    lblNazionalita.Text = dt.Rows[0]["Nazionalita"].ToString();


        //[WebMethod]

        //    COMPETENZE C = new COMPETENZE();
        //    C.CodiceDoc = int.Parse(Session["CodiceDoc"].ToString());
        //DataTable dt2 = E.SelectOne();

        //lblSkills.Text= dt2.Rows[0]["Skills"].ToString();
    }

    protected void BtnAggiorna_Click(object sender, EventArgs e)
    {

    }
}