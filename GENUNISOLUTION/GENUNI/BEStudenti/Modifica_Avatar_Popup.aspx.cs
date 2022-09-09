using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BEStudenti_Modifica_Avatar_Popup : System.Web.UI.Page
{
    string[] estensioni = { ".jpg", ".png", ".bmp" };

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnAvatar_Click(object sender, EventArgs e)
    {
        ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();
        int CHIAVE = int.Parse(Session["CodiceAttore"].ToString());
        //int CHIAVE = 1;
        byte[] img = FileUploadAvatar.FileBytes;
        string TIPOIMG = FileUploadAvatar.PostedFile.ContentType;

        if (FileUploadAvatar.HasFile)
        {
            if (!estensioni.Contains(Path.GetExtension(FileUploadAvatar.FileName)))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Formato file non valido: caricare .jpg, .png o .bmp')", true); ;
                return;
            }

            E.UpdateAvatar(CHIAVE, img, TIPOIMG);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Avatar cambiato correttamente')", true);

        }

        else
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "ATTENZIONE", "alert('Inserire un file')", true);
            return;
        }

    }
}