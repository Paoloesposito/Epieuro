using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epieuro
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Login.isLoggedIn == true)
            {
                LogoutButton1.Text = "Logout";
                NomeUtente.Text = $"Benvenuto, {Login.utente.Nome.ToString()}" ;
            }
            else
            {
                LogoutButton1.Text = "Login";
            }
        }

        protected void LogoutButton1_Click(object sender, EventArgs e)
        {
            if(Login.isLoggedIn == true)
            {
                
                FormsAuthentication.SignOut();
                Login.isLoggedIn = false;
                Response.Redirect(FormsAuthentication.DefaultUrl);
            }
            else
            {
                

                Response.Redirect(FormsAuthentication.LoginUrl);
            }
            
        }
    }
}