using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Epieuro.Classi;

namespace Epieuro
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            if (Request.Cookies[".ASPXAUTH"] != null)
            {

                LogoutButton1.Text = "Logout";
                FormsIdentity identity = HttpContext.Current.User.Identity as FormsIdentity;
                FormsAuthenticationTicket ticket = identity.Ticket;
                string nome = ticket.Name;
                User utente = Db.GetUser(nome);


                NomeUtente.Text = $"Benvenuto {utente.Nome}" ;
            }
            else
            {
                LogoutButton1.Text = "Login";
            }
            }
        }

        protected void LogoutButton1_Click(object sender, EventArgs e)
        {
            HttpCookie userLogedCookie = Request.Cookies[".ASPXAUTH"];
            if(userLogedCookie != null)
            {
                FormsAuthentication.SignOut();              
                userLogedCookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(userLogedCookie);
                Response.Redirect(FormsAuthentication.LoginUrl);

                
            }
            else
            {
                

                Response.Redirect(FormsAuthentication.LoginUrl);
            }
            
        }
    }
}