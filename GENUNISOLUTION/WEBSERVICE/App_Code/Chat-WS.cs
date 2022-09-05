using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Chat_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Chat_WS : System.Web.Services.WebService
{

    public Chat_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        CHAT c = new CHAT();
        dt = c.SelectAll();
        dt.TableName = "Chat";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        CHAT c = new CHAT();
        c.CHIAVE = CHIAVE;
        dt = c.SelectOne();
        dt.TableName = "Chat";
        return dt;
    }

    [WebMethod]
    public DataTable SelectChatCorso(int CHIAVE)
    {
        DataTable dt = new DataTable();
        CHAT c = new CHAT();
        c.COD_CORSO = CHIAVE;
        dt = c.SelectChatCorso();
        dt.TableName = "Chat";
        return dt;
    }

    [WebMethod]
    public DataTable SelectChatCorsoDesc(int CHIAVE)
    {
        DataTable dt = new DataTable();
        CHAT c = new CHAT();
        c.COD_CORSO = CHIAVE;
        dt = c.SelectChatCorsoDesc();
        dt.TableName = "Chat";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOneJoinEsterni(int CHIAVE)
    {
        DataTable dt = new DataTable();
        CHAT c = new CHAT();
        c.CHIAVE = CHIAVE;
        dt = c.SelectOneJoinEsterni();
        dt.TableName = "Chat";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOneJoinUtenti(int CHIAVE)
    {
        DataTable dt = new DataTable();
        CHAT c = new CHAT();
        c.CHIAVE = CHIAVE;
        dt = c.SelectOneJoinUtenti();
        dt.TableName = "Chat";
        return dt;
    }

    [WebMethod]
    public void Insert(int COD_CORSO, int COD_STUDENTE, int COD_INTERNO, string CONTENUTO)
    {
        CHAT c = new CHAT();
        c.COD_CORSO = COD_CORSO;
        c.COD_STUDENTE = COD_STUDENTE;
        c.COD_INTERNO = COD_INTERNO;
        c.CONTENUTO = CONTENUTO;

        c.Insert();
    }

    [WebMethod]
    public void InsertEsterni(int COD_CORSO, int COD_STUDENTE, string CONTENUTO)
    {
        CHAT c = new CHAT();
        c.COD_CORSO = COD_CORSO;
        c.COD_STUDENTE = COD_STUDENTE;
        c.CONTENUTO = CONTENUTO;

        c.InsertEsterni();
    }

}
