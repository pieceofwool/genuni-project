using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEDocenti_POPUP_inserimentoProgrammi_ModificaProgrammi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int CHIAVE = Convert.ToInt32(Session["CHIAVE"]);
        int COD_MATERIA = Convert.ToInt32(Session["COD_MATERIA"]);

        PROGRAMMI.Programmi_WSSoapClient P = new PROGRAMMI.Programmi_WSSoapClient();
        DataTable dt = new DataTable();
        dt= P.SelectOne(CHIAVE);


        ddlTipo.SelectedValue = dt.Rows[0][2].ToString();
        txtIndice.Text = dt.Rows[0][3].ToString();
        txtLink.Text = dt.Rows[0][4].ToString();
        txtTitolo.Text = dt.Rows[0][6].ToString();
        txtTipoMateriale.Text = dt.Rows[0][7].ToString();
        txtDescrizione.Text = dt.Rows[0][8].ToString();


    }
    public void ModificaProgrammi() {
    

        
        //int COD_MATERIA = Convert.ToInt32(Session["COD_MATERIA"]);
        //ddlTipo.Text = Session["TIPO"].ToString();
        //txtIndice.Text = Session["INDICE"].ToString();
        //txtLink.Text = Session["LINK"].ToString();
        //fupMateriale.FileBytes = Convert.ToByte(Session["LINK"]);
        //txtTitolo.Text = Session["TITOLO"].ToString();
        //txtDescrizione.Text = Session["DESCRIZIONE"].ToString();

        //int CHIAVE = Convert.ToInt32(Session["CHIAVE"]);
        //int COD_MATERIA = Convert.ToInt32(Session["COD_MATERIA"]);
        //string TIPO = Session["TIPO"].ToString();
        //int INDICE = Convert.ToInt32(Session["INDICE"]);
        //string LINK = Session["LINK"].ToString();
        //byte[] MATERIALE = Convert.ToByte(Session["LINK"]);
        //string TITOLO_MATERIALE = 
        //string DESCRIZIONE = 
            
        //Pr.Update(CHIAVE, COD_MATERIA, TIPO,  INDICE, LINK, MATERIALE, TITOLO_MATERIALE,  DESCRIZIONE)
    }

    protected void griglia_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Inserisco la descrizione della marca selezionata nel textbox
        //txtMarche.Text = griglia.SelectedRow.Cells[1].Text;
    }

    protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {

    }
}

