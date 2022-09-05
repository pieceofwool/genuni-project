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
        DataTable dt = CONTABILITA.ListaSpese(DATAINIZIO, DATAFINE);
        dt.TableName = "Lista spese";
        return dt;
    }

    [WebMethod]
    public DataTable ListaSpeseCorso(string DATAINIZIO, string DATAFINE, int CODCORSO)
    {
        DataTable dt = CONTABILITA.ListaSpeseCorso(DATAINIZIO, DATAFINE, CODCORSO);
        dt.TableName = "Lista spese";
        return dt;
    }

    [WebMethod]
    public DataTable ListaSpeseTipoCorso(string DATAINIZIO, string DATAFINE, string TIPOCORSO)
    {
        DataTable dt = CONTABILITA.ListaSpeseTipoCorso(DATAINIZIO, DATAFINE, TIPOCORSO);
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
    public DataTable ListaRicaviCorso(string DATAINIZIO, string DATAFINE, int CODCORSO)
    {
        DataTable dt = CONTABILITA.ListaRicaviCorso(DATAINIZIO, DATAFINE, CODCORSO);
        dt.TableName = "Lista ricavi";
        return dt;
    }

    [WebMethod]
    public DataTable ListaRicaviTipoCorso(string DATAINIZIO, string DATAFINE, string TIPOCORSO)
    {
        DataTable dt = CONTABILITA.ListaRicaviTipoCorso(DATAINIZIO, DATAFINE, TIPOCORSO);
        dt.TableName = "Lista ricavi";
        return dt;
    }

    [WebMethod]
    public decimal SommaSpese(string DATAINIZIO, string DATAFINE)
    {
        return CONTABILITA.SommaSpese(DATAINIZIO, DATAFINE);
    }

    [WebMethod]
    public decimal SommaSpeseCorso(string DATAINIZIO, string DATAFINE, int CODCORSO)
    {
        return CONTABILITA.SommaSpeseCorso(DATAINIZIO, DATAFINE, CODCORSO);
    }

    [WebMethod]
    public decimal SommaSpeseTipoCorso(string DATAINIZIO, string DATAFINE, string TIPOCORSO)
    {
        return CONTABILITA.SommaSpeseTipoCorso(DATAINIZIO, DATAFINE, TIPOCORSO);
    }

    [WebMethod]
    public decimal SommaRicavi(string DATAINIZIO, string DATAFINE)
    {
        return CONTABILITA.SommaRicavi(DATAINIZIO, DATAFINE);
    }

    [WebMethod]
    public decimal SommaRicaviCorso(string DATAINIZIO, string DATAFINE, int CODCORSO)
    {
        return CONTABILITA.SommaRicaviCorso(DATAINIZIO, DATAFINE, CODCORSO);
    }

    [WebMethod]
    public decimal SommaRicaviTipoCorso(string DATAINIZIO, string DATAFINE, string TIPOCORSO)
    {
        return CONTABILITA.SommaRicaviTipoCorso(DATAINIZIO, DATAFINE, TIPOCORSO);
    }

    [WebMethod]
    public decimal Utili(string DATAINIZIO, string DATAFINE)
    {
        return CONTABILITA.Utili(DATAINIZIO, DATAFINE);
    }

    [WebMethod]
    public decimal UtiliCorso(string DATAINIZIO, string DATAFINE, int CODCORSO)
    {
        return CONTABILITA.UtiliCorso(DATAINIZIO, DATAFINE, CODCORSO);
    }

    [WebMethod]
    public decimal UtiliTipoCorso(string DATAINIZIO, string DATAFINE, string TIPOCORSO)
    {
        return CONTABILITA.UtiliTipoCorso(DATAINIZIO, DATAFINE, TIPOCORSO);
    }

    //metodo che riporta la lista dei costi per un singolo docente
    [WebMethod]
    public DataTable ListaSpeseDocenteSingolo(string DATAINIZIO, string DATAFINE, int CODICEDOCENTE)
    {
        DataTable dt = CONTABILITA.ListaSpeseDocenteSingolo(DATAINIZIO, DATAFINE, CODICEDOCENTE);
        dt.TableName = "Lista spese";
        return dt;
    }
}
