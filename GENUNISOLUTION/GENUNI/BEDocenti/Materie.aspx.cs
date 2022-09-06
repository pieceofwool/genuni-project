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

            CaricaCorso();
            CaricaMaterie();
        }
    }

    protected void CaricaMaterie()
    {
        MATERIE.Materie_WSSoapClient Ma = new MATERIE.Materie_WSSoapClient();
  
        int COD_CORSO = Convert.ToInt32(Session["COD_CORSO"]);
        int COD_DOCENTE = Convert.ToInt32(Session["COD_DOCENTE"]);
        Session["CHIAVE_CORSO"] = grvMaterie.SelectedDataKey[1];
        Session["COD_DOCENTE"] = grvMaterie.SelectedDataKey[2];

        grvMaterie.DataSource = Convert.ToInt32(Ma.SelectDocenteCorso(COD_CORSO, COD_DOCENTE)); 
        grvMaterie.DataBind();

    }

    protected void CaricaCorso()
    {
        CORSI.Corsi_WSSoapClient Co = new CORSI.Corsi_WSSoapClient();

        DataTable dt = Co.SelectOne(int.Parse(Session["CHIAVE_CORSO"].ToString()));

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
    }

    protected void grvMaterie_SelectedIndexChanged(object sender, EventArgs e)
    {
        PROGRAMMI.Programmi_WSSoapClient Pr = new PROGRAMMI.Programmi_WSSoapClient();
        Response.Redirect("PreparazioneMateriale.aspx");
        Session["Cod_Materia"] = grvMaterie.SelectedDataKey[0];
        Session["CHIAVE_PROGRAMMI"] = grvMaterie.SelectedDataKey[1];
    }
}