using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WSmaterie
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WSmaterie : System.Web.Services.WebService
{

    public WSmaterie()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void Insert(int COD_CORSO, int COD_DOCENTE, int COSTO_DOCENTE, string TITOLO, string DESCRIZIONE, int INDICE, string PREPARATO, string ACCETTATO, string DATA_RISPOSTA)
    {
        MATERIE m = new MATERIE();
        m.COD_CORSO = COD_CORSO;
        m.COD_DOCENTE = COD_DOCENTE;
        m.COSTO_DOCENTE = COSTO_DOCENTE;
        m.TITOLO = TITOLO;
        m.DESCRIZIONE = DESCRIZIONE;
        m.INDICE = INDICE;
        m.PREPARATO = PREPARATO;
        m.ACCETTATO = ACCETTATO;
        m.DATA_RISPOSTA = DATA_RISPOSTA;

        m.Insert();
    }
    
    [WebMethod]
    public void Insert(int CHIAVE, int COD_CORSO, int COD_DOCENTE, int COSTO_DOCENTE, string TITOLO, string DESCRIZIONE, int INDICE, string PREPARATO, string ACCETTATO, string DATA_RISPOSTA)
    {
        MATERIE m = new MATERIE();
        m.CHIAVE = CHIAVE;
        m.COD_CORSO = COD_CORSO;
        m.COD_DOCENTE = COD_DOCENTE;
        m.COSTO_DOCENTE = COSTO_DOCENTE;
        m.TITOLO = TITOLO;
        m.DESCRIZIONE = DESCRIZIONE;
        m.INDICE = INDICE;
        m.PREPARATO = PREPARATO;
        m.ACCETTATO = ACCETTATO;
        m.DATA_RISPOSTA = DATA_RISPOSTA;

        m.Insert();
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

}
