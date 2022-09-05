using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per ESTERNI
/// </summary>
public class ESTERNI
{
    #region MEMBRI
    public int CHIAVE;
    public int COD_UTENTE;
    public string TIPO;
    public string USR;
    public string PWD;
    public string RAGIONE_SOCIALE;
    public string COGNOME;
    public string NOME;
    public string DATA_NASCITA;
    public string PIVA;
    public string CF;
    public string INDIRIZZO;
    public string CAP;
    public string CITTA;
    public string PROVINCIA;
    public string NAZIONALITA;
    public bool ABILITATO;
    public byte[] AVATAR;
    public string TIPOIMG;
    #endregion

    public ESTERNI()
    {

    }
    #region METODI
    public DataTable SelectAll()
    {
        SqlCommand cmd = new SqlCommand("ESTERNI_SELECTALL");
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd);
    }

    public DataTable SelectOne()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "ESTERNI_SELECTONE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

        return c.EseguiSelect(cmd);
    }

    public void Insert()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "ESTERNI_INSERT";
        cmd.Parameters.AddWithValue("@TIPO", TIPO);
        cmd.Parameters.AddWithValue("@USR", USR);
        cmd.Parameters.AddWithValue("@PWD", PWD);
        cmd.Parameters.AddWithValue("@RAGIONE_SOCIALE", RAGIONE_SOCIALE);
        cmd.Parameters.AddWithValue("@COGNOME", COGNOME);
        cmd.Parameters.AddWithValue("@NOME", NOME);
        cmd.Parameters.AddWithValue("@DATA_NASCITA", DATA_NASCITA);
        cmd.Parameters.AddWithValue("@PIVA", PIVA);
        cmd.Parameters.AddWithValue("@CF", CF);
        cmd.Parameters.AddWithValue("@INDIRIZZO", INDIRIZZO);
        cmd.Parameters.AddWithValue("@CAP", CAP);
        cmd.Parameters.AddWithValue("@CITTA", CITTA);
        cmd.Parameters.AddWithValue("@PROVINCIA", PROVINCIA);
        cmd.Parameters.AddWithValue("@NAZIONALITA", NAZIONALITA);
        cmd.Parameters.AddWithValue("@ABILITATO", ABILITATO);
        cmd.Parameters.AddWithValue("@AVATAR", AVATAR);
        cmd.Parameters.AddWithValue("@TIPOIMG", TIPOIMG);

        c.EseguiCmd(cmd);
    }

    public void Update()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "ESTERNI_UPDATE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);
        cmd.Parameters.AddWithValue("@TIPO", TIPO);
        cmd.Parameters.AddWithValue("@USR", USR);
        cmd.Parameters.AddWithValue("@PWD", PWD);
        cmd.Parameters.AddWithValue("@RAGIONE_SOCIALE", RAGIONE_SOCIALE);
        cmd.Parameters.AddWithValue("@COGNOME", COGNOME);
        cmd.Parameters.AddWithValue("@NOME", NOME);
        cmd.Parameters.AddWithValue("@DATA_NASCITA", DATA_NASCITA);
        cmd.Parameters.AddWithValue("@PIVA", PIVA);
        cmd.Parameters.AddWithValue("@CF", CF);
        cmd.Parameters.AddWithValue("@INDIRIZZO", INDIRIZZO);
        cmd.Parameters.AddWithValue("@CAP", CAP);
        cmd.Parameters.AddWithValue("@CITTA", CITTA);
        cmd.Parameters.AddWithValue("@PROVINCIA", PROVINCIA);
        cmd.Parameters.AddWithValue("@NAZIONALITA", NAZIONALITA);
        cmd.Parameters.AddWithValue("@ABILITATO", ABILITATO);
        cmd.Parameters.AddWithValue("@AVATAR", AVATAR);
        cmd.Parameters.AddWithValue("@TIPOIMG", TIPOIMG);

        c.EseguiCmd(cmd);
    }

    public bool CheckOne()
    {
        CONNESSIONE C = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "ESTERNI_CHECKONE";
        cmd.Parameters.AddWithValue("@TIPO", TIPO);
        cmd.Parameters.AddWithValue("@USR", USR);
        cmd.Parameters.AddWithValue("@PWD", PWD);
        cmd.Parameters.AddWithValue("@RAGIONE_SOCIALE", RAGIONE_SOCIALE);
        cmd.Parameters.AddWithValue("@COGNOME", COGNOME);
        cmd.Parameters.AddWithValue("@NOME", NOME);

        DataTable dt = C.EseguiSelect(cmd);

        if (dt.Rows.Count == 0) return false;

        return true;
    }

    public void Delete()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "ESTERNI_DELETE";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

        c.EseguiCmd(cmd);
    }

    public void UpdatePassword()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "ESTERNI_UPDATE_PWD";
        cmd.Parameters.AddWithValue("@USR", USR);
        cmd.Parameters.AddWithValue("@PWD", PWD);

        c.EseguiCmd(cmd);
    }
    public DataTable InfoCorso()
    {
        SqlCommand cmd = new SqlCommand("ESTERNI_InfoCorso");
        CONNESSIONE C = new CONNESSIONE();
        cmd.Parameters.AddWithValue("@USR", USR);

        return C.EseguiSelect(cmd);
    }
    public DataTable InfoDocente()
    {
        SqlCommand cmd = new SqlCommand("ESTERNI_InfoDocente");
        CONNESSIONE C = new CONNESSIONE();
        cmd.Parameters.AddWithValue("@USR", USR);

        return C.EseguiSelect(cmd);
    }
    public bool Login()
    {
        SqlCommand cmd = new SqlCommand("ESTERNI_LOGIN");
        cmd.Parameters.AddWithValue("@usr", USR);
        cmd.Parameters.AddWithValue("@pwd", PWD);

        CONNESSIONE conn = new CONNESSIONE();
        DataTable dt = conn.EseguiSelect(cmd);

        if (dt.Rows.Count == 0) return false;

        return true;
    }
    public DataTable CorsiFrequentati()
    {
        SqlCommand cmd = new SqlCommand("ESTERNI_STUDENTI_CORSI_FREQUENTATI");
        CONNESSIONE C = new CONNESSIONE();
        cmd.Parameters.AddWithValue("@Chiave", CHIAVE);

        return C.EseguiSelect(cmd);
    }
    
    public bool Registrato()
    {
        SqlCommand cmd = new SqlCommand("ESTERNI_REGISTRATO");
        cmd.Parameters.AddWithValue("@USR", USR);

        CONNESSIONE conn = new CONNESSIONE();
        DataTable dt = conn.EseguiSelect(cmd);

        return dt.Rows.Count > 0;
    }

    public string TipoLogin()
    {
        SqlCommand cmd = new SqlCommand("ESTERNI_TIPO_LOGIN");
        cmd.Parameters.AddWithValue("@Usr", USR);
        cmd.Parameters.AddWithValue("@Pwd", PWD);
        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd).Rows[0].Field<string>("Tipo");
    }

    public string GetNome()
    {
        SqlCommand cmd = new SqlCommand("ESTERNI_GETNOME");
        CONNESSIONE C = new CONNESSIONE();

        cmd.Parameters.AddWithValue("@Chiave", CHIAVE);

        return C.EseguiSelect(cmd).Rows[0].Field<string>("Nome");
    }


    public void UpdateAvatar()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "ESTERNI_UPDATEAVATAR";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);
        cmd.Parameters.AddWithValue("@AVATAR", AVATAR);
        cmd.Parameters.AddWithValue("@TIPOIMG", TIPOIMG);

        c.EseguiCmd(cmd);
    }

    public void UpdateProfilo()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "ESTERNI_UPDATEPROFILO";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);
        cmd.Parameters.AddWithValue("@USR", USR);
        cmd.Parameters.AddWithValue("@RAGIONE_SOCIALE", RAGIONE_SOCIALE);
        cmd.Parameters.AddWithValue("@COGNOME", COGNOME);
        cmd.Parameters.AddWithValue("@NOME", NOME);
        cmd.Parameters.AddWithValue("@DATA_NASCITA", DATA_NASCITA);
        cmd.Parameters.AddWithValue("@PIVA", PIVA);
        cmd.Parameters.AddWithValue("@CF", CF);
        cmd.Parameters.AddWithValue("@INDIRIZZO", INDIRIZZO);
        cmd.Parameters.AddWithValue("@CAP", CAP);
        cmd.Parameters.AddWithValue("@CITTA", CITTA);
        cmd.Parameters.AddWithValue("@PROVINCIA", PROVINCIA);
        cmd.Parameters.AddWithValue("@NAZIONALITA", NAZIONALITA);



        c.EseguiCmd(cmd);
    }

    public bool Controlla_Abilitatazione()
    {
        SqlCommand cmd = new SqlCommand("ESTERNI_Controlla_Abilitazione");
        cmd.Parameters.AddWithValue("@Cod_Utente", COD_UTENTE);

        CONNESSIONE conn = new CONNESSIONE();
        DataTable dt = conn.EseguiSelect(cmd);

        return conn.EseguiSelect(cmd).Rows[0].Field<bool>("Abilitato");
    }

    //metodo che restituisce una tabella con dati docente in base al suo codice
    public DataTable ESTERNI_DOCENTI_InfoCodice()
    {
        SqlCommand cmd = new SqlCommand("ESTERNI_Info");
        cmd.Parameters.AddWithValue("@Cod_Docente", CHIAVE);
        CONNESSIONE conn = new CONNESSIONE();

        return conn.EseguiSelect(cmd);
    }

    /// <summary>
    /// Restituisce una tabella dei docenti con le relative competenze
    /// </summary>
    /// <returns></returns>
    public DataTable SelectCompetenze()
    {
        return new CONNESSIONE().EseguiSelect(new SqlCommand("ESTERNI_COMPETENZE_DOCENTI"));
    }

    public int RecuperaCodEsterno()
    {
        SqlCommand cmd = new SqlCommand("ESTERNI_GETCODUTENTE");
        cmd.Parameters.AddWithValue("@usr", USR);

        CONNESSIONE C = new CONNESSIONE();

        return C.EseguiSelect(cmd).Rows[0].Field<int>("Chiave");
    }

    /// <summary>
    /// Mostra il totale guadagnato dal docente
    /// </summary>
    /// <returns></returns>
    public decimal Guadagni()
    {
        SqlCommand cmd = new SqlCommand("ESTERNI_SOMMA_GUADAGNI");
        cmd.Parameters.AddWithValue("@codDocente", CHIAVE);

        return new CONNESSIONE().EseguiSelect(cmd).Rows[0].Field<decimal>("Guadagni");
    }

    public void AbilitaEsterno()
    {
        CONNESSIONE C = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand("ESTERNI_ABILITA");
        cmd.Parameters.AddWithValue("@Chiave", CHIAVE);

        C.EseguiCmd(cmd);
    }

    public void Update_Profilo_Studenti()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "ESTERNI_UPDATE_PROFILO_STUDENTI";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);
        cmd.Parameters.AddWithValue("@NOME", NOME);
        cmd.Parameters.AddWithValue("@COGNOME", COGNOME);
        cmd.Parameters.AddWithValue("@CITTA", CITTA);
        cmd.Parameters.AddWithValue("@INDIRIZZO", INDIRIZZO);
        cmd.Parameters.AddWithValue("@PROVINCIA", PROVINCIA);

        c.EseguiCmd(cmd);
    }

    public DataTable SelectOne_Profilo_Studenti()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "ESTERNI_SELECTONE_PROFILO_STUDENTI";
        cmd.Parameters.AddWithValue("@CHIAVE", CHIAVE);

        return c.EseguiSelect(cmd);
    }

    //metodo che seleziona tutti i docenti da ESTERNI
    public DataTable SelectAll_Docenti()
    {
        CONNESSIONE C = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "ESTERNI_DOCENTI_SELECTALL";
        return C.EseguiSelect(cmd);
    }

    #endregion
}