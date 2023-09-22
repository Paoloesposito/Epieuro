using Epieuro.Classi;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epieuro.UserAuth
{
    public partial class ModificaArticolo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {

            Prodotto prodotto = new Prodotto();
            List<string> listabrand = new List<string>();
            prodotto = Db.getProdotto(Convert.ToInt32(Request.QueryString["id"]));
            List<Categorie> cat = Db.getCategorie();
            List<Brand> brand = Db.getBrand();


            var nomix = cat.Select(elemento => elemento.Nome);
            Cate.DataSource = nomix;
            Cate.DataBind();
            BrandList.DataSource = brand.Select(elemento => elemento.Name);
            BrandList.DataBind();


            Image1.ImageUrl = $"../Prodotti/Telefonia/Immagini/{prodotto.FotoPrincipale}";
            NomeProdotto.Text = prodotto.Nome;
            DescrizioneBreve.Text = prodotto.DescrizioneBreve;
            DescrizioneLunga.Text = prodotto.DescrizioneEstesa;
            SpecificheProdotto.Text = prodotto.Specifiche;
            Quantita.Text= prodotto.quantita.ToString();
            }

          
            //selectBrand.InnerHtml = brandoptionsHtml;
            
            

            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Prodotto prodotto = Db.getProdotto(Convert.ToInt32(Request.QueryString["id"]));
            prodotto.Nome = NomeProdotto.Text;
            prodotto.DescrizioneBreve = DescrizioneBreve.Text;
            prodotto.DescrizioneEstesa = DescrizioneLunga.Text;
            prodotto.Specifiche = SpecificheProdotto.Text;
            prodotto.quantita= Convert.ToInt32( Quantita.Text);
            
            if (UploadImage.HasFile)
            {
            string fileName = "";
                fileName = UploadImage.FileName;

                UploadImage.SaveAs(Server.MapPath($"/Content/img/{UploadImage.FileName}"));

                prodotto.FotoPrincipale = fileName;

            }




            Db.updatePrd(prodotto);
            Response.Redirect("TuttiGliArticoli.aspx");
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {

        }
    }
}