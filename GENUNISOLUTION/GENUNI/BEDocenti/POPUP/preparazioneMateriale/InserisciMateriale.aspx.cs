using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BEDocenti_POPUP_preparazioneMateriale_InserisciMateriale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    MATERIE.Materie_WSSoapClient Ma = new MATERIE.Materie_WSSoapClient();
    PROGRAMMI.Programmi_WSSoapClient Pr = new PROGRAMMI.Programmi_WSSoapClient();

    //DataTable dt = Ma.SelectOne(int.Parse(Session["Cod_Materia"].ToString()));


    protected void btnInserisciMateriale_Click(object sender, EventArgs e)
    {
        PROGRAMMI.Programmi_WSSoapClient Pr = new PROGRAMMI.Programmi_WSSoapClient();
        
        
       
    }


}