using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Test_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Test_WS : System.Web.Services.WebService
{

    public Test_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        TEST t = new TEST();
        dt = t.SelectAll();
        dt.TableName = "Test";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        TEST t = new TEST();
        t.CHIAVE = CHIAVE;
        dt = t.SelectAll();
        dt.TableName = "Test";
        return dt;
    }

    [WebMethod]
    public void Insert(int COD_CORSO, int SOGLIA, string DATA_TEST, string ORA_TEST)
    {
        TEST t = new TEST();

        t.COD_CORSO = COD_CORSO;
        t.SOGLIA = SOGLIA;
        t.DATA_TEST = DATA_TEST;
        t.ORA_TEST = ORA_TEST;

        t.Insert();
    }

    [WebMethod]
    public void Update(int CHIAVE, int COD_CORSO, int SOGLIA, string DATA_TEST, string ORA_TEST)
    {
        TEST t = new TEST();

        t.CHIAVE = CHIAVE;
        t.COD_CORSO = COD_CORSO;
        t.SOGLIA = SOGLIA;
        t.DATA_TEST = DATA_TEST;
        t.ORA_TEST = ORA_TEST;

        t.Update();
    }

    public void Delete(int CHIAVE)
    {
        TEST t = new TEST();

        t.CHIAVE = CHIAVE;

        t.Delete();
    }

    [WebMethod]
    public DataTable DomandeRisposte(int CHIAVE)
    {
        DataTable dt = new DataTable();
        TEST t = new TEST();
        t.CHIAVE = CHIAVE;
        dt = t.DomandeRisposte();
        dt.TableName = "Test";
        return dt;
    }

    //metodo che visualizza i test gia creati di un determinato corso
    [WebMethod]
    public DataTable Test_SelectCorso(int COD_CORSO)
    {
        TEST t = new TEST();
        t.COD_CORSO = COD_CORSO;

        DataTable dt = new DataTable();
        dt = t.Test_SelectCorso();
        dt.TableName = "Test";

        return dt;
    }

    [WebMethod]
    public DataTable SelectSoglia(int COD_CORSO)
    {
        DataTable dt = new DataTable();
        TEST t = new TEST();
        t.COD_CORSO = COD_CORSO;
        dt = t.Select_Soglia();
        dt.TableName = "Test";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOneByCorso(int CHIAVE)
    {
        DataTable dt = new DataTable();
        TEST t = new TEST();
        t.COD_CORSO = CHIAVE;
        dt = t.SelectOneByCorso();
        dt.TableName = "Test";
        return dt;
    }
}
