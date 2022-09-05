using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Xml;

/// <summary>
/// Descrizione di riepilogo per Classi_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Classi_WS : System.Web.Services.WebService
{

    public Classi_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        CLASSI c = new CLASSI();
        dt = c.SelectAll();
        dt.TableName = "Classi";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        CLASSI c = new CLASSI();
        c.CHIAVE = CHIAVE;
        dt = c.SelectOne();
        dt.TableName = "Classi";
        return dt;
    }

    [WebMethod]
    public void Insert(int COD_CORSO, int COD_STUDENTE)
    {
        CLASSI c = new CLASSI();
        c.COD_CORSO = COD_CORSO;
        c.COD_STUDENTE = COD_STUDENTE;

        c.Insert();
    }

    [WebMethod]
    public void Update(int CHIAVE, int PUNTEGGIO_TEST)
    {
        CLASSI c = new CLASSI();
        c.CHIAVE = CHIAVE;
        c.PUNTEGGIO_TEST = PUNTEGGIO_TEST;

        c.Update();
    }

    //metodo che restituisce tutte le classi in cui e presente lo studente
    [WebMethod]
    public DataTable SelectAllStudenti(int COD_STUDENTE)
    {
        DataTable dt = new DataTable();
        CLASSI C = new CLASSI();
        C.COD_STUDENTE = COD_STUDENTE;
        dt = C.SelectAllStudente();
        dt.TableName = "Classi";
        return dt;
    }



}
