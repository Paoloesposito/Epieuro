using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Epieuro.Classi
{
    public class Prodotto
    {
        public int IdProdotto {  get; set; }
        public string Nome { get; set; }
        public string DescrizioneBreve { get; set; }
        public string DescrizioneEstesa { get; set; }
        public int quantita {  get; set; }
        public string FotoPrincipale { get; set; }
        public string FotoExtra {  get; set; }
        public string Specifiche { get; set; }
        public double Prezzo {  get; set; }
        public int IdBrand { get; set; }
        public int IdCategoria { get; set; }

        public Prodotto() { }

        //costruttore con tutti i parametri
        public Prodotto(int idProdotto, string nome, string descrizioneBreve, string descrizioneEstesa, int quantita, string fotoPrincipale, string fotoExtra, string specifiche, double prezzo, int idBrand, int idCategoria)
        {
            IdProdotto = idProdotto;
            Nome = nome;
            DescrizioneBreve = descrizioneBreve;
            DescrizioneEstesa = descrizioneEstesa;
            this.quantita = quantita;
            FotoPrincipale = fotoPrincipale;
            FotoExtra = fotoExtra;
            Specifiche = specifiche;
            Prezzo = prezzo;
            IdBrand = idBrand;
            IdCategoria = idCategoria;
        }
       
        // costruttore con solo parametri not null
        public Prodotto(int idProdotto, string nome, string descrizioneBreve, string descrizioneEstesa, string fotoPrincipale, string specifiche, double prezzo, int idBrand, int idCategoria)
        {
            IdProdotto = idProdotto;
            Nome = nome;
            DescrizioneBreve = descrizioneBreve;
            DescrizioneEstesa = descrizioneEstesa;
            FotoPrincipale = fotoPrincipale;    
            Specifiche = specifiche;
            Prezzo = prezzo;
            IdBrand = idBrand;
            IdCategoria = idCategoria;
        }


       


    }
}