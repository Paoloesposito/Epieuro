using Epieuro.Classi;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epieuro
{
    public partial class Carrello : System.Web.UI.Page
    {
        List<Prodotto> addCart = new List<Prodotto>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                addCart = Session["carrello"] as List<Prodotto>;
                if(addCart != null)
                {
                    //carrelloBoxVuoto.Visible = false;
                    carrelloGrid.DataSource = addCart;
                    carrelloGrid.DataBind();
                    totaleTesto.Visible = true;
                    totale.Text = $"Totale: {CalcolaTotale()}";
                }
              
            }
            if (addCart == null)
            {
                //carrelloBoxVuoto.Visible = true;
                //carrelloVuoto.InnerHtml = $"OPS! Il tuo carrello è vuoto! <a id='linkCarrello' href=\"Default.aspx\">Premi qui</a> per tornare nella pagina acquisti";
                totaleTesto.Visible = false;
            }
        }
        protected string CalcolaTotale()
        {
            List<Prodotto>carrelloProdotti = Session["carrello"] as List<Prodotto>;
            if(carrelloProdotti != null)
            {
                double totale = carrelloProdotti.Sum(p => p.Prezzo * p.quantitaAcquistata);
                return totale.ToString("C");
            }
            return "0.00";
        }

        protected void ButtonSvuotaCarrello_Click(object sender, EventArgs e)
        {
            Session.Remove("carrello");
            Response.Redirect(Request.RawUrl);
        }

        protected void Elimina_Click(object sender, EventArgs e)
        {
            Button button = (sender as Button);
            int id = Convert.ToInt32(button.CommandArgument);

            if (Session["carrello"] != null)
            {
                List<Prodotto> carrelloProdotti = Session["carrello"] as List<Prodotto>;
                Prodotto prodottoDaEliminare = carrelloProdotti.FirstOrDefault(p => p.IdProdotto == id);

                if(prodottoDaEliminare != null)
                {
                    List<Prodotto>carrelloAggiornato = new List<Prodotto>(carrelloProdotti);
                    carrelloAggiornato.Remove(prodottoDaEliminare);
                    carrelloProdotti.Remove(prodottoDaEliminare);
                    Response.Redirect(Request.RawUrl);
                    Session["carrello"] = carrelloAggiornato;
                }
            }
        }
    }
}