using Epieuro.Classi;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epieuro
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string FotoName = "";
            if (Foto.HasFile) 
            {
                FotoName = Foto.FileName;
                Foto.SaveAs(Server.MapPath($"Content/UserImg/{Foto.FileName}"));
                                
            }

            User MyUser = new User(Nome.Text, Cognome.Text, Email.Text, Password.Text, FotoName);

            Db.AddUser(MyUser);
            Response.Redirect("Default.aspx");
        }
    }
}