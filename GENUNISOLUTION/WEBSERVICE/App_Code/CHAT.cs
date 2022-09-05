using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class CHAT
{
    public int CHIAVE;
    public int COD_CORSO;
    public int COD_STUDENTE;
    public int COD_INTERNO;
    public string CONTENUTO;

    public DataTable SelectAll()
    {
        SqlCommand cmd = new SqlCommand("CHAT_SELECTALL");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);


    }
    public void Insert()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "CHAT_INSERT";
        cmd.Parameters.AddWithValue("@Cod_Corso", COD_CORSO);
        cmd.Parameters.AddWithValue("@Cod_Studete", COD_STUDENTE);
        cmd.Parameters.AddWithValue("@Cod_Interno", COD_INTERNO);
        cmd.Parameters.AddWithValue("@Contenuto", CONTENUTO);


        c.EseguiCmd(cmd);
        //c.EseguiCommand("insert into tabTipiSpese values('" + descrizione + "')");

    }
    public DataTable SelectOne()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "CHAT_SELECTONE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

        return c.EseguiSelect(cmd);
    }

    public DataTable SelectOneJoinEsterni()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "CHAT_SELECTONE_CORSO_JOIN_ESTERNI";
        cmd.Parameters.AddWithValue("@Chiave", CHIAVE);

        return c.EseguiSelect(cmd);
    }


    public DataTable SelectOneJoinUtenti()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "CHAT_SELECTONE_CORSO_JOIN_UTENTI";
        cmd.Parameters.AddWithValue("@Chiave", CHIAVE);

        return c.EseguiSelect(cmd);
    }

    public DataTable SelectChatCorso()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "CHAT_SELECTONE_CORSO";
        cmd.Parameters.AddWithValue("@Cod_Corso", COD_CORSO);

        return c.EseguiSelect(cmd);
    }
}

