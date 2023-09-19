﻿using Epieuro.Classi;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 Db.getProdotti(prodotti); 
            }
     
        }

        protected void AddCart_Click(object sender, EventArgs e)
        {
            Button button = (sender as Button);
            int id = Convert.ToInt32(button.CommandArgument);
            Prodotto selPrd = Db.getProdotto(id);
            List<Prodotto> carrello = new List<Prodotto>();
            
            carrello.Add(selPrd);
            Session["carrello"] = carrello; 

        }
    }
}