using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per PROGRAMMI
/// </summary>
public class PROGRAMMI
{
    public int CHIAVE;
    public int COD_MATERIA;
    public string TIPO;
    public int INDICE;
    public string LINK;
    public byte[] MATERIALE;
    public string TITOLO_MATERIALE;
    public string TIPO_MATERIALE;
    public string DESCRIZIONE;

    public PROGRAMMI()
    {

    }

    public DataTable SelectAll()
    {
        SqlCommand cmd = new SqlCommand("PROGRAMMI_SELECTALL");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    public DataTable SelectOne()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "PROGRAMMI_SELECTONE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

        return c.EseguiSelect(cmd);
    }

    public void Insert()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "PROGRAMMI_INSERT";
        cmd.Parameters.AddWithValue("@COD_MATERIA", COD_MATERIA);
        cmd.Parameters.AddWithValue("@TIPO", TIPO);
        cmd.Parameters.AddWithValue("@INDICE", INDICE);
        cmd.Parameters.AddWithValue("@LINK", LINK);
        cmd.Parameters.AddWithValue("@MATERIALE", MATERIALE);
        cmd.Parameters.AddWithValue("@TITOLO_MATERIALE", TITOLO_MATERIALE);
        cmd.Parameters.AddWithValue("@DESCRIZIONE", DESCRIZIONE);

        c.EseguiCmd(cmd);
    }

    public void Update()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "PROGRAMMI_UPDATE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);
        cmd.Parameters.AddWithValue("@COD_MATERIA", COD_MATERIA);
        cmd.Parameters.AddWithValue("@TIPO", TIPO);
        cmd.Parameters.AddWithValue("@INDICE", INDICE);
        cmd.Parameters.AddWithValue("@LINK", LINK);
        cmd.Parameters.AddWithValue("@MATERIALE", MATERIALE);
        cmd.Parameters.AddWithValue("@TITOLO_MATERIALE", TITOLO_MATERIALE);
        cmd.Parameters.AddWithValue("@DESCRIZIONE", DESCRIZIONE);

        c.EseguiCmd(cmd);
    }

    public DataTable SelectProgrammiMateria()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "PROGRAMMI_MATERIE_SELECT";
        cmd.Parameters.AddWithValue("@Cod_Materia", COD_MATERIA);

        return c.EseguiSelect(cmd);
    }
}