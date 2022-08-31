using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per PROGRESSI
/// </summary>
public class PROGRESSI
{
    public int Chiave;
    public int Cod_Programma;
    public int Cod_Studente;
    public DateTime Data_Progresso;
    public PROGRESSI()
    {

    }
    #region OPERAZIONI
    public void Insert()
    {
        SqlCommand cmd = new SqlCommand("PROGRESSI_Insert");
        cmd.Parameters.AddWithValue("@Cod_Programma", Cod_Programma);
        cmd.Parameters.AddWithValue("@Cod_Studente", Cod_Studente);
        cmd.Parameters.AddWithValue("@Data_Progesso", Data_Progresso);

        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }
    public void Update()
    {
        SqlCommand cmd = new SqlCommand("PROGRESSI_Update");
        cmd.Parameters.AddWithValue("@Cod_Programma", Cod_Programma);
        cmd.Parameters.AddWithValue("@Cod_Studente", Cod_Studente);
        cmd.Parameters.AddWithValue("@Data_Progesso", Data_Progresso);
        CONNESSIONE conn = new CONNESSIONE();
        conn.EseguiCmd(cmd);
    }
    #endregion

    #region SELETTORI

    public DataTable SelectAll()
    {
        SqlCommand cmd = new SqlCommand("PROGRESSI_SelectAll");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }
    #endregion
}