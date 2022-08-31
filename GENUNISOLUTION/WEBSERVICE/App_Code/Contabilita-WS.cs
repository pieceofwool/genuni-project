using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Contabilita_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Contabilita_WS : System.Web.Services.WebService
{

    public Contabilita_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable ListaSpese(string DATAINIZIO, string DATAFINE)
    {
        DataTable dt = new DataTable();

        dt = CONTABILITA.ListaSpese(DATAINIZIO, DATAFINE);
        dt.TableName = "Lista spese";
        return dt;
    }

    [WebMethod]
    public DataTable ListaRicavi(string DATAINIZIO, string DATAFINE)
    {
        DataTable dt = new DataTable();

        dt = CONTABILITA.ListaRicavi(DATAINIZIO, DATAFINE);
        dt.TableName = "Lista ricavi";
        return dt;
    }

    [WebMethod]
    public decimal SommaSpese(string DATAINIZIO, string DATAFINE)
    {
        return CONTABILITA.SommaSpese(DATAINIZIO, DATAFINE);
    }

    [WebMethod]
    public decimal SommaRicavi(string DATAINIZIO, string DATAFINE)
    {
        return CONTABILITA.SommaRicavi(DATAINIZIO, DATAFINE);
    }

    [WebMethod]
    public decimal Utili(string DATAINIZIO, string DATAFINE)
    {
        return CONTABILITA.Utili(DATAINIZIO, DATAFINE);
    }

}
