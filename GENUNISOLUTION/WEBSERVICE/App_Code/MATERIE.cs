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

    //metodo che inserisce il codice docente nella relativa materia
    public void InsertDocente()
    {
        SqlCommand cmd = new SqlCommand("MATERIE_INSERTDOCENTE");
        cmd.Parameters.AddWithValue("@Cod_Materia", Chiave); 
        cmd.Parameters.AddWithValue("@Cod_Docente", Cod_Docente);

        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }

    /// <summary>
    /// Risponde ad una offerta di materia
    /// </summary>
    /// <param name="risposta">true se accetta, false se rifiuta</param>
    public void Rispondi(bool risposta)
    {
        SqlCommand cmd = new SqlCommand("MATERIE_RISPONDI");
        cmd.Parameters.AddWithValue("@Cod_Materia", Chiave);
        cmd.Parameters.AddWithValue("@risposta", risposta);

        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }

    //metodo che seleziona materie e corsi di un determinato docente
    public DataTable SelectDocente()
    {
        SqlCommand cmd = new SqlCommand("MATERIE_SelectDocente");
        cmd.Parameters.AddWithValue("@Cod_Docente", Cod_Docente);

        CONNESSIONE conn = new CONNESSIONE();
        return conn.EseguiSelect(cmd);
    }

    //metodo che elenca le materie alle quali non e stato assegnato un docente
    public DataTable SelectNonAssegnate()
    {
        SqlCommand cmd = new SqlCommand("MATERIE_SELECTNONASSEGNATE");
        cmd.Parameters.AddWithValue("@Cod_Corso", Cod_Corso);

        CONNESSIONE conn = new CONNESSIONE();
        return conn.EseguiSelect(cmd);
    }

    /// <summary>
    /// Seleziona le materie non accettate del docente
    /// </summary>
    /// <returns></returns>
    public DataTable SelectDaRispondere()
    {
        SqlCommand cmd = new SqlCommand("MATERIE_DOCENTE_NON_ACCETTATE");
        cmd.Parameters.AddWithValue("@codDocente", Cod_Docente);

        CONNESSIONE conn = new CONNESSIONE();
        return conn.EseguiSelect(cmd);
    }

    /// <summary>
    /// Seleziona le materie per corso e docente
    /// </summary>
    /// <returns></returns>
    public DataTable SelectDocenteCorso()
    {
        SqlCommand cmd = new SqlCommand("MATERIE_DOCENTE_CORSO");
        cmd.Parameters.AddWithValue("@codDocente", Cod_Docente);
        cmd.Parameters.AddWithValue("@codCorso", Cod_Corso);

        CONNESSIONE conn = new CONNESSIONE();
        return conn.EseguiSelect(cmd);
    }

    #endregion


}