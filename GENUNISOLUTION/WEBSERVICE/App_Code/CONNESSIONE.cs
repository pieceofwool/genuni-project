using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Xml.Linq;
using System.Xml;

public class CONNESSIONE
{
    public SqlConnection conn;
    public string query;
    public string connessione;

    public CONNESSIONE()
    {
        XDocument conne = XDocument.Load(HttpContext.Current.Server.MapPath("/xml/connessione.xml"));
        var connessioni = from b in conne.Descendants("ConnectionString")
                          select new
                          {
                              DataSource = b.Element("DataSource").Value,
                              InitialCatalog = b.Element("InitialCatalog").Value,
                              IntegratedSecurity = b.Element("IntegratedSecurity").Value,
                              User = b.Element("User").Value,
                              Password = b.Element("Password").Value,
                          };

        string datasource = "";
        string initialcatalog = "";
        string integratedsecurity = "";
        string user = "";
        string password = "";

        foreach (var b in connessioni)
        {
            datasource = b.DataSource;
            initialcatalog = b.InitialCatalog;
            integratedsecurity = b.IntegratedSecurity;
            user = b.User;
            password = b.Password;
        }

        string StringaDiConnessione = "Data Source=" + datasource + ";Initial Catalog=" + initialcatalog;

        if (integratedsecurity == "True")
        {
            StringaDiConnessione += ";Integrated Security=True";
        }

        else
        {
            StringaDiConnessione += ";Integrated Security=False;User Id=" + user + ";Password=" + password;
        }

        conn = new SqlConnection(StringaDiConnessione);
    }

    /// <summary>
    /// Esegue una stored procedure di selezione con parametri
    /// </summary>
    /// <param name="cmd">L'oggetto SqlCommand con i parametri già caricati</param>
    /// <returns>Una tabella contenente i dati selezionati</returns>
    public DataTable EseguiSelect(SqlCommand cmd)
    {
        SqlDataAdapter DA = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;

        DA.Fill(dt);
        return dt;
    }

    /// <summary>
    /// Esegue una stored procedure con parametri
    /// </summary>
    /// <param name="cmd">L'oggetto SqlCommand con i parametri già caricati</param>
    public void EseguiCmd(SqlCommand cmd)
    {
        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}