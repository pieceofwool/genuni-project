using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


    public class RISPOSTE
    {
        public int CHIAVE;
        public int COD_STUDENTE;
        public int COD_TEST;
        public string RISPOSTA;

        public DataTable SelectAll()
        {
            SqlCommand cmd = new SqlCommand("RISPOSTE_SELECTALL");
            CONNESSIONE C = new CONNESSIONE();

            return C.EseguiSelect(cmd);


        }
        public void Insert()
        {
            CONNESSIONE c = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "RISPOSTE_UPDATE";
            cmd.Parameters.AddWithValue("@Cod_Studente", COD_STUDENTE);
            cmd.Parameters.AddWithValue("@Cod_Test", COD_TEST);
            cmd.Parameters.AddWithValue("@Risposta", RISPOSTA);

            c.EseguiSpcmdpparam(cmd);
            //c.EseguiCommand("insert into tabTipiSpese values('" + descrizione + "')");

        }
        public DataTable SelectOne()
        {
            CONNESSIONE c = new CONNESSIONE();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "RISPOSTE_SELECTONE";
            cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

            return c.EseguiSpselectparam(cmd);
        }
    }

