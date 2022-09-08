using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;


public partial class BETutor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MATERIE.Materie_WSSoapClient M = new MATERIE.Materie_WSSoapClient();
        DataTable dt = new DataTable();
        int COD_DOCENTE = int.Parse(Session["COD_DOCENTE"].ToString());
        dt = M.SelectDocente(COD_DOCENTE);
        gridCorsi.DataSource = dt;
        gridCorsi.DataBind();
    }

}