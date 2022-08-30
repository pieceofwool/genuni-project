using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per CONTABILITA
/// </summary>
public static class CONTABILITA
{
    public static DataTable ListaSpese(string dataInizio, string dataFine)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_COSTI_DOCENTI");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);

        return new CONNESSIONE().EseguiSelect(cmd);
    }

    public static DataTable ListaRicavi(string dataInizio, string dataFine)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_RICAVI_GENMONEY");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);

        return new CONNESSIONE().EseguiSelect(cmd);
    }

    public static decimal SommaSpese(string dataInizio, string dataFine)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_SPESE_SOMMA");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);

        DataTable dt = new CONNESSIONE().EseguiSelect(cmd);
        return dt.Rows[0].Field<decimal>("Somma");
    }

    public static decimal SommaRicavi(string dataInizio, string dataFine)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_RICAVI_SOMMA");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);

        DataTable dt = new CONNESSIONE().EseguiSelect(cmd);
        return dt.Rows[0].Field<decimal>("Somma");
    }

    public static decimal Utili(string dataInizio, string dataFine)
    {
        return SommaRicavi(dataInizio, dataFine) - SommaSpese(dataInizio, dataFine);
    }
}