using Epieuro.Classi;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing.Printing;
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

        public static Prodotto getProdotto(int id)
        {
            Prodotto MyPrd= new Prodotto();
            SqlCommand cmd = new SqlCommand("select * from PRODOTTI WHERE IdProdotto=@id", conn);
            cmd.Parameters.AddWithValue("id", id);
            SqlDataReader sqlDataReader;
            conn.Open();
            sqlDataReader = cmd.ExecuteReader();
            
            while (sqlDataReader.Read())
            {
                   Prodotto prd  = new Prodotto(
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
                MyPrd= prd;
            }
            conn.Close();
            return MyPrd;   
        }
        public static void getCarrello(GridView mygridView)
        {
            
        }

        public static void AddUser(User user) 
        {
            try 
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(
                "INSERT INTO UTENTE VALUES (@Nome, @Cognome, @Email, @Password, @FotoProfilo, @IdRuolo)",conn);

                cmd.Parameters.AddWithValue("Nome", user.Nome);
                cmd.Parameters.AddWithValue("Cognome", user.Cognome);
                cmd.Parameters.AddWithValue("Email", user.Email);
                cmd.Parameters.AddWithValue("Password", user.Password);
                cmd.Parameters.AddWithValue("FotoProfilo", user.FotoProfilo);
                cmd.Parameters.AddWithValue("IdRuolo", user.Ruolo);

                int inserimentoEffettuato = cmd.ExecuteNonQuery();

                if(inserimentoEffettuato > 0)
                {
                    //codice per messaggio di successo
                    // redirect to login page?
                }
            }
            catch (Exception ex) 
            { 
            //codice per messaggio di errore
            }
            finally 
            { 
                conn.Close(); 
            }

        
        }


    }
}