using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Programmi_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Programmi_WS : System.Web.Services.WebService
{

    public Programmi_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        PROGRAMMI p = new PROGRAMMI();
        dt = p.SelectAll();
        dt.TableName = "Programmi";
        return dt;
    }
    
    [WebMethod]
    public DataTable SelectOne()
    {
        DataTable dt = new DataTable();
        PROGRAMMI p = new PROGRAMMI();
        dt = p.SelectOne();
        dt.TableName = "Programmi";
        return dt;
    }

    [WebMethod]
    public DataTable SelectForMateria(int COD_MATERIA)
    {
        PROGRAMMI p = new PROGRAMMI();
        p.COD_MATERIA = COD_MATERIA;

        DataTable dt = p.SelectForMateria();
        dt.TableName = "Programmi";

        return dt;
    }

    [WebMethod]
    public void Insert(int COD_MATERIA, string TIPO, int INDICE, string LINK, byte[] MATERIALE, string TITOLO_MATERIALE, string DESCRIZIONE)
    {
        PROGRAMMI p = new PROGRAMMI();
        p.COD_MATERIA = COD_MATERIA;
        p.TIPO = TIPO;
        p.INDICE = INDICE;
        p.LINK = LINK;
        p.MATERIALE = MATERIALE;
        p.TITOLO_MATERIALE = TITOLO_MATERIALE;
        p.DESCRIZIONE = DESCRIZIONE;

        p.Insert();
    }

    [WebMethod]
    public void Update(int CHIAVE, int COD_MATERIA, string TIPO, int INDICE, string LINK, byte[] MATERIALE, string TITOLO_MATERIALE, string DESCRIZIONE)
    {
        PROGRAMMI p = new PROGRAMMI();
        p.CHIAVE = CHIAVE;
        p.COD_MATERIA = COD_MATERIA;
        p.TIPO = TIPO;
        p.INDICE = INDICE;
        p.LINK = LINK;
        p.MATERIALE = MATERIALE;
        p.TITOLO_MATERIALE = TITOLO_MATERIALE;
        p.DESCRIZIONE = DESCRIZIONE;

        p.Update();
    }

}
