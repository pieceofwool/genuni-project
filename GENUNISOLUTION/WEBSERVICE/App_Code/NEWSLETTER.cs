using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for NEWSLETTER
/// </summary>
public class NEWSLETTER
{
    public string email;

    public NEWSLETTER()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public void NewsletterIscrivi()
    {
        CONNESSIONE c = new CONNESSIONE();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "NEWSLETTER_ISCRIVI";
        cmd.Parameters.AddWithValue("@Email", email);

        c.EseguiCmd(cmd);
    }


}