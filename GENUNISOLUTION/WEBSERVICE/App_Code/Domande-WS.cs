using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Domande_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Domande_WS : System.Web.Services.WebService
{

    public Domande_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        DOMANDE d = new DOMANDE();
        dt = d.SelectAll();
        dt.TableName = "Domande";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        DOMANDE d = new DOMANDE();
        d.CHIAVE = CHIAVE;
        dt = d.SelectOne();
        dt.TableName = "Domande";
        return dt;
    }

    [WebMethod]
    public void Insert(int COD_TEST, string DOMANDA, string RISPOSTA1, string RISPOSTA2, string RISPOSTA3, string VOTI)
    {
        DOMANDE d = new DOMANDE();
        d.COD_TEST = COD_TEST;
        d.DOMANDA = DOMANDA;
        d.RISPOSTA1 = RISPOSTA1;
        d.RISPOSTA2 = RISPOSTA2;
        d.RISPOSTA3 = RISPOSTA3;
        d.VOTI = VOTI;

        d.Insert();
    }

    [WebMethod]
    public void Update(int CHIAVE, int COD_TEST, string DOMANDA, string RISPOSTA1, string RISPOSTA2, string RISPOSTA3, string VOTI)
    {
        DOMANDE d = new DOMANDE();
        d.CHIAVE = CHIAVE;
        d.COD_TEST = COD_TEST;
        d.DOMANDA = DOMANDA;
        d.RISPOSTA1 = RISPOSTA1;
        d.RISPOSTA2 = RISPOSTA2;
        d.RISPOSTA3 = RISPOSTA3;
        d.VOTI = VOTI;

        d.Update();
    }

    [WebMethod]
    public void Delete(int CHIAVE)
    {
        DOMANDE d = new DOMANDE();
        d.CHIAVE = CHIAVE;

        d.Delete();
    }

    /// <summary>
    /// metodo che restituisce codice, domanda, risposte e voti in base a un codtest come parametro
    /// </summary>
    /// <param name="COD_TEST"></param>
    /// <returns></returns>
    [WebMethod]
    public DataTable DomandeSelectAllTest(int COD_TEST)
    {
        DOMANDE D = new DOMANDE();
        D.CHIAVE = COD_TEST;
        DataTable dt = D.DomandeSelectAllTest();
        dt.TableName = "Domande";
        return dt;
    }

    /// <summary>
    ///  metodo che restituisce tutte le domande di un parametro CodCorso
    /// </summary>
    /// <param name="COD_CORSO"></param>
    /// <returns></returns>
    [WebMethod]
    public DataTable DomandeSelectAllCorso(int COD_CORSO)
    {
        DOMANDE D = new DOMANDE();
        D.COD_CORSO = COD_CORSO;
        DataTable dt = D.DomandeSelectAllCorso();
        dt.TableName = "Domande";
        return dt;
    }

}
