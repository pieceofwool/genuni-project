using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Corsi_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Corsi_WS : System.Web.Services.WebService
{

    public Corsi_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void Insert(int COD_UTENTE, string TITOLO, string TIPO, string DESCRIZIONE, byte[] AVATAR_CORSO, string DATA_PARTENZA, string TIPO_IMG)
    {
        CORSI c = new CORSI();
        c.COD_UTENTE = COD_UTENTE;
        c.TITOLO = TITOLO;
        c.TIPO = TIPO;
        c.DESCRIZIONE = DESCRIZIONE;
        c.AVATAR_CORSO = AVATAR_CORSO;
        c.DATA_PARTENZA = DATA_PARTENZA;
        c.TIPO_IMG = TIPO_IMG;

        c.Insert();
    }

    [WebMethod]
    public void Update(int COD_UTENTE, string DATA_CREAZIONE, string TITOLO, string TIPO, string DESCRIZIONE, byte[] AVATAR_CORSO, string DATA_PARTENZA, string STATUS, string TIPOIMG)
    {
        CORSI c = new CORSI();
        c.COD_UTENTE = COD_UTENTE;
        c.DATA_CREAZIONE = DATA_CREAZIONE;
        c.TITOLO = TITOLO;
        c.TIPO = TIPO;
        c.DESCRIZIONE = DESCRIZIONE;
        c.AVATAR_CORSO = AVATAR_CORSO;
        c.DATA_PARTENZA = DATA_PARTENZA;
        c.STATUS = STATUS;
        c.TIPO_IMG = TIPOIMG;

        c.Update();
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        dt = c.SelectAll();
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
    public DataTable SelectNonAssegnati()
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
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

    [WebMethod]
    public void UpdateTutor(int CHIAVE_CORSO, int CHIAVE_TUTOR)
    {
        CORSI c = new CORSI();
        c.CHIAVE_CORSO = CHIAVE_CORSO;
        c.CHIAVE_TUTOR = CHIAVE_TUTOR;

        c.UpdateTutor();
    }
    
    [WebMethod]
    public void Search(string TITOLO, string TIPO, string DESCRIZIONE)
    {
        CORSI c = new CORSI();
        c.TITOLO = TITOLO;
        c.TIPO = TIPO;
        c.DESCRIZIONE = DESCRIZIONE;

        c.Search();
    }

}
