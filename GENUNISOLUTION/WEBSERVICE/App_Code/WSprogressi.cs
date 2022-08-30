using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WSprogressi
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WSprogressi : System.Web.Services.WebService
{

    public WSprogressi()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        PROGRESSI p = new PROGRESSI();
        dt = p.SelectAll();
        dt.TableName = "Progressi";
        return dt;
    }

    [WebMethod]
    public void Insert(int COD_PROGRAMMA, int COD_STUDENTE, DateTime DATA_PROGRESSO)
    {
        PROGRESSI p = new PROGRESSI();
        p.COD_PROGRAMMA = COD_PROGRAMMA;
        p.COD_STUDENTE = COD_STUDENTE;
        p.DATA_PROGRESSO = DATA_PROGRESSO;

        p.Insert();
    }
    
    [WebMethod]
    public void Update(int CHIAVE, int COD_PROGRAMMA, int COD_STUDENTE, DateTime DATA_PROGRESSO)
    {
        PROGRESSI p = new PROGRESSI();
        p.CHIAVE = CHIAVE;
        p.COD_PROGRAMMA = COD_PROGRAMMA;
        p.COD_STUDENTE = COD_STUDENTE;
        p.DATA_PROGRESSO = DATA_PROGRESSO;

        p.Insert();
    }

}
