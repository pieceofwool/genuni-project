using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per PREISCRIZIONE
/// </summary>
public class PREISCRIZIONE
{

    #region Membri

    public int Chiave;
    public int Cod_Corso;
    public string Email;
    public string Newsletter;

    #endregion Membri

 

    #region Metodi
    public void Insert()
    {
        SqlCommand cmd = new SqlCommand("PREISCRIZIONE_INSERT");
        cmd.Parameters.AddWithValue("@Cod_Corso", Cod_Corso);
        cmd.Parameters.AddWithValue("@Email", Email);
        cmd.Parameters.AddWithValue("@Newsletter", Newsletter);

        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }
    public DataTable SelectAll()
    {
        SqlCommand cmd = new SqlCommand("PREISCRIZIONI_SELECTALL");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    public DataTable SelectOne()
    {
        SqlCommand cmd = new SqlCommand("PREISCRIZIONI_SELECTONE");
        cmd.Parameters.AddWithValue("@Chiave", Chiave);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    /// <summary>
    /// metodo che riporta il conto delle preiscrizioni ad un corso passato come parametro
    /// </summary>
    /// <returns></returns>
    public DataTable CountPreiscrizioniCorso()
    {
        SqlCommand cmd = new SqlCommand("PREISCRIZIONI_COUNT_CORSO");
        cmd.Parameters.AddWithValue("@Cod_Corso", Cod_Corso);
        CONNESSIONE C = new CONNESSIONE();
        return C.EseguiSelect(cmd);
    }

    #endregion Metodi

}
