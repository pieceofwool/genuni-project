using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Materie_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Materie_WS : System.Web.Services.WebService
{

    public Materie_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void Insert(int COD_CORSO, int COD_DOCENTE, int COSTO_DOCENTE, string TITOLO, string DESCRIZIONE, int INDICE, string PREPARATO, string ACCETTATO, string DATA_RISPOSTA)
    {
        MATERIE m = new MATERIE();
        m.Cod_Corso = COD_CORSO;
        m.Cod_Docente = COD_DOCENTE;
        m.Costo_Docente = COSTO_DOCENTE;
        m.Titolo = TITOLO;
        m.Descrizione = DESCRIZIONE;
        m.Indice = INDICE;
        m.Preparato = PREPARATO;
        m.Accettato = ACCETTATO;
        m.Data_Risposta = DATA_RISPOSTA;

        m.Insert();
    }

    [WebMethod]
    public void Update(int CHIAVE, int COD_CORSO, int COD_DOCENTE, int COSTO_DOCENTE, string TITOLO, string DESCRIZIONE, int INDICE, string PREPARATO, string ACCETTATO, string DATA_RISPOSTA)
    {
        MATERIE m = new MATERIE();
        m.Chiave = CHIAVE;
        m.Cod_Corso = COD_CORSO;
        m.Cod_Docente = COD_DOCENTE;
        m.Costo_Docente = COSTO_DOCENTE;
        m.Titolo = TITOLO;
        m.Descrizione = DESCRIZIONE;
        m.Indice = INDICE;
        m.Preparato = PREPARATO;
        m.Accettato = ACCETTATO;
        m.Data_Risposta = DATA_RISPOSTA;

        m.Update();
    }

    [WebMethod]
    public DataTable Info()
    {
        DataTable dt = new DataTable();
        MATERIE m = new MATERIE();
        dt = m.Info();
        dt.TableName = "Info";
        return dt;
    }

    //metodo che inserisce il codice docente nella relativa materia
    [WebMethod]
    public void InsertDocente(int CHIAVE, int COD_DOCENTE)
    {
        MATERIE M = new MATERIE();
        M.Chiave = CHIAVE;
        M.Cod_Docente = COD_DOCENTE;

        M.InsertDocente();
    }

    /// <summary>
    /// Risponde ad una offerta di materia
    /// </summary>
    /// <param name="CHIAVE">Chiave della materia</param>
    /// <param name="risposta">true se accetta, false se rifiuta</param>
    [WebMethod]
    public void Rispondi(int CHIAVE, bool risposta)
    {
        MATERIE M = new MATERIE();
        M.Chiave = CHIAVE;

        M.Rispondi(risposta);
    }

    //metodo che seleziona materie e corsi di un determinato docente
    [WebMethod]
    public DataTable SelectDocente(int COD_DOCENTE)
    {
        DataTable dt = new DataTable();
        MATERIE m = new MATERIE();
        m.Cod_Docente = COD_DOCENTE;
        dt = m.SelectDocente();
        dt.TableName = "Info";
        return dt;
    }

    //metodo che seleziona materie di un determinato docente e corsi
    [WebMethod]
    public DataTable SelectDocenteCorso(int COD_DOCENTE, int COD_CORSO)
    {
        DataTable dt = new DataTable();
        MATERIE M = new MATERIE();
        M.Cod_Docente = COD_DOCENTE;
        M.Cod_Corso = COD_CORSO;
        dt.TableName = "Materie";
        dt = M.SelectDocenteCorso();
        
        return dt;
    }

    //metodo che elenca le materie alle quali non e stato assegnato un docente
    [WebMethod]
    public DataTable SelectNonAssegnate(int COD_CORSO)
    {
        MATERIE M = new MATERIE();
        M.Cod_Corso = COD_CORSO;
        DataTable dt = new DataTable();
        dt= M.SelectNonAssegnate();
        dt.TableName = "Materie";
        return dt;
    }

    /// <summary>
    /// Seleziona le materie del docente a cui non ha risposto
    /// </summary>
    /// <param name="cod_docente">Il codice del docente</param>
    /// <returns></returns>
    [WebMethod]
    public DataTable SelectDaRispondere(int cod_docente)
    {
        MATERIE M = new MATERIE();
        M.Cod_Docente = cod_docente;
        DataTable dt = M.SelectDaRispondere();
        dt.TableName = "Materie";
        return dt;
    }


    //seleziona materia di un docente non ancora accettate
    [WebMethod]
    public DataTable SelectMaterieDocente(int cod_docente)
    {
        MATERIE M = new MATERIE();
        M.Cod_Docente = cod_docente;
        DataTable dt = new DataTable();
        dt = M.SelectMaterieDocente();
        dt.TableName = "Materie";
        return dt;
    }

    [WebMethod]
    public void Accettazione(int CHIAVE)
    {
        MATERIE m = new MATERIE();
        m.Chiave = CHIAVE;

        m.Accettazione();
    }

    //seleziona i corsi in cui il docente ha materie accettate
    [WebMethod]
    public DataTable SelectCorsiDocente(int cod_docente)
    {
        MATERIE M = new MATERIE();
        M.Cod_Docente = cod_docente;
        DataTable dt = new DataTable();
        dt = M.SelectCorsiDocente();
        dt.TableName = "Materie";
        return dt;
    }

    [WebMethod]
    public DataTable SelectMaterieDocenteCorso(int cod_docente, int cod_corso)
    {
        MATERIE M = new MATERIE();
        M.Cod_Docente = cod_docente;
        M.Cod_Corso = cod_corso;
        DataTable dt = new DataTable();
        dt = M.SelectMaterieDocenteCorso();
        dt.TableName = "Materie";
        return dt;
    }

    

    /// <summary>
    /// metodo che restituisce il titolo e la descrizione della materia in base a quel corso
    /// </summary>
    /// <param name="cod_corso"></param>
    /// <returns></returns>
    [WebMethod]
    public DataTable MaterieInfoCorso(int cod_corso)
    {
        MATERIE M = new MATERIE();
        M.Cod_Corso = cod_corso;
        DataTable dt = M.MaterieInfoCorso();
        dt.TableName = "Materie";
        return dt;
    }

    /// <summary>
    /// metodo che restituisce tutte le materie che sono state preparate 
    /// </summary>
    /// <returns></returns>
    [WebMethod]
    public DataTable MateriePreparate()
    {
        MATERIE M = new MATERIE();
        DataTable dt = M.MateriePreparate();
        dt.TableName = "Materie";
        return dt;
    }
}
