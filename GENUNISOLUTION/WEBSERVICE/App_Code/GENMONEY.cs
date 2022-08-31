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
    public void AggiornaSaldo()
    {
        SqlCommand cmd = new SqlCommand("GENMONEY_AggiornaSaldo");
        cmd.Parameters.AddWithValue("@Cod_Studente", Cod_Studente);
        cmd.Parameters.AddWithValue("@cod_corso", Cod_Corso);
        cmd.Parameters.AddWithValue("@costo", Costo);
        cmd.Parameters.AddWithValue("@ammontare", Ammontare);

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

    #endregion Metodi
}