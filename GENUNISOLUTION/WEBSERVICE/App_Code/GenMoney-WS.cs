using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per GenMoney_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class GenMoney_WS : System.Web.Services.WebService
{

    public GenMoney_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        GENMONEY g = new GENMONEY();
        dt = g.Select();
        dt.TableName = "GenMoney";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        GENMONEY g = new GENMONEY();
        g.Chiave = CHIAVE;
        dt = g.SelectOne();
        dt.TableName = "GenMoney";
        return dt;
    }

    [WebMethod]
    public void Insert(int COD_STUDENTE, int COD_CORSO, int AMMONTARE)
    {
        GENMONEY g = new GENMONEY();
        g.Cod_Studente = COD_STUDENTE;
        g.Cod_Corso = COD_CORSO;
        g.Ammontare = AMMONTARE;

        g.Insert();
    }

}
