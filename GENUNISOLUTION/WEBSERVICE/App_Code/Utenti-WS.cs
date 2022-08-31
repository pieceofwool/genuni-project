using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Utenti_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Utenti_WS : System.Web.Services.WebService
{

    public Utenti_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        UTENTI u = new UTENTI();
        dt = u.SelectAll();
        dt.TableName = "Utenti";
        return dt;
    }

    [WebMethod]
    public DataTable SelectTutor()
    {
        DataTable dt = new DataTable();
        UTENTI u = new UTENTI();
        dt = u.SelectAll();
        dt.TableName = "Utenti";
        return dt;
    }
    
    [WebMethod]
    public bool Abilita(int Chiave)
    {
        DataTable dt = new DataTable();
        UTENTI u = new UTENTI();
        u.Chiave = Chiave;
        bool abilitato = u.Abilita();
        dt.TableName = "Utenti";
        return abilitato;
    }

    [WebMethod]
    public bool AbilitaTutor(int Chiave)
    {
        DataTable dt = new DataTable();
        UTENTI u = new UTENTI();
        u.Chiave = Chiave;
        bool abilitato = u.AbilitaTutor();
        dt.TableName = "Utenti";
        return abilitato;
    }

    [WebMethod]
    public void Insert(string Usr, string Pwd, string Cognome, string Nome, string Figura)
    {
        UTENTI t = new UTENTI();

        t.Usr = Usr;
        t.Pwd = Pwd;
        t.Cognome = Cognome;
        t.Nome = Nome;
        t.Figura = Figura;

        t.Insert();
    }
    
    [WebMethod]
    public void Update (char Tipo, string Usr, string Pwd, string Cognome, string Nome, string Figura)
    {
        UTENTI t = new UTENTI();

        t.Tipo = Tipo;
        t.Usr = Usr;
        t.Pwd = Pwd;
        t.Cognome = Cognome;
        t.Nome = Nome;
        t.Figura = Figura;

        t.Update();
    }
}
