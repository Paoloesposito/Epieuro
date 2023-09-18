using Epieuro.Classi;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Epieuro
{
    public static class Db
    {
        public static string connectionString = ConfigurationManager.ConnectionStrings["ConnectionStringDB"].ConnectionString.ToString();
        public static SqlConnection conn = new SqlConnection(connectionString);

        public static void getProdotti(Repeater myrepeater)
        {
            SqlCommand cmd = new SqlCommand("select * from PRODOTTI", conn);
            SqlDataReader sqlDataReader;
            conn.Open();
            List<Prodotto> listaProdotti = new List<Prodotto>();
            sqlDataReader = cmd.ExecuteReader();

            while (sqlDataReader.Read())
            {
                Prodotto prodotto = new Prodotto(
                   Convert.ToInt32( sqlDataReader["IdProdotto"]),
                   sqlDataReader["Nome"].ToString(),
                   sqlDataReader["DescrizioneBreve"].ToString(),
                   sqlDataReader["DescrizioneEstesa"].ToString(),
                   Convert.ToInt32(sqlDataReader["Quantita"]),
                   sqlDataReader["FotoPrincipale"].ToString(),
                   sqlDataReader["FotoExtra"].ToString(),
                   sqlDataReader["Specifiche"].ToString(),
                   Convert.ToDouble(sqlDataReader["Prezzo"]),
                   Convert.ToInt32(sqlDataReader["idBrand"]),
                   Convert.ToInt32(sqlDataReader["idCategoria"])
                    );
                listaProdotti.Add(prodotto);

            }

            myrepeater.DataSource = listaProdotti;
            myrepeater.DataBind();

            conn.Close();


        }

        public static void getProdotto (int id, Prodotto varProdotto) 
        {
            SqlCommand cmd = new SqlCommand("select * from PRODOTTI WHERE IdContatto=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            SqlDataReader sqlDataReader;
            conn.Open();
            sqlDataReader = cmd.ExecuteReader();
            while (sqlDataReader.Read())
            {
                Prodotto prodotto = new Prodotto(
                   Convert.ToInt32(sqlDataReader["IdProdotto"]),
                   sqlDataReader["Nome"].ToString(),
                   sqlDataReader["DescrizioneBreve"].ToString(),
                   sqlDataReader["DescrizioneEstesa"].ToString(),
                   Convert.ToInt32(sqlDataReader["Quantita"]),
                   sqlDataReader["FotoPrincipale"].ToString(),
                   sqlDataReader["FotoExtra"].ToString(),
                   sqlDataReader["Specifiche"].ToString(),
                   Convert.ToDouble(sqlDataReader["Prezzo"]),
                   Convert.ToInt32(sqlDataReader["idBrand"]),
                   Convert.ToInt32(sqlDataReader["idCategoria"])
                   );
                varProdotto=prodotto;
            }
            
        }

    }
}