using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


public class DOMANDE
{
    public int CHIAVE;
    public int COD_TEST;
    public string DOMANDA;
    public string RISPOSTA1;
    public string RISPOSTA2;
    public string RISPOSTA3;
    public string VOTI;

    public DataTable SelectAll()
    {
        SqlCommand cmd = new SqlCommand("DOMANDE_SELECTALL");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);


    }
    public void Insert()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "DOMANDE_INSERT";
        cmd.Parameters.AddWithValue("@Cod_Test", COD_TEST);
        cmd.Parameters.AddWithValue("@Domanda", DOMANDA);
        cmd.Parameters.AddWithValue("@Risposta1", RISPOSTA1);
        cmd.Parameters.AddWithValue("@Risposta2", RISPOSTA2);
        cmd.Parameters.AddWithValue("@Risposta3", RISPOSTA3);
        cmd.Parameters.AddWithValue("@Voti", VOTI);


        c.EseguiCmd(cmd);
        //c.EseguiCommand("insert into tabTipiSpese values('" + descrizione + "')");

    }
    public void Update()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "DOMANDE_UPDATE";
        cmd.Parameters.AddWithValue("@Chiave", CHIAVE);
        cmd.Parameters.AddWithValue("@Cod_Test", COD_TEST);
        cmd.Parameters.AddWithValue("@Domanda", DOMANDA);
        cmd.Parameters.AddWithValue("@Risposta1", RISPOSTA1);
        cmd.Parameters.AddWithValue("@Risposta2", RISPOSTA2);
        cmd.Parameters.AddWithValue("@Risposta3", RISPOSTA3);
        cmd.Parameters.AddWithValue("@Voti", VOTI);


        c.EseguiCmd(cmd);
        //c.EseguiCommand("insert into tabTipiSpese values('" + descrizione + "')");

    }
    public void Delete()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "DOMANDE_DELETE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

        c.EseguiCmd(cmd);

        //c.EseguiCommand("UPDATE tabTIPISPESE SET descrizione='" + descrizione + "'where codiceTipoSpesa=" + codicetipospesa);
    }

    public DataTable SelectOne()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "DOMANDE_SELECTONE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

        return c.EseguiSelect(cmd);
    }

    /// <summary>
    /// metodo che restituisce codice, domanda, risposte e voti in base a un codtest come parametro
    /// </summary>
    /// <returns></returns>
    public DataTable DomandeSelectAllTest()
    {
        CONNESSIONE C = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand("DOMANDE_SELECT_TEST");
        cmd.Parameters.AddWithValue("@Cod_Test", COD_TEST);

        return C.EseguiSelect(cmd);
    }
}

