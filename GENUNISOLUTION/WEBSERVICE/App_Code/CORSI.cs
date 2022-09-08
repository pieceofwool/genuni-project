using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per CORSI
/// </summary>
public class CORSI
{

    #region Membri

    public int CHIAVE;
    public int CHIAVE_CORSO;
    public int CHIAVE_TEST;
    public int CHIAVE_TUTOR;
    public int CHIAVE_STUDENTE;
    public int CHIAVE_UTENTE;
    public int CHIAVE_DOCENTE;
    public string TITOLO;
    public string TIPO;
    public string DESCRIZIONE;
    public string STATUS_CORSI;
    public int COSTO;
    public byte[] AVATAR_CORSO;
    public string TIPO_IMG;
    public string DATA_PARTENZA;
    public string DATA_CREAZIONE;
    public string DATA_STATUS;
    public string STATUS;

    #endregion Membri

    public CORSI()
    {


    }
    #region Metodi 

    public void Insert()
    {
        SqlCommand cmd = new SqlCommand("CORSI_Insert");

        cmd.Parameters.AddWithValue("@TITOLO", TITOLO);
        cmd.Parameters.AddWithValue("@TIPO", TIPO);
        cmd.Parameters.AddWithValue("@DESCRIZIONE", DESCRIZIONE);
        cmd.Parameters.AddWithValue("@AVATAR_CORSO", AVATAR_CORSO);
        cmd.Parameters.AddWithValue("@DATA_PARTENZA", DATA_PARTENZA);
        cmd.Parameters.AddWithValue("@TIPO_IMG", TIPO_IMG);

        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }
    public void Update()
    {
        SqlCommand cmd = new SqlCommand("CORSI_Update");
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);
        cmd.Parameters.AddWithValue("@TITOLO", TITOLO);
        cmd.Parameters.AddWithValue("@TIPO", TIPO);
        cmd.Parameters.AddWithValue("@DESCRIZIONE", DESCRIZIONE);
        cmd.Parameters.AddWithValue("@AVATAR_CORSO", AVATAR_CORSO);
        cmd.Parameters.AddWithValue("@DATA_PARTENZA", DATA_PARTENZA);
        cmd.Parameters.AddWithValue("@TIPO_IMG", TIPO_IMG);

        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }
    public DataTable SelectAll()
    {
        SqlCommand cmd = new SqlCommand("CORSI_SelectAll");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    public DataTable SelectOne()
    {
        SqlCommand cmd = new SqlCommand("CORSI_SelectOne");
        cmd.Parameters.AddWithValue("@COD_CORSO", CHIAVE_CORSO);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }
    public DataTable Info()
    {
        SqlCommand cmd = new SqlCommand("CORSI_Info");
        cmd.Parameters.AddWithValue("@COD_CORSO", CHIAVE_CORSO);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }
    public DataTable SelectNonAssegnati()
    {


        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand("CORSI_SelectNonAssegnati");
        DataTable dt = new DataTable();

        return c.EseguiSelect(cmd);
    }

    /// <summary>
    /// Seleziona tutti i corsi del docente con un certo stato di attività
    /// </summary>
    /// <param name="Cod_Docente">Il codice del docente</param>
    /// <param name="attivi">true se vuoi selezionare i corsi attivi, false per quelli inattivi</param>
    /// <returns></returns>
    public DataTable SelectByStatus(int Cod_Docente, bool attivi)
    {
        SqlCommand cmd = new SqlCommand("CORSI_SELECT_STATUS");
        cmd.Parameters.AddWithValue("codDocente", Cod_Docente);
        cmd.Parameters.AddWithValue("attivi", attivi);

        return new CONNESSIONE().EseguiSelect(cmd);
    }


    public DataTable SelectJoinMateria()
    {
        SqlCommand cmd = new SqlCommand("CORSI_JOIN_MATERIA");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    public DataTable TestRisultato()
    {
        SqlCommand cmd = new SqlCommand("CORSI_TEST_RISULTATO");
        cmd.Parameters.AddWithValue("@Chiave_Corso", CHIAVE_CORSO);
        cmd.Parameters.AddWithValue("@Chiave_Test", CHIAVE_TEST);
        cmd.Parameters.AddWithValue("@Chiave_Studente", CHIAVE_STUDENTE);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    public void UpdateTutor()
    {
        SqlCommand cmd = new SqlCommand("CORSI_UpdateTutor");

        cmd.Parameters.AddWithValue("@Chiave_Corso", CHIAVE_CORSO);
        cmd.Parameters.AddWithValue("@Cod_Tutor", CHIAVE_TUTOR);

        CONNESSIONE conn = new CONNESSIONE();

        conn.EseguiCmd(cmd);
    }

    public DataTable Search()
    {
        SqlCommand cmd = new SqlCommand("CORSI_SEARCH");
        cmd.Parameters.AddWithValue("@Titolo", TITOLO);
        cmd.Parameters.AddWithValue("@Tipo", TIPO);
        cmd.Parameters.AddWithValue("@Descrizione", DESCRIZIONE);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }
    public DataTable SelectAllDocenti()
    {
        SqlCommand cmd = new SqlCommand("CORSI_SELECTALL_DOCENTI");
        cmd.Parameters.AddWithValue("@Cod_Docente", CHIAVE_DOCENTE);
        cmd.Parameters.AddWithValue("@Cod_Corso", CHIAVE_CORSO);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    //metodo che permette al tutor di modificare il corso scelto
    public void UpdateForTutor()
    {
        SqlCommand cmd = new SqlCommand("CORSI_UpdateForTutor");
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE_TUTOR);
        cmd.Parameters.AddWithValue("@TITOLO", TITOLO);
        cmd.Parameters.AddWithValue("@TIPO", TIPO);
        cmd.Parameters.AddWithValue("@DESCRIZIONE", DESCRIZIONE);
        cmd.Parameters.AddWithValue("@AVATAR_CORSO", AVATAR_CORSO);
        cmd.Parameters.AddWithValue("@TIPO_IMG", TIPO_IMG);
        cmd.Parameters.AddWithValue("@DATA_PARTENZA", DATA_PARTENZA);

        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }

    public DataTable Utenti_SelectAll()
    {
        SqlCommand cmd = new SqlCommand("CORSI_UTENTI_SELECTALL");
        CONNESSIONE C = new CONNESSIONE();
        return C.EseguiSelect(cmd);
    }


    /// <summary>
    /// Seleziona tutti gli studenti di un corso e l' esito del loro test
    /// </summary>
    /// <returns></returns>
    public DataTable SituazioneStudenti()
    {
        SqlCommand cmd = new SqlCommand("CORSI_SITUAZIONE_STUDENTI");
        cmd.Parameters.AddWithValue("@codCorso", CHIAVE_CORSO);

        return new CONNESSIONE().EseguiSelect(cmd);
    }

    //metodo che riporta tutti i corsi che sono stati approvati
    public DataTable CorsiSelectApprovati()
    {
        SqlCommand cmd = new SqlCommand("CORSI_SELECTALL_APPROVATI");
        CONNESSIONE C = new CONNESSIONE();
        return C.EseguiSelect(cmd);
    }

    //metodo che riporta tutti i corsi che non sono ancora stati approvati
    public DataTable CorsiSelectNonApprovati()
    {
        SqlCommand cmd = new SqlCommand("CORSI_SELECTALL_NONAPPROVATI");
        CONNESSIONE C = new CONNESSIONE();
        return C.EseguiSelect(cmd);

    }

    public bool Check_Tutor_Abilitato()
    {
        SqlCommand cmd = new SqlCommand("CORSI_CHECK_TUTOR_ABILITATO");
        cmd.Parameters.AddWithValue("@COD_UTENTE", CHIAVE_UTENTE);

        CONNESSIONE conn = new CONNESSIONE();
        DataTable dt = conn.EseguiSelect(cmd);

        if (dt.Rows.Count == 0) return false;

        return true;
    }


    //metodo che riporta tutte le classi relative ad un determinato corso
    public DataTable Corsi_SelectAllClassi()
    {
        CONNESSIONE C = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "CORSI_SELECTALL_CLASSI";
        cmd.Parameters.AddWithValue("@CodiceCorso", CHIAVE);
        return C.EseguiSelect(cmd);
    }

    public DataTable SelectForTutor()
    {
        SqlCommand cmd = new SqlCommand("CORSI_SelectForTutor");
        cmd.Parameters.AddWithValue("@COD_TUTOR", CHIAVE_TUTOR);
        CONNESSIONE C = new CONNESSIONE();
        return C.EseguiSelect(cmd);
    }
    public DataTable Select_Utenti_Filtro_Q()
    {
        SqlCommand cmd = new SqlCommand("CORSI_UTENTI_FILTRO_Q");
        CONNESSIONE C = new CONNESSIONE();
        return C.EseguiSelect(cmd);
    }

    public void Update_Status()
    {
        SqlCommand cmd = new SqlCommand("CORSI_UPDATE_STATUS");

        cmd.Parameters.AddWithValue("@Cod_Corso", CHIAVE_CORSO);

        CONNESSIONE conn = new CONNESSIONE();

        conn.EseguiCmd(cmd);
    }
    public DataTable Utenti_SelectOne()
    {
        SqlCommand cmd = new SqlCommand("CORSI_UTENTI_SELECTONE");
        cmd.Parameters.AddWithValue("@COD_CORSO", CHIAVE_CORSO);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    /// <summary>
    /// metodo che restituisce tutti i corsi con status P
    /// </summary>
    /// <returns></returns>
    public DataTable SelectAllPreparati()
    {
        SqlCommand cmd = new SqlCommand("CORSI_SELECTALL_PREPARATI");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    /// <summary>
    /// metodo che modifica il corso aggiungendo status Q
    /// </summary>
    public void CorsiQuotazione()
    {
        SqlCommand cmd = new SqlCommand("CORSI_QUOTAZIONE");
        cmd.Parameters.AddWithValue("@Cod_Corso", CHIAVE);
        cmd.Parameters.AddWithValue("@Costo", COSTO);
        CONNESSIONE C = new CONNESSIONE();
        C.EseguiCmd(cmd);
    }

    /// <summary>
    /// Lista di tutti i corsi non comprati dallo studente
    /// </summary>
    /// <param name="COD_STUDENTE"></param>
    /// <returns></returns>
    public DataTable NonComprati(int COD_STUDENTE)
    {
        SqlCommand CMD = new SqlCommand("CORSI_SELECT_NON_COMPRATI");
        CMD.Parameters.AddWithValue("@COD_STUDENTE", COD_STUDENTE);

        return new CONNESSIONE().EseguiSelect(CMD);
    }

    /// <summary>
    /// metodo che restituisce tutti i corsi con status C creati dal parametro tutor
    /// </summary>
    /// <returns></returns>
    public DataTable CorsiCreati()
    {
        SqlCommand cmd = new SqlCommand("CORSI_SelectStautsC");
        cmd.Parameters.AddWithValue("@COD_TUTOR", CHIAVE_TUTOR);
        CONNESSIONE C = new CONNESSIONE();
        return C.EseguiSelect(cmd);
    }

    /// <summary>
    /// metodo che assegna status M a parametro COD_CORSO
    /// </summary>
    public void CorsoMateriaAssegnata()
    {
        SqlCommand cmd = new SqlCommand("CORSI_StatusM");
        cmd.Parameters.AddWithValue("@COD_CORSO", CHIAVE);
        CONNESSIONE C = new CONNESSIONE();
        C.EseguiCmd(cmd);
    }
    #endregion Metodi

}