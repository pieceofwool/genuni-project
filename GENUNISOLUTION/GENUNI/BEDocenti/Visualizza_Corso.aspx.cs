using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BEDocenti_POPUP_Visualizza_corso_Visualizza_Corso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CORSI.Corsi_WSSoapClient Co = new CORSI.Corsi_WSSoapClient();
           // DataTable dt = Co.SelectOne(int.Parse(Session["CHIAVE_CORSO"].ToString()));
            DataTable dt = Co.SelectOne(11);

            ltlCodUtente.Text = dt.Rows[0]["COD_UTENTE"].ToString();
            ltlTitolo.Text = dt.Rows[0]["TITOLO"].ToString();
            ltlTipo.Text = dt.Rows[0]["TIPO"].ToString();
            ltlDescrizione.Text = dt.Rows[0]["DESCRIZIONE"].ToString();
            ltlStatusCorsi.Text = dt.Rows[0]["STATUS_CORSI"].ToString();
            ltlCosto.Text = dt.Rows[0]["COSTO"].ToString();
            ltlAvatarCorso.Text = dt.Rows[0]["AVATAR_CORSO"].ToString();
            //ltlTipoImg.Text = dt.Rows[0]["TIPO_IMG"].ToString();
            ltlDataPartenza.Text = dt.Rows[0]["DATA_PARTENZA"].ToString();
            ltlDataCreazione.Text = dt.Rows[0]["DATA_CREAZIONE"].ToString();
            ltlDataStatus.Text = dt.Rows[0]["DATA_STATUS"].ToString();
            ltlStatus.Text = dt.Rows[0]["Status_Corsi"].ToString();

            CaricaMateria();
        }
    }

    protected void CaricaMateria()
    {
        MATERIE.Materie_WSSoapClient Ma = new MATERIE.Materie_WSSoapClient();
        grvMaterie.DataSource = Ma.Info();
        grvMaterie.DataBind();
    }

    protected void grvMaterie_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}