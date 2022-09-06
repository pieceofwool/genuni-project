using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


public class CLASSI
{
    public int CHIAVE;
    public int COD_CORSO;
    public int COD_STUDENTE;
    public int PUNTEGGIO_TEST;

    public DataTable SelectAll()
    {
        SqlCommand cmd = new SqlCommand("CLASSI_SELECTALL");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);


    }
    public void Insert()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "CLASSI_INSERT";
        cmd.Parameters.AddWithValue("@COD_CORSO", COD_CORSO);
        cmd.Parameters.AddWithValue("@COD_STUDENTE", COD_STUDENTE);


        c.EseguiCmd(cmd);
        //c.EseguiCommand("insert into tabTipiSpese values('" + descrizione + "')");

    }
    public void Update()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "CLASSI_UPDATE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);
        cmd.Parameters.AddWithValue("@Punteggio", PUNTEGGIO_TEST);


        c.EseguiCmd(cmd);
        //c.EseguiCommand("insert into tabTipiSpese values('" + descrizione + "')");

    }

    public DataTable SelectOne()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "CLASSI_SELECTONE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

        return c.EseguiSelect(cmd);
    }

    //metodo che restituisce tutte le classi in cui e presente lo studente
    public DataTable SelectAllStudente()
    {
        CONNESSIONE C = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "CLASSI_SELECTALL_STUDENTE";
        cmd.Parameters.AddWithValue("@Cod_Studente", COD_STUDENTE);

        return C.EseguiSelect(cmd);
    }

    //metodo che restituisce tutti gli studenti di una determinata classe 
    public DataTable SelectAllStudenti()
    {
        CONNESSIONE C = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "CLASSI_SELECTALL_STUDENTI";
        cmd.Parameters.AddWithValue("@CodiceClasse", CHIAVE);

        return C.EseguiSelect(cmd);
    }
}

