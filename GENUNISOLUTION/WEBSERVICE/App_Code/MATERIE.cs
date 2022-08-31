using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per MATERIE
/// </summary>
public class MATERIE
{
    #region Membri

    public int Chiave;
    public int Cod_Corso;
    public int Cod_Docente;
    public int Costo_Docente;
    public string Titolo;
    public string Descrizione;
    public int Indice;
    public string Preparato;
    public string Accettato;
    public string Data_Risposta;

    #endregion Membri

    #region Metodi

    public void Insert()
    {
        SqlCommand cmd = new SqlCommand("MATERIE_INSERT");
        cmd.Parameters.AddWithValue("@Cod_Corso", Cod_Corso);
        cmd.Parameters.AddWithValue("@Cod_Docente", Cod_Docente);
        cmd.Parameters.AddWithValue("@Costo_Docente", Costo_Docente);
        cmd.Parameters.AddWithValue("@Titolo", Titolo);
        cmd.Parameters.AddWithValue("@Descrizione", Descrizione);
        cmd.Parameters.AddWithValue("@Indice", Indice);
        cmd.Parameters.AddWithValue("@Preparato", Preparato);
        cmd.Parameters.AddWithValue("@Accettato", Accettato);
        cmd.Parameters.AddWithValue("@Data_Risposta", Data_Risposta);


        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);

    }
    public void Update() {
        SqlCommand cmd = new SqlCommand("MATERIE_Update");
        cmd.Parameters.AddWithValue("@Chiave", Chiave);
        cmd.Parameters.AddWithValue("@Cod_Corso", Cod_Corso);
        cmd.Parameters.AddWithValue("@Cod_Docente", Cod_Docente);
        cmd.Parameters.AddWithValue("@Costo_Docente", Costo_Docente);
        cmd.Parameters.AddWithValue("@Titolo", Titolo);
        cmd.Parameters.AddWithValue("@Descrizione", Descrizione);
        cmd.Parameters.AddWithValue("@Indice", Indice);
        cmd.Parameters.AddWithValue("@Preparato", Preparato);
        cmd.Parameters.AddWithValue("@Accettato", Accettato);
        cmd.Parameters.AddWithValue("@Data_Risposta", Data_Risposta);


        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }
    public DataTable Info()
    {
        SqlCommand cmd = new SqlCommand("MATERIE_INFO");
        cmd.Parameters.AddWithValue("@Chiave", Chiave);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }


    #endregion


}