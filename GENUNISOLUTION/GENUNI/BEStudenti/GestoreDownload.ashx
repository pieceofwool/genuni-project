<%@ WebHandler Language="C#" Class="GestoreDownload" %>

using System;
using System.Web;
using System.Data;


public class GestoreDownload : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        PROGRAMMI.Programmi_WSSoapClient p = new PROGRAMMI.Programmi_WSSoapClient();
        //C.COD_DOCENTE = int.Parse(Session["CodiceDoc"].ToString());
        int CHIAVE = int.Parse(context.Request.QueryString["chiave"].ToString());

        DataTable dt2 = p.SelectOne(CHIAVE);


        //DataRow dr2 = dt2.Rows[0];
        //byte[] CV = dr2.Field<byte[]>("Materiale");
        string titolo = dt2.Rows[0]["Titolo_Materiale"].ToString();
        string tipo = dt2.Rows[0]["Tipo_Materiale"].ToString();
        byte[] materiale = (byte[])dt2.Rows[0]["Materiale"];


        //string tipo = dt.Rows[0]["tipo"].ToString();
        //byte[] ImgData = (byte[])dt.Rows[0]["doc"];

        context.Response.Buffer = true;
        context.Response.Charset = "";
        context.Response.AppendHeader("Content-Disposition", "attachement; filename=" +titolo); //cv + nome cognome
        context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        context.Response.ContentType = tipo; //application/pdf
        context.Response.BinaryWrite(materiale);
        context.Response.Flush();
        context.Response.End();
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}