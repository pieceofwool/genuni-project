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

    public static DataTable ListaSpeseCorso(string dataInizio, string dataFine, int codCorso)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_COSTI_CORSO");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);
        cmd.Parameters.AddWithValue("@codCorso", codCorso);

        return new CONNESSIONE().EseguiSelect(cmd);
    }

    public static DataTable ListaSpeseTipoCorso(string dataInizio, string dataFine, string tipoCorso)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_COSTI_TIPO_CORSO");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);
        cmd.Parameters.AddWithValue("@tipoCorso", tipoCorso);

        return new CONNESSIONE().EseguiSelect(cmd);
    }

    public static DataTable ListaRicavi(string dataInizio, string dataFine)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_RICAVI_GENMONEY");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);

        return new CONNESSIONE().EseguiSelect(cmd);
    }

    public static DataTable ListaRicaviCorso(string dataInizio, string dataFine, int codCorso)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_RICAVI_CORSO");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);
        cmd.Parameters.AddWithValue("@codCorso", codCorso);

        return new CONNESSIONE().EseguiSelect(cmd);
    }

    public static DataTable ListaRicaviTipoCorso(string dataInizio, string dataFine, string tipoCorso)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_RICAVI_TIPO_CORSO");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);
        cmd.Parameters.AddWithValue("@tipoCorso", tipoCorso);

        return new CONNESSIONE().EseguiSelect(cmd);
    }

    public static decimal SommaSpese(string dataInizio, string dataFine)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_SPESE_SOMMA");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);

        DataTable dt = new CONNESSIONE().EseguiSelect(cmd);
        return dt.Rows[0].Field<decimal>("Spese");
    }

    public static decimal SommaSpeseCorso(string dataInizio, string dataFine, int codCorso)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_SPESE_SOMMA_CORSO");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);
        cmd.Parameters.AddWithValue("@codCorso", codCorso);

        DataTable dt = new CONNESSIONE().EseguiSelect(cmd);
        return dt.Rows[0].Field<decimal>("Spese");
    }

    public static decimal SommaSpeseTipoCorso(string dataInizio, string dataFine, string tipoCorso)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_SPESE_SOMMA_CORSO");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);
        cmd.Parameters.AddWithValue("@tipoCorso", tipoCorso);

        DataTable dt = new CONNESSIONE().EseguiSelect(cmd);
        return dt.Rows[0].Field<decimal>("Spese");
    }

    public static decimal SommaRicavi(string dataInizio, string dataFine)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_RICAVI_SOMMA");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);

        DataTable dt = new CONNESSIONE().EseguiSelect(cmd);
        return dt.Rows[0].Field<decimal>("Ricavi");
    }

    public static decimal SommaRicaviCorso(string dataInizio, string dataFine, int codCorso)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_RICAVI_SOMMA_CORSO");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);
        cmd.Parameters.AddWithValue("@codCorso", codCorso);

        DataTable dt = new CONNESSIONE().EseguiSelect(cmd);
        return dt.Rows[0].Field<decimal>("Ricavi");
    }

    public static decimal SommaRicaviTipoCorso(string dataInizio, string dataFine, string tipoCorso)
    {
        SqlCommand cmd = new SqlCommand("CONTABILITA_RICAVI_SOMMA_CORSO");
        cmd.Parameters.AddWithValue("@dataInizio", dataInizio);
        cmd.Parameters.AddWithValue("@dataFine", dataFine);
        cmd.Parameters.AddWithValue("@tipoCorso", tipoCorso);

        DataTable dt = new CONNESSIONE().EseguiSelect(cmd);
        return dt.Rows[0].Field<decimal>("Ricavi");
    }

    public static decimal Utili(string dataInizio, string dataFine)
    {
        return SommaRicavi(dataInizio, dataFine) - SommaSpese(dataInizio, dataFine);
    }

    public static decimal UtiliCorso(string dataInizio, string dataFine, int codCorso)
    {
        return SommaRicaviCorso(dataInizio, dataFine, codCorso) - SommaSpeseCorso(dataInizio, dataFine, codCorso);
    }

    public static decimal UtiliTipoCorso(string dataInizio, string dataFine, string tipoCorso)
    {
        return SommaRicaviTipoCorso(dataInizio, dataFine, tipoCorso) - SommaSpeseTipoCorso(dataInizio, dataFine, tipoCorso);
    }
}