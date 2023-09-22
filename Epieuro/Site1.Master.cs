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
            bool admin;
            bool IsLogged;
            
            if (!IsPostBack)
            {

            if (Request.Cookies[".ASPXAUTH"] != null)
            {
                    IsLogged = true;
                    ImgProfilo.Visible = IsLogged;
                LogoutButton1.Text = "Logout";
                FormsIdentity identity = HttpContext.Current.User.Identity as FormsIdentity;
                FormsAuthenticationTicket ticket = identity.Ticket;
                string nome = ticket.Name;
                User utente = Db.GetUser(nome);
                    if (utente.FotoProfilo.Length<2) 
                    { 
                    ImgProfilo.ImageUrl = $"Content/UserImg/imgUserProfiloNav.png";

                    }
                    else 
                    {
                        ImgProfilo.ImageUrl = $"Content/UserImg/{utente.FotoProfilo}";

                    }

                    admin = Db.isAdmin();


                NomeUtente.Text = $"Benvenuto {utente.Nome}" ;
                adminPage.Visible = admin;
            }
            else
            {
                   
                    admin = false;
                    adminPage.Visible = false;
                LogoutButton1.Text = "Login";
            }
            }
            else
            {
                IsLogged = false;
                ImgProfilo.Visible = IsLogged;
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