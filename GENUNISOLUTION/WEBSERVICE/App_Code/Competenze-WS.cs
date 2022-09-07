using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per Competenze_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class Competenze_WS : System.Web.Services.WebService
{

    public Competenze_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        COMPETENZE c = new COMPETENZE();
        dt = c.SelectAll();
        dt.TableName = "Competenze";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        COMPETENZE c = new COMPETENZE();
        c.CHIAVE = CHIAVE;
        dt = c.SelectOne();
        dt.TableName = "Competenze";
        return dt;
    }


    //metodo che restituisce le competenze di un dato docente
    [WebMethod]
    public DataTable SelectAllDocente(int COD_DOCENTE)
    {
        COMPETENZE C = new COMPETENZE();
        DataTable dt = new DataTable();
        C.COD_DOCENTE = COD_DOCENTE;

        dt = C.SelectAllDocente();
        dt.TableName = "Competenze";
        return dt;
    }

    [WebMethod]
    public void Insert(int COD_DOCENTE, byte[] Cv, string SKILLS)
    {
        COMPETENZE c = new COMPETENZE();
        c.COD_DOCENTE = COD_DOCENTE;
        c.Cv = Cv;
        c.SKILLS = SKILLS;

        c.Insert();
    }

    [WebMethod]
    public void Update(int CHIAVE, byte[] Cv, string SKILLS)
    {
        COMPETENZE c = new COMPETENZE();
        c.CHIAVE = CHIAVE;
        c.Cv = Cv;
        c.SKILLS = SKILLS;

        c.Update();
    }

    [WebMethod]
    public void UpdateCodDocente(int CHIAVE, byte[] Cv, string SKILLS)
    {
        COMPETENZE c = new COMPETENZE();
        c.COD_DOCENTE = CHIAVE;
        c.Cv = Cv;
        c.SKILLS = SKILLS;

        c.UpdateCodDocente();
    }

    [WebMethod]
    public DataTable SelectDocente(string SKILLS)
    {
        DataTable dt = new DataTable();
        COMPETENZE c = new COMPETENZE();
        c.SKILLS = SKILLS;
        dt = c.SelectDocente();
        dt.TableName = "Competenze";
        return dt;
    }



}
