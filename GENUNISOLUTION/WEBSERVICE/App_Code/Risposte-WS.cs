using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Risposte_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Risposte_WS : System.Web.Services.WebService
{

    public Risposte_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        RISPOSTE r = new RISPOSTE();
        dt = r.SelectAll();
        dt.TableName = "Risposte";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        RISPOSTE r = new RISPOSTE();
        r.CHIAVE = CHIAVE;
        dt = r.SelectAll();
        dt.TableName = "Risposte";
        return dt;
    }

    [WebMethod]
    public void Insert(int COD_STUDENTE, string COD_TEST, string RISPOSTA)
    {
        RISPOSTE r = new RISPOSTE();
        r.COD_STUDENTE = COD_STUDENTE;
        r.COD_TEST = COD_TEST;
        r.RISPOSTA = RISPOSTA;

        r.Insert();
    }

}
