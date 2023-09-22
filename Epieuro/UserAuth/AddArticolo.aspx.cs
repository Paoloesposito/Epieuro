using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Epieuro.Classi;

namespace Epieuro.UserAuth
{
    public partial class AddArticolo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void aggiungi_Click(object sender, EventArgs e)
        {
            string FotoName = "";
            if (Foto.HasFile)
            {
                FotoName = Foto.FileName;
                Foto.SaveAs(Server.MapPath($"../Content/UserImg/{Foto.FileName}"));
            }

            
            Prodotto prd = new Prodotto(
                Nome.Text,
                DescBrev.Text,
                DescrizioneEstesa.Text,
                1,
                FotoName,
                Specifiche.Text,
                Convert.ToDouble(prezzo.Text),
                1,
                1
                 );

            Db.addPrd( prd );
            Response.Redirect("TuttiGliArticoli");


        }
    }
}