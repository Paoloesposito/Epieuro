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
            if (Request.Cookies[".ASPXAUTH"] != null&& Request.Cookies["userLoged"]!=null)
            {

                LogoutButton1.Text = "Logout";
                NomeUtente.Text = $"Benvenuto, {Request.Cookies["userLoged"].ToString()}" ;
            }
            else
            {
                LogoutButton1.Text = "Login";
            }
        }

        protected void LogoutButton1_Click(object sender, EventArgs e)
        {
            if(Request.Cookies[".ASPXAUTH"] != null && Request.Cookies["userLoged"] != null)
            {
                
                FormsAuthentication.SignOut();

                HttpCookie login = Request.Cookies["userLoged"];

                login.Expires = DateTime.Now.AddMinutes(-1);
                Response.Cookies.Add(login);
                Response.Redirect(FormsAuthentication.DefaultUrl);
            }
            else
            {
                

                Response.Redirect(FormsAuthentication.LoginUrl);
            }
            
        }
    }
}