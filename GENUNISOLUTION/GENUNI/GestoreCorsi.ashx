<%@ WebHandler Language="C#" Class="GestoreCorsi" %>

using System;
using System.Web;

public class GestoreCorsi : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        int codice = int.Parse(context.Request.QueryString["codice"].ToString());
        string email = context.Request.QueryString["email"].ToString();
        bool bit = bool.Parse(context.Request.QueryString["bit"].ToString());

        PREISCRIZIONE.Preiscrizione_WSSoapClient P = new PREISCRIZIONE.Preiscrizione_WSSoapClient();
        P.Insert(codice, email, bit);

    }


    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}