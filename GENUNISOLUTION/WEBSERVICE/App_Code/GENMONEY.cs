using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per GENMONEY
/// </summary>
public class GENMONEY
{
    #region Membri

    public int Chiave;
    public int Cod_Studente;
    public int Cod_Corso;
    public int Costo;
    public int Ammontare;

    #endregion Membri
  
    #region Metodi
    public void Insert()
    {
        SqlCommand cmd = new SqlCommand("GENMONEY_INSERT");
        cmd.Parameters.AddWithValue("@Cod_Studente", Cod_Studente);
        cmd.Parameters.AddWithValue("@Cod_Corso", Cod_Corso);
        cmd.Parameters.AddWithValue("@Ammontare", Ammontare);

        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }

    public DataTable SelectAll()
    {
        SqlCommand cmd = new SqlCommand("GENMONEY_SELECTALL");
        CONNESSIONE c = new CONNESSIONE();

        return c.EseguiSelect(cmd);
    }

    public DataTable SelectOne()
    {
        SqlCommand cmd = new SqlCommand("GENMONEY_SELECTONE");
        cmd.Parameters.AddWithValue("@Chiave", Chiave);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    public DataTable Storico_Studente()
    {
        SqlCommand cmd = new SqlCommand("GENMONEY_STORICO_STUDENTE");

        cmd.Parameters.AddWithValue("@Cod_Studente", Cod_Studente);

        CONNESSIONE c = new CONNESSIONE();

        return c.EseguiSelect(cmd);
    }

    public void Studenti_Acquisto()
    {
        SqlCommand cmd = new SqlCommand("GENMONEY_STUDENTI_ACQUISTO");
        cmd.Parameters.AddWithValue("@Cod_Studente", Cod_Studente);
        cmd.Parameters.AddWithValue("@ammontare", Ammontare);

        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }

    public int SaldoStudente()
    {
        SqlCommand cmd = new SqlCommand("GENMONEY_COUNT_STUDENTE");
        cmd.Parameters.AddWithValue("@Cod_Studente", Cod_Studente);

        CONNESSIONE conn = new CONNESSIONE();
        return conn.EseguiSelect(cmd).Rows[0].Field<int>("Saldo");
    }

    public DataTable StoricoCorsi()
    {
        SqlCommand cmd = new SqlCommand("GENMONEY_STORICO_CORSI");
        cmd.Parameters.AddWithValue("@Cod_Studente", Cod_Studente);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }
    public DataTable StoricoRicariche()
    {
        SqlCommand cmd = new SqlCommand("GENMONEY_STORICO_RICARICHE");
        cmd.Parameters.AddWithValue("@Cod_Studente", Cod_Studente);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    #endregion Metodi
}