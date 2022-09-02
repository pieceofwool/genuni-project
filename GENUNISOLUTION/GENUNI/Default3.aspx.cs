using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;


public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            CORSI.Corsi_WSSoapClient corsi = new CORSI.Corsi_WSSoapClient();
            

            DataTable dt = corsi.SelectAll();
            if (corsi != null)

            {
                foreach (DataRow corsi1 in dt.Rows)
                {
                //    byte[] bytes = corsi1.Field<byte[]>("Avatar_Corso");

                //    //Byte[] bytes = (Byte[])dt.Rows[2]["Avatar_Corso"];

                //    Response.Buffer = true;

                //    Response.Charset = "";

                //    Response.Cache.SetCacheability(HttpCacheability.NoCache);

                //    //Response.ContentType = dt.Rows[0]["Tipo_Img"].ToString();
                //    Response.ContentType = corsi1.Field<string>("Tipo_Img");

                //    //Response.AddHeader("content-disposition", "attachment;filename="

                //    //        + dt.Rows[0]["Titolo"].ToString());

                //    Response.BinaryWrite(bytes);

                //    Response.Flush();

                //    Response.End();

                    string tipo = corsi1.Field<string>("Tipo_Img").ToString();

                    byte[] arr1 = corsi1.Field<byte[]>("Avatar_Corso");
                    //byte[] arr1 = (byte[])dt.Rows[0]["Avatar"];
                    if (arr1 != null)
                    {
                        string base64String1 = Convert.ToBase64String(arr1, 0, arr1.Length);
                        string Src = "data:image/" + tipo + ";base64," + base64String1;
                        lit.Text += "<img style='width:200px' src='" + Src + "' />";
                    }

                }

            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        string contentType = FileUpload1.PostedFile.ContentType;
        using (Stream fs = FileUpload1.PostedFile.InputStream)
        {
            using (BinaryReader br = new BinaryReader(fs))
            {
                byte[] bytes = br.ReadBytes((Int32)fs.Length);
                CORSI.Corsi_WSSoapClient corsi = new CORSI.Corsi_WSSoapClient();
                corsi.Insert(1, filename, "pluto", "paperino", bytes, txtData.Text, contentType);
            }
        }
    }
}