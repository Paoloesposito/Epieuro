using Epieuro.Classi;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epieuro
{
    public partial class Login : System.Web.UI.Page
    {
        static public bool isLoggedIn = false;
        static public User utente = new User();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["user"] != null)
            {
                Response.Redirect("Multisala.aspx");
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            utente = Db.GetUser(EmailLogin.Text);
            if (utente.Email == EmailLogin.Text && utente.Password == PasswordLogin.Text)
            {
                if(ricordami.Checked)
                {
                FormsAuthentication.SetAuthCookie(utente.Nome, true);
                HttpCookie login = new HttpCookie("userLoged");
                    login.Values["username"] = utente.Nome;
                    login.Values["cognome"] = utente.Cognome;
                    login.Expires = DateTime.Now.AddDays(10);
                    Response.Cookies.Add(login);
                    
                    isLoggedIn = true;
                Response.Redirect(FormsAuthentication.DefaultUrl);
                }
                else 
                {
                    FormsAuthentication.SetAuthCookie(EmailLogin.Text, false);
                    HttpCookie login = new HttpCookie("userLoged");
                    login.Values["username"] = utente.Nome;
                    login.Values["cognome"] = utente.Cognome;
                    Response.Cookies.Add(login);
                    isLoggedIn = true;
                    Response.Redirect(FormsAuthentication.DefaultUrl);

                }


            }
            else
            {
                Response.Redirect(FormsAuthentication.LoginUrl);
            }
        }
    }
}