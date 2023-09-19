using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Epieuro.Classi
{
    public class Categorie
    {
        public int IdCategoria { get; set; }
        public string Nome {  get;set; }
    
        public Categorie() { }
        public Categorie(int Id, string nome) 
        { 
            IdCategoria = Id;
            Nome = nome;
        }
    }
}