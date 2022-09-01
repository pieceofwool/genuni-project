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
    public void Delete(int CHIAVE)
    {
        ESTERNI e = new ESTERNI();
        e.CHIAVE = CHIAVE;

        e.Delete();
    }

    [WebMethod]
    public DataTable TipoLogin(string USR, string PWD)
    {
        DataTable dt = new DataTable();
        ESTERNI e = new ESTERNI();
        e.USR = USR;
        e.PWD = PWD;
        dt = e.TipoLogin();
        dt.TableName = "Esterni";
        return dt;
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
    public void UpdateProfilo(int CHIAVE, string USR, string RAGIONE_SOCIALE, string COGNOME, string NOME, string DATA_NASCITA, string PIVA, string CF, string INDIRIZZO, string CAP, string CITTA, string PROVINCIA, string NAZIONALITA, bool ABILITATO, byte[] AVATAR, string TIPOIMG)
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
    public void UpdatePassword(string USR, string PWD)
    {
        ESTERNI e = new ESTERNI();
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
    public bool Login(int CHIAVE)
    {
        DataTable dt = new DataTable();
        ESTERNI e = new ESTERNI();
        e.CHIAVE = CHIAVE;
        bool log = e.Login();
        dt.TableName = "Utenti";
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
        dt.TableName = "Utenti";
        return registrato;

    }
}
