using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tipologieCorsii : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        litCorso.Text = " < div class=\"col - md - 6 col - lg - 4 wow bounceInUp\" data-wow-duration=\"1.4s\">";
        litCorso.Text += "< div class=\"box\">";
        litCorso.Text += "< div class=\"icon\" style=\"background: #fceef3;\"><i class=\"ion-ios-analytics-outline\" style=\"color: #ff689b;\"></i></div>";
        litCorso.Text += "< h4 class=\"title\"><a href = \"#\" > Lorem Ipsum</a></h4>";
        litCorso.Text += "< p class=\"description\">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p></div></div>";
       


    }
}