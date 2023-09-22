using Epieuro.Classi;
using Epieuro.UserAuth;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
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
       
        public static List<Brand> getBrand() 
        {
            SqlCommand cmd = new SqlCommand("select * from Brand", conn);
            SqlDataReader sqlDataReader;
            conn.Open();
            List<Brand> listaBrand = new List<Brand>();
            sqlDataReader = cmd.ExecuteReader();

            while (sqlDataReader.Read())
            {
                Brand brand = new Brand(
                   Convert.ToInt32(sqlDataReader["IdBrand"]),
                   sqlDataReader["NomeBrand"].ToString()
                );
                listaBrand.Add(brand);
            }

            conn.Close();
            return listaBrand;



        }
        
        
        public static List<Categorie> getCategorie() 
        {

            SqlCommand cmd = new SqlCommand("select * from CATEGORIA", conn);
            SqlDataReader sqlDataReader;
            conn.Open();
            List<Categorie> listaCategorie = new List<Categorie>();
            sqlDataReader = cmd.ExecuteReader();

            while (sqlDataReader.Read())
            {
                Categorie categoria = new Categorie(
                   Convert.ToInt32(sqlDataReader["IdCategoria"]),
                   sqlDataReader["Nome"].ToString()
                );
                listaCategorie.Add(categoria);
            }
            
                conn.Close();
            return listaCategorie;
        }

        public static void getPrdCategoria (Repeater myrepeater, int IdCategoria) 
        {
            SqlCommand cmd = new SqlCommand("select * from PRODOTTI WHERE IdCategoria=@IdCategoria", conn);
            cmd.Parameters.AddWithValue("IdCategoria", IdCategoria);
            SqlDataReader sqlDataReader;
            conn.Open();
            List<Prodotto> listaProdotti = new List<Prodotto>();
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

        public static void getProdottiCarrello(Repeater repeatercarrello,List<Prodotto>Carrello)
        {
            repeatercarrello.DataSource = Carrello;
            repeatercarrello.DataBind();
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

        public static User GetUser(string email)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from UTENTE INNER JOIN RUOLI ON UTENTE.IdRuolo = RUOLI.IdRuolo WHERE UTENTE.Email = @email", conn);
                cmd.Parameters.AddWithValue("@email", email);
                SqlDataReader sqldatareader;
                conn.Open();
                sqldatareader = cmd.ExecuteReader();


                User myUser = new User();
                while (sqldatareader.Read())
                {
                    User user = new User(
                    Convert.ToInt32(sqldatareader["IdUser"]),
                    sqldatareader["Nome"].ToString(),
                    sqldatareader["Cognome"].ToString(),
                    sqldatareader["Email"].ToString(),
                    sqldatareader["Password"].ToString(),
                    sqldatareader["FotoProfilo"].ToString(),
                    Convert.ToInt32(sqldatareader["IdRuolo"]),
                    sqldatareader["Ruolo"].ToString()

                    );


                    myUser = user;
                }
                return myUser;
            }
            catch
            {
                User failedUser = new User();
                return failedUser;
            }



            finally { conn.Close(); }
        }


        public static string PopulateDashboard()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select prodotti.IdProdotto as idprodotto," +
                " prodotti.Nome as nome," +
                " prodotti.Quantita as quantita," +
                " BRAND.NomeBrand as brand," +
                " prodotti.Prezzo as prezzo," +
                " CATEGORIA.Nome as nomeCategoria" +
                " from prodotti\r\nleft join CATEGORIA on prodotti.IdCategoria = categoria.IdCategoria \r\n" +
                "left join BRAND on PRODOTTI.IdBrand = BRAND.IdBrand";
            SqlDataReader sqlDataReader;
            conn.Open();
            sqlDataReader = cmd.ExecuteReader();

            string htmltext = "";

            while(sqlDataReader.Read())
            {
                string idProdotto = sqlDataReader["idProdotto"].ToString();
                string nomeProdotto = sqlDataReader["nome"].ToString();
                string quantitaProdotto = sqlDataReader["quantita"].ToString() ;
                string brandProdotto = sqlDataReader["brand"].ToString();
                string prezzoProdotto = sqlDataReader["prezzo"].ToString();
                string categoriaProdotto = sqlDataReader["nomeCategoria"].ToString();

                htmltext += $"<tr>\r\n " +
                    $"      <th scope=\"row\">{idProdotto}</th>\r\n " +
                    $"      <td>{nomeProdotto}</td>\r\n " +
                    $"      <td>{quantitaProdotto}</td>\r\n" +
                    $"      <td>{brandProdotto}</td>\r\n  " +
                    $"      <td>{prezzoProdotto}</td>\r\n  " +
                    
                    $"      <td>{categoriaProdotto}</td>\r\n " +
                    $"      <td><a href=\"https://localhost:44326/UserAuth/ModificaArticolo.aspx?id={idProdotto}\">Dettagli</a></td>\r\n " +
                $"      </tr>";
                
            }
            conn.Close();
            return htmltext;
        }
       


        public static bool isAdmin() 
        {
            FormsIdentity identity = HttpContext.Current.User.Identity as FormsIdentity;
            FormsAuthenticationTicket ticket = identity.Ticket;
            string ruolo = ticket.UserData;
            if (ruolo != null && ruolo == "admin" ) 
            { 
                return true;
                           
            }else
            {
                return false;
            }


        }

        public static void updatePrd(Prodotto prd)
        {
            try
            {

            SqlCommand update = new SqlCommand("UPDATE PRODOTTI SET Nome = @Nome,DescrizioneBreve = @DescrizioneBreve,DescrizioneEstesa = @DescrizioneEstesa, Prezzo = @Prezzo, Quantita = @Quantita, FotoPrincipale = @FotoPrincipale, Specifiche = @Specifiche, idCategoria = @IdCategoria,idBrand = @IdBrand WHERE IdProdotto = @IdProdotto  ", conn);
            update.Parameters.AddWithValue("@Nome", prd.Nome);
            update.Parameters.AddWithValue("@DescrizioneBreve", prd.DescrizioneBreve);
            update.Parameters.AddWithValue("@DescrizioneEstesa", prd.DescrizioneEstesa);
            update.Parameters.AddWithValue("@Prezzo", prd.Prezzo);
            update.Parameters.AddWithValue("@Quantita", prd.quantita);
            update.Parameters.AddWithValue("@FotoPrincipale", prd.FotoPrincipale);
            update.Parameters.AddWithValue("@Specifiche", prd.Specifiche);
            update.Parameters.AddWithValue("@IdCategoria", prd.IdCategoria);
            update.Parameters.AddWithValue("@IdBrand", prd.IdBrand);
            update.Parameters.AddWithValue("@IdProdotto", prd.IdProdotto);
            
            conn.Open();
            update.ExecuteNonQuery();
            
            }
            catch (Exception ex) 
            { 
            
            }
            finally { conn.Close(); };


        }

 public static void addPrd(Prodotto prd) {

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "INSERT INTO PRODOTTI (Nome, DescrizioneBreve, DescrizioneEstesa, Prezzo, Quantita, FotoPrincipale, Specifiche, IdCategoria, IdBrand, IdProdotto) " +
                                  "VALUES (@Nome, @DescrizioneBreve, @DescrizioneEstesa, @Prezzo, @Quantita, @FotoPrincipale, @Specifiche, @IdCategoria, @IdBrand, @IdProdotto)";

                cmd.Parameters.AddWithValue("@Nome", prd.Nome);
                cmd.Parameters.AddWithValue("@DescrizioneBreve", prd.DescrizioneBreve);
                cmd.Parameters.AddWithValue("@DescrizioneEstesa", prd.DescrizioneEstesa);
                cmd.Parameters.AddWithValue("@Prezzo", prd.Prezzo);
                cmd.Parameters.AddWithValue("@Quantita", prd.quantita);
                cmd.Parameters.AddWithValue("@FotoPrincipale", prd.FotoPrincipale);
                cmd.Parameters.AddWithValue("@Specifiche", prd.Specifiche);
                cmd.Parameters.AddWithValue("@IdCategoria", prd.IdCategoria);
                cmd.Parameters.AddWithValue("@IdBrand", prd.IdBrand);
                cmd.Parameters.AddWithValue("@IdProdotto", prd.IdProdotto);

                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                // Gestisci eventuali eccezioni qui
            }
            finally
            {
                conn.Close();
            }



        }
        public static void deletePrd(Prodotto prd)
        {
            try
            {
                conn.Open();
                SqlCommand delete = new SqlCommand("DELETE FROM PRODOTTI WHERE IdProdotto =@IdProdotto", conn);
                delete.Parameters.AddWithValue("IdProdotto", prd.IdProdotto);

                delete.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }
            finally { conn.Close(); };
        }



    }
}