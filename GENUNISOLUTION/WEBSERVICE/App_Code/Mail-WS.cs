using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for Mail_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Mail_WS : System.Web.Services.WebService
{

    public Mail_WS()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void mailInvia(string USR, string RndCodice)
    {
        MAIL M = new MAIL();

        M.mailUtente = USR;
        M.rndCodice = RndCodice;

        M.mailInvia();
    }
    
    [WebMethod]
    public void mailInvia_Docenti(string USR)
    {
        MAIL M = new MAIL();

        M.mailUtente = USR;

        M.mailInvia_Docenti();
    }

}
