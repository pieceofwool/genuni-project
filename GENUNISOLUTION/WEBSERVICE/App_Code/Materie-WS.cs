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

    //metodo che seleziona materie e corsi di un determinato docente
    [WebMethod]
    public void SelectDocente(int COD_DOCENTE)
    {
        MATERIE M = new MATERIE();
        M.Cod_Docente = COD_DOCENTE;

        M.SelectDocente();
    }

    //metodo che elenca le materie alle quali non e stato assegnato un docente
    [WebMethod]
    public DataTable SelectNonAssegnate(int COD_CORSO)
    {
        MATERIE M = new MATERIE();
        DataTable dt = new DataTable();
        dt= M.SelectNonAssegnate();
        dt.TableName = "Materie";
        return dt;
    }
}
