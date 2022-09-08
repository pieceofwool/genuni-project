<%@ WebHandler Language="C#" Class="GestoreCv" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class GestoreCv : IHttpHandler {

    public void ProcessRequest (HttpContext context) {

        COMPETENZE.Competenze_WSSoapClient C = new COMPETENZE.Competenze_WSSoapClient(); ;
        //C.COD_DOCENTE = int.Parse(Session["CodiceDoc"].ToString());
        int CHIAVE = int.Parse(context.Request.QueryString["chiave"].ToString());

        DataTable dt2 = C.SelectAllDocente(CHIAVE);


        DataRow dr2 = dt2.Rows[0];
        byte[] CV = dr2.Field<byte[]>("Cv");



        //string tipo = dt.Rows[0]["tipo"].ToString();
        //byte[] ImgData = (byte[])dt.Rows[0]["doc"];

        context.Response.Buffer = true;
        context.Response.Charset = "";
        context.Response.AppendHeader("Content-Disposition", "attachement; filename=CV.pdf" ); //cv + nome cognome
        context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        context.Response.ContentType = "application/pdf"; //application/pdf
        context.Response.BinaryWrite(CV);
        context.Response.Flush();
        context.Response.End();
    }



    public bool IsReusable {
        get {
            return false;
        }
    }

}