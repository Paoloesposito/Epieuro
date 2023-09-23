using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Epieuro.Classi
{
    public class Brand
    {
        public int IdBrand { get; set; }
        public string Name { get; set; }

        public Brand(int id, string nome) { IdBrand = id; Name = nome;}
    }
}