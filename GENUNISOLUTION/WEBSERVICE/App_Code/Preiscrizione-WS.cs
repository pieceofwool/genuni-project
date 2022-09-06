using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Preiscrizione_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Preiscrizione_WS : System.Web.Services.WebService
{

    public Preiscrizione_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        PREISCRIZIONE p = new PREISCRIZIONE();
        dt = p.SelectAll();
        dt.TableName = "Preiscrizione";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        PREISCRIZIONE p = new PREISCRIZIONE();
        p.Chiave = CHIAVE;
        dt = p.SelectOne();
        dt.TableName = "Classi";
        return dt;
    }

    [WebMethod]
    public void Insert(int COD_CORSO, string EMAIL, string NEWSLETTER)
    {
        DataTable dt = new DataTable();
        PREISCRIZIONE p = new PREISCRIZIONE();
        p.Cod_Corso = COD_CORSO;
        p.Email = EMAIL;
        p.Newsletter = NEWSLETTER;

        p.Insert();
    }

    /// <summary>
    ///  metodo che riporta il conto delle preiscrizioni ad un corso passato come parametro
    /// </summary>
    /// <param name="COD_CORSO"></param>
    /// <returns></returns>
    [WebMethod]
    public DataTable CountPreiscrizioniCorso(int COD_CORSO)
    {
        DataTable dt = new DataTable();
        PREISCRIZIONE P = new PREISCRIZIONE();
        P.Cod_Corso = COD_CORSO;
        dt = P.CountPreiscrizioniCorso();
        dt.TableName = "Preiscrizioni";
        return dt;
    }
}
