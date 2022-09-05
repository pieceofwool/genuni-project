using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Esterni_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Esterni_WS : System.Web.Services.WebService
{

    public Esterni_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        ESTERNI e = new ESTERNI();
        dt = e.SelectAll();
        dt.TableName = "Esterni";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        ESTERNI e = new ESTERNI();
        e.CHIAVE = CHIAVE;
        dt = e.SelectOne();
        dt.TableName = "Esterni";
        return dt;
    }
    
    [WebMethod]
    public DataTable SelectOne_Profilo_Studenti(int CHIAVE)
    {
        DataTable dt = new DataTable();
        ESTERNI e = new ESTERNI();
        e.CHIAVE = CHIAVE;
        dt = e.SelectOne_Profilo_Studenti();
        dt.TableName = "Esterni";
        return dt;
    }

    [WebMethod]
    public void Insert(string TIPO, string USR, string PWD, string RAGIONE_SOCIALE, string COGNOME, string NOME, string DATA_NASCITA, string PIVA, string CF, string INDIRIZZO, string CAP, string CITTA, string PROVINCIA, string NAZIONALITA, bool ABILITATO, byte[] AVATAR, string TIPOIMG)
    {
        ESTERNI e = new ESTERNI();
        e.TIPO = TIPO;
        e.USR = USR;
        e.PWD = PWD;
        e.RAGIONE_SOCIALE = RAGIONE_SOCIALE;
        e.COGNOME = COGNOME;
        e.NOME = NOME;
        e.DATA_NASCITA = DATA_NASCITA;
        e.PIVA = PIVA;
        e.CF = CF;
        e.INDIRIZZO = INDIRIZZO;
        e.CAP = CAP;
        e.CITTA = CITTA;
        e.PROVINCIA = PROVINCIA;
        e.NAZIONALITA = NAZIONALITA;
        e.ABILITATO = ABILITATO;
        e.AVATAR = AVATAR;
        e.TIPOIMG = TIPOIMG;

        e.Insert();
    }

    [WebMethod]
    public void Update(int CHIAVE, string TIPO, string USR, string PWD, string RAGIONE_SOCIALE, string COGNOME, string NOME, string DATA_NASCITA, string PIVA, string CF, string INDIRIZZO, string CAP, string CITTA, string PROVINCIA, string NAZIONALITA, bool ABILITATO, byte[] AVATAR, string TIPOIMG)
    {
        ESTERNI e = new ESTERNI();
        e.CHIAVE = CHIAVE;
        e.TIPO = TIPO;
        e.USR = USR;
        e.PWD = PWD;
        e.RAGIONE_SOCIALE = RAGIONE_SOCIALE;
        e.COGNOME = COGNOME;
        e.NOME = NOME;
        e.DATA_NASCITA = DATA_NASCITA;
        e.PIVA = PIVA;
        e.CF = CF;
        e.INDIRIZZO = INDIRIZZO;
        e.CAP = CAP;
        e.CITTA = CITTA;
        e.PROVINCIA = PROVINCIA;
        e.NAZIONALITA = NAZIONALITA;
        e.ABILITATO = ABILITATO;
        e.AVATAR = AVATAR;
        e.TIPOIMG = TIPOIMG;

        e.Update();
    }

    [WebMethod]
    public bool CheckOne(string TIPO, string USR, string PWD, string RAGIONE_SOCIALE, string COGNOME, string NOME)
    {
        ESTERNI e = new ESTERNI();
        e.TIPO = TIPO;
        e.USR = USR;
        e.PWD = PWD;
        e.RAGIONE_SOCIALE = RAGIONE_SOCIALE;
        e.COGNOME = COGNOME;
        e.NOME = NOME;

        return e.CheckOne();
    }

    [WebMethod]
    public void AbilitaEsterno(int Chiave)
    {
        ESTERNI e = new ESTERNI();
        e.CHIAVE = Chiave;

        e.AbilitaEsterno();
    }

    [WebMethod]
    public void Delete(int CHIAVE)
    {
        ESTERNI e = new ESTERNI();
        e.CHIAVE = CHIAVE;

        e.Delete();
    }

    [WebMethod]
    public string TipoLogin(string USR, string PWD)
    {
        ESTERNI e = new ESTERNI();
        e.USR = USR;
        e.PWD = PWD;
        string tipoLogin = e.TipoLogin();
        return tipoLogin;
    }

    [WebMethod]
    public string GetNome(int Chiave)
    {
        ESTERNI e = new ESTERNI();
        e.CHIAVE = Chiave;
        string NomeEsterno = e.GetNome();
        return NomeEsterno;
    }

    [WebMethod]
    public void UpdateAvatar(int CHIAVE, byte[] AVATAR, string TIPOIMG)
    {
        ESTERNI e = new ESTERNI();
        e.CHIAVE = CHIAVE;
        e.AVATAR = AVATAR;
        e.TIPOIMG = TIPOIMG;

        e.UpdateAvatar();
    }

    [WebMethod]
    public void UpdateProfilo(int CHIAVE, string USR, string RAGIONE_SOCIALE, string COGNOME, string NOME, string DATA_NASCITA, string PIVA, string CF, string INDIRIZZO, string CAP, string CITTA, string PROVINCIA, string NAZIONALITA)
    {
        ESTERNI e = new ESTERNI();
        e.CHIAVE = CHIAVE;
        e.USR = USR;
        e.RAGIONE_SOCIALE = RAGIONE_SOCIALE;
        e.COGNOME = COGNOME;
        e.NOME = NOME;
        e.DATA_NASCITA = DATA_NASCITA;
        e.PIVA = PIVA;
        e.CF = CF;
        e.INDIRIZZO = INDIRIZZO;
        e.CAP = CAP;
        e.CITTA = CITTA;
        e.PROVINCIA = PROVINCIA;
        e.NAZIONALITA = NAZIONALITA;

        e.UpdateProfilo();
    }

    [WebMethod]
    public void UpdatePassword(int CHIAVE, string USR, string PWD)
    {
        ESTERNI e = new ESTERNI();
        e.CHIAVE = CHIAVE;
        e.USR = USR;
        e.PWD = PWD;

        e.UpdatePassword();
    }

    [WebMethod]
    public DataTable InfoCorso(string USR)
    {
        DataTable dt = new DataTable();
        ESTERNI e = new ESTERNI();
        e.USR = USR;
        dt = e.InfoCorso();
        dt.TableName = "Esterni";
        return dt;
    }
    
    [WebMethod]
    public DataTable InfoDocente(string USR)
    {
        DataTable dt = new DataTable();
        ESTERNI e = new ESTERNI();
        e.USR = USR;
        dt = e.InfoDocente();
        dt.TableName = "Esterni";
        return dt;
    }

    [WebMethod]
    public bool Login(string USR, string PWD)
    {
        DataTable dt = new DataTable();
        ESTERNI e = new ESTERNI();
        e.USR = USR;
        e.PWD = PWD;
        bool log = e.Login();
        dt.TableName = "Esterni";
        return log;

    }

    [WebMethod]
    public DataTable CorsiFrequentati(int CHIAVE)
    {
        DataTable dt = new DataTable();
        ESTERNI e = new ESTERNI();
        e.CHIAVE = CHIAVE;
        dt = e.CorsiFrequentati();
        dt.TableName = "Esterni";
        return dt;
    }

    [WebMethod]
    public bool Registrato(int CHIAVE)
    {
        DataTable dt = new DataTable();
        ESTERNI e = new ESTERNI();
        e.CHIAVE = CHIAVE;
        bool registrato = e.Registrato();
        dt.TableName = "Esterni";
        return registrato;

    }

    //metodo che restituisce una tabella con dati docente in base al suo codice
    [WebMethod]
    public DataTable ESTERNI_DOCENTI_InfoCodice(int COD_DOCENTE)
    {
        DataTable dt = new DataTable();
        ESTERNI E = new ESTERNI();

        E.CHIAVE = COD_DOCENTE;
        dt = E.ESTERNI_DOCENTI_InfoCodice();
        dt.TableName = "Docenti";

        return dt;
    }

    [WebMethod]
    public int RecuperaCodEsterno(string USR)
    {
        ESTERNI e = new ESTERNI();
        e.USR = USR;
        int codUtente = e.RecuperaCodEsterno();
        return codUtente;
    }

    /// <summary>
    /// Il totale guadagnato dal docente
    /// </summary>
    /// <param name="COD_DOCENTE"></param>
    /// <returns></returns>
    [WebMethod]
    public decimal Guadagni(int COD_DOCENTE)
    {
        ESTERNI E = new ESTERNI();
        E.CHIAVE = COD_DOCENTE;

        return E.Guadagni();
    }

    /// <summary>
    /// Docenti con le competenze
    /// </summary>
    /// <returns></returns>
    [WebMethod]
    public DataTable SelectCompetenze()
    {
        DataTable dt = new ESTERNI().SelectCompetenze();
        dt.TableName = "Docenti";
        return dt;
    }

    [WebMethod]
    public bool Controlla_Abilitazione(int COD_UTENTE)
    {
        ESTERNI e = new ESTERNI();
        e.COD_UTENTE = COD_UTENTE;
        bool abilitato = e.Controlla_Abilitatazione();
        return abilitato;

    }

    [WebMethod]
    public void Update_Profilo_Studenti(int CHIAVE, string NOME, string COGNOME, string CITTA, string INDIRIZZO, string PROVINCIA, string NAZIONALITA)
    {
        ESTERNI e = new ESTERNI();
        e.CHIAVE = CHIAVE;
        e.NOME = NOME;
        e.COGNOME = COGNOME;
        e.CITTA = CITTA;
        e.INDIRIZZO = INDIRIZZO;
        e.PROVINCIA = PROVINCIA;
        e.NAZIONALITA = NAZIONALITA;

        e.Update_Profilo_Studenti();
    }

    //metodo che seleziona tutti i docenti da ESTERNI
    [WebMethod]
    public DataTable SelectAll_Docenti()
    {
        ESTERNI E = new ESTERNI();
        DataTable dt = new DataTable();

        dt = E.SelectAll_Docenti();
        dt.TableName = "Docenti";
        return dt;
    }
}
