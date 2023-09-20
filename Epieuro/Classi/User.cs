using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Epieuro.Classi
{
    public class User
    {
        public int IdUser { get; set; }
        public string Nome { get; set; }
        public string Cognome { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string FotoProfilo {  get; set; }        
        
        public int Ruolo { get; set; }
        
        public User() { }

        public User(string nome,string cognome, string mail, string password, string foto = "", int ruolo = 1) 
        { 
           Nome = nome;
            Cognome = cognome;
            Email = mail;
            Password = password;
            FotoProfilo = foto;
            Ruolo = ruolo;       
        }

        
    }
}