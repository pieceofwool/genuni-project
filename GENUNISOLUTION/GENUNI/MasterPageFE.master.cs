using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageFE : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CodiceAttore"] != null)
        {
            int Chiave = int.Parse(Session["CodiceAttore"].ToString());

            ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

            string Nome = E.GetNome(Chiave);
            string usertype = Session["TipoAttore"].ToString();
            string[] greeting = { "Benvenuto, ", "Bentornato, ", "Ci si rivede! " };

            lnkLogin.Visible = false;
            litUserSpace.Visible = true;

            Random rnd = new Random();
            int dice = rnd.Next(0, 3);
            if (usertype == "S")
            {
                litUserSpace.Text = "<li class=\"drop-down\"><a role=\"link\" aria-disabled=\"true\">" + greeting[dice] + Nome + "</a>";
                litUserSpace.Text += "<ul>";
                litUserSpace.Text += "<li><a href=\"BEStudenti/Modifica_Profilo.aspx\">Area Riservata</a></li>";
                litUserSpace.Text += "<li><a href=\"LogOut.aspx\">Logout</a></li>";
                litUserSpace.Text += "</ul>";
                litUserSpace.Text += "</li>";
            }

            else
            {
                litUserSpace.Text = "<li class=\"drop-down\"><a role=\"link\" aria-disabled=\"true\">" + greeting[dice] + Nome + "</a>";
                litUserSpace.Text += "<ul>";
                litUserSpace.Text += "<li><a href=\"BEDocenti/Modifica_Profilo.aspx\">Area Riservata</a></li>";
                litUserSpace.Text += "<li><a href=\"LogOut.aspx\">Logout</a></li>";
                litUserSpace.Text += "</ul>";
                litUserSpace.Text += "</li>";
            }
        }
    }
}
