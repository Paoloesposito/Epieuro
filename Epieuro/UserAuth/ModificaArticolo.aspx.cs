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
            Prodotto prodotto = new Prodotto();
            prodotto = Db.getProdotto(Convert.ToInt32(Request.QueryString["id"]));

            Image1.ImageUrl = $"../Prodotti/Telefonia/Immagini/{prodotto.FotoPrincipale}";
            NomeProdotto.Text = prodotto.Nome;
            DescrizioneBreve.Text = prodotto.DescrizioneBreve;
            DescrizioneLunga.Text = prodotto.DescrizioneEstesa;
            SpecificheProdotto.Text = prodotto.Specifiche;
            Quantita.Text= prodotto.quantita.ToString();
            
            

            


        }
    }
}