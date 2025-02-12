﻿using System;
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
    public DataTable SelectTutorContabili()
    {
        DataTable dt = new DataTable();
        UTENTI u = new UTENTI();
        dt = u.SelectTutorContabili();
        dt.TableName = "Utenti";
        return dt;
    }

    [WebMethod]
    public DataTable SelectTutor()
    {
        DataTable dt = new DataTable();
        UTENTI u = new UTENTI();
        dt = u.SelectTutor();
        dt.TableName = "Utenti";
        return dt;
    }

    [WebMethod]
    public DataTable SelectStorico()
    {
        DataTable dt = new DataTable();
        UTENTI u = new UTENTI();
        dt = u.SelectStorico();
        dt.TableName = "Utenti";
        return dt;
    }

    [WebMethod]
    public bool Abilita(bool Abilitato, int Chiave)
    {
        UTENTI u = new UTENTI();
        u.Chiave = Chiave;
        u.Abilitato = Abilitato;
        bool abilitato = u.Abilita();
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
    public void Update(char Tipo, string Usr, string Pwd, string Cognome, string Nome, string Figura)
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

    [WebMethod]
    public bool Login(string USR, string PWD)
    {
        UTENTI u = new UTENTI();
        u.Usr = USR;
        u.Pwd = PWD;
        return u.Login();
    }

    [WebMethod]
    public string TipoLogin(string USR, string PWD)
    {
        UTENTI u = new UTENTI();
        u.Usr = USR;
        u.Pwd = PWD;
        string tipoLogin = u.TipoLogin();
        return tipoLogin;
    }

    [WebMethod]
    public string GetNome(int CHIAVE)
    {
        UTENTI U = new UTENTI();
        U.Chiave = CHIAVE;
        string Nome = U.GetNome();
        return Nome;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        UTENTI u = new UTENTI();
        u.Chiave = CHIAVE;
        dt = u.SelectOne();
        dt.TableName = "Esterni";
        return dt;
    }

    [WebMethod]
    public int RecuperaCodUtente(string USR)
    {
        UTENTI u = new UTENTI();
        u.Usr = USR;
        int codUtente = u.RecuperaCodUtente();
        return codUtente;
    }

    [WebMethod]
    public bool Controlla_Abilitazione(int COD_UTENTE)
    {
        UTENTI u = new UTENTI();
        u.Cod_Utente = COD_UTENTE;
        bool abilitato = u.Controlla_Abilitazione();
        return abilitato;

    }
}
