using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEstudenti_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CaricaMateriale();
    }

    //protected void btnTest_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Test_Studenti.aspx");
    //}

    protected void CaricaMateriale()
    {
        PROGRAMMI.Programmi_WSSoapClient p = new PROGRAMMI.Programmi_WSSoapClient();
        int CHIAVE = int.Parse(Session["Cod_Materia"].ToString());
        grigliaMateriale.DataSource = p.ProgrammiInfoMateria(CHIAVE);
        grigliaMateriale.DataBind();
    }

    protected void grigliaMateriale_SelectedIndexChanged(object sender, EventArgs e)
    {
        //controllo sulla colonna tipo
        string tipo = grigliaMateriale.SelectedRow.Cells[2].Text;
        //se LV o LF...
        if (tipo == "LV" || tipo == "LF")
        {
            string link = grigliaMateriale.SelectedRow.Cells[3].Text.ToString();
            Response.Redirect(link);
        }
        //...questo
        //altrimenti response al gestore
        else
        {
            string chiave = grigliaMateriale.SelectedDataKey[0].ToString();
            Response.Redirect("GestoreDownload.ashx?chiave=" + chiave);
        }
    }
}