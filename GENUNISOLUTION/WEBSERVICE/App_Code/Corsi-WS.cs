using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.EnterpriseServices;
using System.Linq;
using System.ServiceModel.Configuration;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Corsi_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Corsi_WS : System.Web.Services.WebService
{

    public Corsi_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void Insert(string TITOLO, string TIPO, string DESCRIZIONE, byte[] AVATAR_CORSO, string DATA_PARTENZA, string TIPO_IMG)
    {
        CORSI c = new CORSI();
        c.TITOLO = TITOLO;
        c.TIPO = TIPO;
        c.DESCRIZIONE = DESCRIZIONE;
        c.AVATAR_CORSO = AVATAR_CORSO;
        c.DATA_PARTENZA = DATA_PARTENZA;
        c.TIPO_IMG = TIPO_IMG;

        c.Insert();
    }

    [WebMethod]
    public void Update(int CHIAVE, string TITOLO, string TIPO, string DESCRIZIONE, byte[] AVATAR_CORSO, string DATA_PARTENZA, string TIPOIMG)
    {
        CORSI c = new CORSI();
        c.CHIAVE = CHIAVE;
        c.TITOLO = TITOLO;
        c.TIPO = TIPO;
        c.DESCRIZIONE = DESCRIZIONE;
        c.AVATAR_CORSO = AVATAR_CORSO;
        c.DATA_PARTENZA = DATA_PARTENZA;
        c.TIPO_IMG = TIPOIMG;

        c.Update();
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        dt = c.SelectAll();
        dt.TableName = "Corsi";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        c.CHIAVE_CORSO = CHIAVE;
        dt = c.SelectOne();
        dt.TableName = "Corso";
        return dt;
    }

    [WebMethod]
    public DataTable Info(int CHIAVE)
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        c.CHIAVE_CORSO = CHIAVE;
        dt = c.Info();
        dt.TableName = "Corso";
        return dt;
    }

    [WebMethod]
    public DataTable SelectNonAssegnati()
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        dt = c.SelectNonAssegnati();
        dt.TableName = "Corsi";
        return dt;
    }


    [WebMethod]
    public DataTable SelectJoinMateria()
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        dt = c.SelectJoinMateria();
        dt.TableName = "Corsi";
        return dt;
    }

    [WebMethod]
    public DataTable TestRisultato(int CHIAVECORSO, int CHIAVETEST, int CHIAVESTUDENTE)
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        c.CHIAVE_CORSO = CHIAVECORSO;
        c.CHIAVE_TEST = CHIAVETEST;
        c.CHIAVE_STUDENTE = CHIAVESTUDENTE;
        dt = c.TestRisultato();
        dt.TableName = "Risultato";
        return dt;
    }

    [WebMethod]
    public void UpdateTutor(int CHIAVE_CORSO, int CHIAVE_TUTOR)
    {
        CORSI c = new CORSI();
        c.CHIAVE_CORSO = CHIAVE_CORSO;
        c.CHIAVE_TUTOR = CHIAVE_TUTOR;

        c.UpdateTutor();
    }

    [WebMethod]
    public void Search(string TITOLO, string TIPO, string DESCRIZIONE)
    {
        CORSI c = new CORSI();
        c.TITOLO = TITOLO;
        c.TIPO = TIPO;
        c.DESCRIZIONE = DESCRIZIONE;

        c.Search();
    }

    [WebMethod]
    public DataTable SelectAllDocenti(int CHIAVE_DOCENTE, int CHIAVE_CORSO)
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        c.CHIAVE_DOCENTE = CHIAVE_DOCENTE;
        c.CHIAVE_TEST = CHIAVE_CORSO;
        dt = c.SelectAllDocenti();
        dt.TableName = "Risultato";
        return dt;
    }

    /// <summary>
    /// metodo che permette al tutor di modificare il corso scelto
    /// </summary>
    /// <param name="CHIAVE_TUTOR"></param>
    /// <param name="TITOLO"></param>
    /// <param name="TIPO"></param>
    /// <param name="DESCRIZIONE"></param>
    /// <param name="AVATAR_CORSO"></param>
    /// <param name="TIPO_IMG"></param>
    /// <param name="DATA_PARTENZA"></param>
    [WebMethod]
    public void UpdateForTutor(int CHIAVE, string TITOLO, string TIPO, string DESCRIZIONE, byte[] AVATAR_CORSO, string TIPO_IMG, string DATA_PARTENZA)
    {
        CORSI C = new CORSI();

        C.CHIAVE = CHIAVE;
        C.TITOLO = TITOLO;
        C.TIPO = TIPO;
        C.DESCRIZIONE = DESCRIZIONE;
        C.AVATAR_CORSO = AVATAR_CORSO;
        C.TIPO_IMG = TIPO_IMG;
        C.DATA_PARTENZA = DATA_PARTENZA;

        C.UpdateForTutor();
    }

    [WebMethod]
    public DataTable Utenti_SelectAll()
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        dt = c.Utenti_SelectAll();
        dt.TableName = "Corsi";
        return dt;
    }

    /// <summary>
    /// Seleziona tutti i corsi del docente con un certo stato di attività
    /// </summary>
    /// <param name="COD_DOCENTE"></param>
    /// <param name="ATTIVI">true se si vogliono selezionare i corsi attivi, false per quelli inattivi</param>
    /// <returns></returns>
    [WebMethod]
    public DataTable SelectByStatus(int COD_DOCENTE, bool ATTIVI)
    {
        DataTable dt = new CORSI().SelectByStatus(COD_DOCENTE, ATTIVI);
        dt.TableName = "Corsi";
        return dt;
    }

    /// <summary>
    /// metodo che riporta tutti i corsi che sono stati approvati
    /// </summary>
    /// <returns></returns>
    [WebMethod]
    public DataTable Corsi_SelectApprovati()
    {
        DataTable dt = new DataTable();
        CORSI C = new CORSI();
        dt = C.CorsiSelectApprovati();
        dt.TableName = "Corsi";
        return dt;
    }

    /// <summary>
    /// Seleziona tutti gli studenti di un corso e l' esito del loro test
    /// </summary>
    /// <param name="COD_CORSO"></param>
    /// <returns></returns>
    [WebMethod]
    public DataTable SituazioneStudenti(int COD_CORSO)
    {
        CORSI C = new CORSI();
        C.CHIAVE_CORSO = COD_CORSO;

        DataTable dt = C.SituazioneStudenti();
        dt.TableName = "Corsi";
        return dt;
    }

    /// <summary>
    /// riporta tutti i corsi che non sono ancora stati approvati
    /// </summary>
    [WebMethod]
    public DataTable Corsi_SelectNonApprovati()
    {
        DataTable dt = new DataTable();
        CORSI C = new CORSI();
        dt = C.CorsiSelectNonApprovati();
        dt.TableName = "Corsi";
        return dt;
    }

    [WebMethod]
    public bool Check_Tutor_Abilitato(int CHIAVE_UTENTE)
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        c.CHIAVE_UTENTE = CHIAVE_UTENTE;
        bool abilitato = c.Check_Tutor_Abilitato();
        dt.TableName = "Corsi";
        return abilitato;

    }
    /// <summary>
    /// Seleziona tutte le classi di un corso 
    /// </summary>
    [WebMethod]
    public DataTable Corsi_SelectAllClassi(int CODICE_CORSO)
    {
        DataTable dt = new DataTable();
        CORSI C = new CORSI();
        C.CHIAVE = CODICE_CORSO;

        dt = C.Corsi_SelectAllClassi();
        dt.TableName = "Classi";
        return dt;
    }

    [WebMethod]
    public DataTable SelectForTutor(int COD_TUTOR)
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        c.CHIAVE_TUTOR = COD_TUTOR;
        dt = c.SelectForTutor();
        dt.TableName = "Corso";
        return dt;
    }
    
    [WebMethod]
    public DataTable Select_Utenti_Filtro_Q()
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        dt = c.Select_Utenti_Filtro_Q();
        dt.TableName = "Corso";
        return dt;
    }

    [WebMethod]
    public void Update_Status(int CHIAVE_CORSO)
    {
        CORSI c = new CORSI();
        c.CHIAVE_CORSO = CHIAVE_CORSO;

        c.Update_Status();
    }

    [WebMethod]
    public DataTable Utenti_SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        c.CHIAVE_CORSO = CHIAVE;
        dt = c.Utenti_SelectOne();
        dt.TableName = "Corso";
        return dt;
    }

    /// <summary>
    /// metodo che restituisce tutti i corsi con status P
    /// </summary>
    /// <returns></returns>
    [WebMethod]
    public DataTable SelectAllPreparati()
    {
        DataTable dt = new DataTable();
        CORSI C = new CORSI();
        dt = C.SelectAllPreparati();
        dt.TableName = "Corsi";
        return dt;
    }

    /// <summary>
    /// metodo che modifica il corso aggiungendo status Q
    /// </summary>
    /// <param name="COD_CORSO"></param>
    /// <param name="COSTO"></param>
    [WebMethod]
    public void CorsiQuotazione(int COD_CORSO, int COSTO)
    {
        CORSI C = new CORSI();
        C.CHIAVE = COD_CORSO;
        C.COSTO = COSTO;
        C.CorsiQuotazione();
    }

    /// <summary>
    /// Lista di tutti i corsi non comprati dallo studente
    /// </summary>
    /// <param name="COD_STUDENTE"></param>
    /// <returns></returns>
    [WebMethod]
    public DataTable NonComprati (int COD_STUDENTE)
    {
        DataTable DT = new CORSI().NonComprati(COD_STUDENTE);
        DT.TableName = "Corsi";

        return DT;
    }

    /// <summary>
    /// metodo che restituisce tutti i corsi con status C creati dal parametro tutor
    /// </summary>
    /// <param name="COD_TUTOR"></param>
    /// <returns></returns>
    [WebMethod]
    public DataTable CorsiCreati(int COD_TUTOR)
    {
        DataTable dt = new DataTable();
        CORSI C = new CORSI();
        C.CHIAVE_TUTOR = COD_TUTOR;
        dt = C.CorsiCreati();
        dt.TableName = "Corsi";
        return dt;
        
    }

    /// <summary>
    /// metodo che assegna status M a parametro COD_CORSO
    /// </summary>
    /// <param name="COD_CORSO"></param>
    [WebMethod]
    public void CorsiMaterieAssegnate(int COD_CORSO)
    {
        CORSI C = new CORSI();
        C.CHIAVE = COD_CORSO;
        C.CorsoMateriaAssegnata();
    }

    [WebMethod]
    public DataTable SelectForTutorStatusM(int COD_TUTOR)
    {
        DataTable dt = new DataTable();
        CORSI c = new CORSI();
        c.CHIAVE_TUTOR = COD_TUTOR;
        dt = c.SelectForTutorStatusM();
        dt.TableName = "Corso";
        return dt;
    }

}
