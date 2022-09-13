using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEStudenti_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int CHIAVE_CORSO = int.Parse(Session["CHIAVE_CORSO"].ToString());

        CaricaInfoCorso(CHIAVE_CORSO);
        CaricaMaterieCorso(CHIAVE_CORSO);
    }

    protected void CaricaInfoCorso(int CHIAVE_CORSO)
    {
        // recupero dati corso
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        DataRow CORSO = C.SelectOne(CHIAVE_CORSO).Rows[0];

        // stampo dati corso
        lblTitolo.Text = CORSO["Titolo"].ToString();
        lblTipo.Text = CORSO["Tipo"].ToString();
        lblDescrizione.Text = CORSO["Descrizione"].ToString();
        lblDataPartenza.Text = CORSO.Field<DateTime>("Data_Partenza").ToString("d");
        lblCosto.Text = CORSO["Costo"].ToString();

        byte[] arr = CORSO.Field<byte[]>("Avatar_Corso");
        string base64String = Convert.ToBase64String(arr, 0, arr.Length);
        string tipoImg = CORSO["Tipo_Img"].ToString();
        imgCorso.Src = $"data:{tipoImg};base64," + base64String;
    }

    protected void CaricaMaterieCorso(int CHIAVE_CORSO)
    {
        // Recupero dati materie
        MATERIE.Materie_WSSoapClient M = new MATERIE.Materie_WSSoapClient();
        DataTable MATERIE = M.MaterieInfoCorso(CHIAVE_CORSO);

        // Costruzione stringa info materie
        string s = "";
        foreach (DataRow m in MATERIE.Rows)
        {
            string titolo = m["Titolo"].ToString();
            string descrizione = m["Descrizione"].ToString();

            s += $"<h4>{titolo}</h4>";
            s += $"<p>{descrizione}</p>";
        }

        litMaterie.Text = s;
    }

    //protected void CaricaCorsiDisponibili()
    //{
    //    CORSI.Corsi_WSSoapClient c = new CORSI.Corsi_WSSoapClient();
    //    int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
    //    grigliaCorso.DataSource = c.NonComprati(CHIAVE);
    //    grigliaCorso.DataBind();
    //}


    //protected void grigliaCorso_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    Session["CHIAVE"] = grigliaCorso.SelectedDataKey[0];
    //}
}