using Epieuro.Classi;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epieuro
{
    public partial class Default : System.Web.UI.Page
    {
        bool isFilter;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                 Db.getProdotti(prodotti);
                 Db.getCategorie(Categorie);
                isFilter = false;
            }
     
        }

        protected void AddCart_Click(object sender, EventArgs e)
        {
            Button button = (sender as Button);
            int id = Convert.ToInt32(button.CommandArgument);
            Prodotto selPrd = Db.getProdotto(id);
            selPrd.quantitaAcquistata = 1;
            List<Prodotto> carrello;

            if (Session["carrello"] == null)
            {
                carrello = new List<Prodotto>();
            }
            else
            {
                carrello = (List<Prodotto>)Session["carrello"];
            }
            carrello.Add(selPrd);
            Session["carrello"] = carrello;
            Response.Redirect("Carrello.aspx");
        }

        protected void btnCat1_Click(object sender, EventArgs e)
        {
            Button button = ( sender as Button );
            int id = Convert.ToInt32(button.CommandArgument);
            
            if (!isFilter) 
            { 
            Db.getPrdCategoria(prodotti,id);
            isFilter = true;
            }
            else 
            { 
            Db.getProdotti(prodotti); isFilter = false;
            
            }
            
        }
    }
}