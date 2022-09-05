using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for Newsletter_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Newsletter_WS : System.Web.Services.WebService
{


    public Newsletter_WS()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void NewsletterIscrivi(string email)
    {
        NEWSLETTER N = new NEWSLETTER();

        N.email = email;

        N.NewsletterIscrivi();
    }

}
