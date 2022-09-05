using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEDocenti_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CaricaChat()
    {
        //int CHIAVE = Session["CodiceCorso"]
        int CHIAVE = 1;
        CHAT.Chat_WSSoapClient C = new CHAT.Chat_WSSoapClient();
        DataTable dt = C.SelectCorso(CHIAVE);

    }
}