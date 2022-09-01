using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per TEST
/// </summary>
public class TEST
{
    public int CHIAVE;
    public int COD_CORSO;
    public int SOGLIA;
    public string DATA_TEST;
    public string ORA_TEST;
    public DataTable SelectAll()
    {
        SqlCommand cmd = new SqlCommand("TEST_SELECTALL");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }
    public void Insert()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "TEST_INSERT";
        cmd.Parameters.AddWithValue("@Cod_Corso", COD_CORSO);
        cmd.Parameters.AddWithValue("@Soglia", SOGLIA);
        cmd.Parameters.AddWithValue("@Data_Test", DATA_TEST);
        cmd.Parameters.AddWithValue("@Ora_Test", ORA_TEST);

        c.EseguiCmd(cmd);
        //c.EseguiCommand("insert into tabTipiSpese values('" + descrizione + "')");

    }
    public void Update()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "TEST_UPDATE";
        cmd.Parameters.AddWithValue("@Chiave", CHIAVE);
        cmd.Parameters.AddWithValue("@Cod_Corso", COD_CORSO);
        cmd.Parameters.AddWithValue("@Soglia", SOGLIA);
        cmd.Parameters.AddWithValue("@Data_Test", DATA_TEST);
        cmd.Parameters.AddWithValue("@Ora_Test", ORA_TEST);

        c.EseguiCmd(cmd);
        //c.EseguiCommand("insert into tabTipiSpese values('" + descrizione + "')");

    }
    public void Delete()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "TEST_DELETE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

        c.EseguiCmd(cmd);

        //c.EseguiCommand("UPDATE tabTIPISPESE SET descrizione='" + descrizione + "'where codiceTipoSpesa=" + codicetipospesa);
    }
    public DataTable SelectOne()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "TEST_SELECTONE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

        return c.EseguiSelect(cmd);
    }
    public DataTable DomandeRisposte()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "TEST_DOMANDE_RISPOSTE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

        return c.EseguiSelect(cmd);
    }

    //metodo che visualizza i test gia creati di un determinato corso
    public DataTable Test_SelectCorso()
    {
        CONNESSIONE conn = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "TEST_SELECTCORSO";
        cmd.Parameters.AddWithValue("@Cod_Corso", COD_CORSO);

    return conn.EseguiSelect(cmd);
    }
}