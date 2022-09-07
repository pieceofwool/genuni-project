using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
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
            UTENTI.Utenti_WSSoapClient U = new UTENTI.Utenti_WSSoapClient();

            string Nome;

            try
            {
                string.IsNullOrEmpty((Nome = E.GetNome(Chiave)).ToString());
            }
            catch(FaultException)
            {
                Nome = U.GetNome(Chiave);
            }

            string usertype = Session["TipoAttore"].ToString();
            string[] greeting = { "Benvenuto, ", "Bentornato, ", "Ci si rivede! " };

            lnkLogin.Visible = false;
            litUserSpace.Visible = true;

            Random rnd = new Random();
            int dice = rnd.Next(0, 3);
            switch (usertype)
            {
                case "A":
                    litUserSpace.Text = "<li class=\"drop-down\"><a role=\"link\" aria-disabled=\"true\">" + greeting[dice] + Nome + "</a>";
                    litUserSpace.Text += "<ul>";
                    litUserSpace.Text += "<li><a href=\"BEAdmin/GestioneCorsi.aspx\">Area Riservata</a></li>";
                    litUserSpace.Text += "<li><a href=\"LogOut.aspx\">Logout</a></li>";
                    litUserSpace.Text += "</ul>";
                    litUserSpace.Text += "</li>";
                    break;

                case "T":
                    litUserSpace.Text = "<li class=\"drop-down\"><a role=\"link\" aria-disabled=\"true\">" + greeting[dice] + Nome + "</a>";
                    litUserSpace.Text += "<ul>";
                    litUserSpace.Text += "<li><a href=\"BETutor/GestioneTutor.aspx\">Area Riservata</a></li>";
                    litUserSpace.Text += "<li><a href=\"LogOut.aspx\">Logout</a></li>";
                    litUserSpace.Text += "</ul>";
                    litUserSpace.Text += "</li>";
                    break;

                case "C":
                    litUserSpace.Text = "<li class=\"drop-down\"><a role=\"link\" aria-disabled=\"true\">" + greeting[dice] + Nome + "</a>";
                    litUserSpace.Text += "<ul>";
                    litUserSpace.Text += "<li><a href=\"BEContabilita/Report.aspx\">Area Riservata</a></li>";
                    litUserSpace.Text += "<li><a href=\"LogOut.aspx\">Logout</a></li>";
                    litUserSpace.Text += "</ul>";
                    litUserSpace.Text += "</li>";
                    break;

                case "S":
                    litUserSpace.Text = "<li class=\"drop-down\"><a role=\"link\" aria-disabled=\"true\">" + greeting[dice] + Nome + "</a>";
                    litUserSpace.Text += "<ul>";
                    litUserSpace.Text += "<li><a href=\"BEStudenti/Modifica_Profilo.aspx\">Area Riservata</a></li>";
                    litUserSpace.Text += "<li><a href=\"LogOut.aspx\">Logout</a></li>";
                    litUserSpace.Text += "</ul>";
                    litUserSpace.Text += "</li>";
                    break;

                case "D":
                    litUserSpace.Text = "<li class=\"drop-down\"><a role=\"link\" aria-disabled=\"true\">" + greeting[dice] + Nome + "</a>";
                    litUserSpace.Text += "<ul>";
                    litUserSpace.Text += "<li><a href=\"BEDocenti/GestioneDocenti.aspx\">Area Riservata</a></li>";
                    litUserSpace.Text += "<li><a href=\"LogOut.aspx\">Logout</a></li>";
                    litUserSpace.Text += "</ul>";
                    litUserSpace.Text += "</li>";
                    break;
            }

        }
    }
}
