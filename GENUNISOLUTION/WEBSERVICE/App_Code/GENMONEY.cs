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
    public int Ammontare;

    #endregion Membri
    public GENMONEY()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }
    #region Metodi
    public void Insert()
    {
        SqlCommand cmd = new SqlCommand("GENMONEY_INSERT");
        cmd.Parameters.AddWithValue("@Cod_Studente", Cod_Studente);
        cmd.Parameters.AddWithValue("@Cod_Corso", Cod_Corso);
        cmd.Parameters.AddWithValue("@Ammontare", Ammontare);

        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiSPselectparam(cmd);
    }
    public DataTable Select()
    {
        SqlCommand cmd = new SqlCommand("GENMONEY_SELECTALL");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSPselectparam(cmd);
    }

    public DataTable SelectOne()
    {
        SqlCommand cmd = new SqlCommand("GENMONEY_SELECTONE");
        cmd.Parameters.AddWithValue("@Chiave", Chiave);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSPselectparam(cmd);
    }

    #endregion Metodi
}