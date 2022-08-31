using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
/// <summary>
/// Descrizione di riepilogo per UTENTI
/// </summary>

public class UTENTI
{
    public int Chiave;
    public char Tipo;
    public string Usr;
    public string Pwd;
    public string Cognome;
    public string Nome;
    public string Figura;
    public bool Abilitato;
    public UTENTI()
    {
        
    }
    #region CONTROLLI
    public bool Abilita()
    {
        SqlCommand cmd = new SqlCommand("UTENTI_Abilitato");
        cmd.Parameters.AddWithValue("@Chiave", Chiave);

        CONNESSIONE conn = new CONNESSIONE();
        DataTable dt = conn.EseguiSelect(cmd);

        return dt.Rows.Count > 0;
    }

    #endregion

    #region OPERAZIONI
    public void Insert()
    {
        SqlCommand cmd = new SqlCommand("UTENTI_Insert");
        cmd.Parameters.AddWithValue("@Usr", Usr);
        cmd.Parameters.AddWithValue("@Pwd", Pwd);
        cmd.Parameters.AddWithValue("@Cognome", Cognome);
        cmd.Parameters.AddWithValue("@Nome", Nome);
        cmd.Parameters.AddWithValue("@Figura", Figura);

        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }
    public void Update()
    {
        SqlCommand cmd = new SqlCommand("UTENTI_Update");
        cmd.Parameters.AddWithValue("@Tipo", Tipo);
        cmd.Parameters.AddWithValue("@Usr", Usr);
        cmd.Parameters.AddWithValue("@Pwd", Pwd);
        cmd.Parameters.AddWithValue("@Cognome", Cognome);
        cmd.Parameters.AddWithValue("@Nome", Nome);
        cmd.Parameters.AddWithValue("@Figura", Figura);
        cmd.Parameters.AddWithValue("@Abilitato", Abilitato);
        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }
    #endregion

    #region SELETTORI

    public DataTable SelectAll()
    {
        SqlCommand cmd = new SqlCommand("UTENTI_SelectAll");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }
    public DataTable SelectTutorContabili()
    {
        SqlCommand cmd = new SqlCommand("UTENTI_SelectTutorContabili");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    public DataTable SelectTutor()
    {
        SqlCommand cmd = new SqlCommand("UTENTI_SelectTutor");

        CONNESSIONE C = new CONNESSIONE();
        DataTable dt = C.EseguiSelect(cmd);

        return C.EseguiSelect(cmd);
    }
    #endregion
}