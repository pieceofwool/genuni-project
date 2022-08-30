using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per COMPETENZE
/// </summary>
public class COMPETENZE
{
    public int CHIAVE;
    public int COD_DOCENTE;
    public byte[] Cv;
    public string SKILLS;

    public DataTable SelectAll()
    {
        SqlCommand cmd = new SqlCommand("COMPETENZE_SELECTALL");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);


    }
    public void Insert()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "COMPETENZE_INSERT";
        cmd.Parameters.AddWithValue("@Cod_Docente", COD_DOCENTE);
        cmd.Parameters.AddWithValue("@Cv", Cv);
        cmd.Parameters.AddWithValue("@Skills", SKILLS);

        c.EseguiCmd(cmd);

    }
    public void Update()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "COMPETENZE_UPDATE";
        cmd.Parameters.AddWithValue("@Chiave", CHIAVE);
        cmd.Parameters.AddWithValue("@Cv", Cv);
        cmd.Parameters.AddWithValue("@Skills", SKILLS);


        c.EseguiCmd(cmd);
        //c.EseguiCommand("insert into tabTipiSpese values('" + descrizione + "')");

    }
    public DataTable SelectOne()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "COMPETENZE_SELECTONE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

        return c.EseguiSelect(cmd);
    }
}