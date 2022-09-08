<%@ WebHandler Language="C#" Class="GestoreDocenti" %>

using System;
using System.Web;

public class GestoreDocenti : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
         int codice = int.Parse(context.Request.QueryString["codice"].ToString());
            MATERIE.Materie_WSSoapClient MA = new MATERIE.Materie_WSSoapClient();

            MA.Accettazione(codice);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}