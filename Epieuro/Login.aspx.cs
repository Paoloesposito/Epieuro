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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static public bool isLoggedIn = false;
        static public User utente = new User();
        protected void Button1_Click(object sender, EventArgs e)
        {
            utente = Db.GetUser(EmailLogin.Text);
            if (utente.Email == EmailLogin.Text && utente.Password == PasswordLogin.Text)
            {
                FormsAuthentication.SetAuthCookie(EmailLogin.Text, false);
                isLoggedIn = true;
                Response.Redirect(FormsAuthentication.DefaultUrl);

            }
            else
            {
                Response.Redirect(FormsAuthentication.LoginUrl);
            }
        }
    }
}