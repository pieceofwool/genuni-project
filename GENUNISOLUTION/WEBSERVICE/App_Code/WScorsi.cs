using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WScorsi
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WScorsi : System.Web.Services.WebService
{

    public WScorsi()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void Insert(string TITOLO)
    {
        CORSI c = new CORSI();
        c.TITOLO = TITOLO;

        c.Insert();
    }

    [WebMethod]
    public void Update(int COD_UTENTE, string TITOLO, string TIPO, string DESCRIZIONE, string AVATARCORSO, string TIPOIMG)
    {
        CORSI c = new CORSI();
        c.COD_UTENTE = COD_UTENTE;
        c.TITOLO = TITOLO;
        c.TIPO = TIPO;
        c.DESCRIZIONE = DESCRIZIONE;
        c.AVATAR_CORSO = AVATARCORSO;
        c.TIPO_IMG = TIPOIMG;

        c.Update();
    }

    [WebMethod]
    public DataTable Select()
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        dt = c.Select();
        dt.TableName = "Corsi";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        c.CHIAVE_CORSO = CHIAVE;
        dt = c.SelectOne();
        dt.TableName = "Corso";
        return dt;
    }

    [WebMethod]
    public DataTable Info(int CHIAVE)
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        c.CHIAVE_CORSO = CHIAVE;
        dt = c.Info();
        dt.TableName = "Corso";
        return dt;
    }

    [WebMethod]
    public DataTable SelectNonAssegnati(int CHIAVE, string TITOLO, int CODUTENTE)
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        c.CHIAVE_CORSO = CHIAVE;
        c.TITOLO = TITOLO;
        c.COD_UTENTE = CODUTENTE;
        dt = c.SelectNonAssegnati();
        dt.TableName = "Corsi";
        return dt;
    }

    [WebMethod]
    public DataTable TestRisultato(int CHIAVECORSO, int CHIAVETEST, int CHIAVESTUDENTE)
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        c.CHIAVE_CORSO = CHIAVECORSO;
        c.CHIAVE_TEST = CHIAVETEST;
        c.CHIAVE_STUDENTE = CHIAVESTUDENTE;
        dt = c.TestRisultato();
        dt.TableName = "Risultato";
        return dt;
    }
}
