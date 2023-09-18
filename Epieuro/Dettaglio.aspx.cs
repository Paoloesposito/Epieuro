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
            Prodotto selectedPrd = new Prodotto();
            

            if (!IsPostBack) 
            {
                int Id = Convert.ToInt32(Request.QueryString["idProdotto"]);
                
                Db.getProdotto(Id, selectedPrd);



            }


        }
    }
}