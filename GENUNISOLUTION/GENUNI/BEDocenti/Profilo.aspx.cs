using System;
using System.Data;
using System.Web.UI;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //Se non vi è nessun elemento selezionato impedisco il proseguimento
            //if (string.IsNullOrEmpty(Session["CodiceAttore"].ToString()))
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Errore')", true);
            //    return;
            //}

            CaricaProfilo();

        }
    }
    protected void BtnAggiorna_Click(object sender, EventArgs e)
    {

        CaricaProfilo();

    }

    protected void CaricaProfilo()
    {
        Lit2.Text = "";

        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();
        int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
        //int CHIAVE = 1;
        
        DataTable dt = new DataTable();
        dt.TableName = "Esterni";
        dt = E.SelectOne(CHIAVE);
        DataRow dr = dt.Rows[0];
        string tipo = dt.Rows[0]["TipoImg"].ToString();


        //string prova = dt.Rows[0]["Avatar"].ToString();
        //byte[] provaarray = (byte[])dt.Rows[0]["Avatar"];

        byte[] arr1 = dr.Field<byte[]>("Avatar");
        //byte[] arr1 = (byte[])dt.Rows[0]["Avatar"];
        if (arr1 != null)
        {
            string base64String1 = Convert.ToBase64String(arr1, 0, arr1.Length);
            string Src = "data:image/" + tipo + ";base64," + base64String1;
            lit.Text = "<img style='width:200px' src='" + Src + "' />";
        }

        //riempo le label
        lblUser.Text = dt.Rows[0]["Usr"].ToString();
        lblRagSoc.Text = dt.Rows[0]["Ragione_Sociale"].ToString();
        lblCognome.Text = dt.Rows[0]["Cognome"].ToString();
        lblNome.Text = dt.Rows[0]["Nome"].ToString();
        lblDataNascita.Text = (dt.Rows[0]["Data_Nascita"].ToString()).Substring(0, 10);
        lblIva.Text = dt.Rows[0]["Piva"].ToString();
        lblCF.Text = dt.Rows[0]["CF"].ToString();
        lblIndirizzo.Text = dt.Rows[0]["Indirizzo"].ToString();
        lblCap.Text = dt.Rows[0]["Cap"].ToString();
        lblCitta.Text = dt.Rows[0]["Citta"].ToString();
        lblProvincia.Text = dt.Rows[0]["Provincia"].ToString();
        lblNazionalita.Text = dt.Rows[0]["Nazionalita"].ToString();

        //carica competenze
        COMPETENZE.Competenze_WSSoapClient C = new COMPETENZE.Competenze_WSSoapClient();

        DataTable dt2 = C.SelectAllDocente(CHIAVE);

        lblSkills.Text = dt2.Rows[0]["Skills"].ToString();


    }

    protected void BtnCV_Click(object sender, EventArgs e)
    {
        COMPETENZE.Competenze_WSSoapClient C = new COMPETENZE.Competenze_WSSoapClient(); ;
        //int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
        int CHIAVE = 1;

        DataTable dt2 = C.SelectAllDocente(CHIAVE);


        DataRow dr2 = dt2.Rows[0];
        byte[] CV = dr2.Field<byte[]>("Cv");


        if (CV != null)
        {

           
            string embed = "<object data=\"{0}{1}\" type=\"application/pdf\" width=\"800px\" height=\"700px\">";
            embed += "If you are unable to view file, you can download from <a href = \"{0}{1}&download=1\">here</a>";
            embed += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
            embed += "</object>";
            Lit2.Text = string.Format(embed, ResolveUrl("GestoreCvPdf.ashx?chiave="), CHIAVE /*valore chiave*/);
            
        }
        
       

    }
}
