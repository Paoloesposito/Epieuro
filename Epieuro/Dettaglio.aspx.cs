using Epieuro.Classi;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epieuro
{
    public partial class Dettaglio : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack) 
            {
                Prodotto selectedPrd;
                int Id = Convert.ToInt32(Request.QueryString["idProdotto"]);
                
                selectedPrd = Db.getProdotto(Id);
                Session["selectedPrd"] = selectedPrd;
                //Quantita.Text = "1";

                Descrizione.InnerText = selectedPrd.DescrizioneEstesa;
                //NomeProdotto.InnerText = selectedPrd.Nome;
                PrezzoProdotto.InnerText = $"€ {Convert.ToString(selectedPrd.Prezzo)}";
                Image1.ImageUrl = $"Prodotti/Telefonia/Immagini/{selectedPrd.FotoPrincipale}";
                specifiche.InnerText = selectedPrd.Specifiche;
            }
            

        }

        protected void addCart_Click(object sender, EventArgs e)
        {
          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Prodotto productSelected = Session["selectedPrd"] as Prodotto;
            int q = Convert.ToInt32(quantita.Value);
            List<Prodotto> carrello;
            if (Session["carrello"] == null)
            {
                carrello = new List<Prodotto>();
            }
            else
            {
                carrello = (List<Prodotto>)Session["carrello"];
            }
            productSelected.quantitaAcquistata = q;
            carrello.Add(productSelected);
            Session["carrello"] = carrello;
            Response.Redirect("UserAuth/Carrello.aspx");
        }

        

        //protected void ButtonPiu_Click(object sender, EventArgs e)
        //{
        //    int quantitaAttuale = int.Parse(Quantita.Text);
        //    quantitaAttuale++;
        //    Quantita.Text = quantitaAttuale.ToString();
        //}

        //protected void ButtonMeno_Click(object sender, EventArgs e)
        //{
        //    int quantitaAttuale = int.Parse(Quantita.Text);
        //    if(quantitaAttuale > 1 ) 
        //    {
        //        quantitaAttuale--;
        //        Quantita.Text = quantitaAttuale.ToString();
        //    }
        //}
    }
}