using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Epieuro
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Codice eseguito all'avvio dell'applicazione
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            
            if (!Roles.RoleExists("admin"))
            {
             
                Roles.CreateRole("admin");
            }
            if(!Roles.RoleExists("user"))
            {

                Roles.CreateRole("user");
            }




        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            if (HttpContext.Current.User != null && HttpContext.Current.User.Identity.IsAuthenticated)
            {
                // Leggi il ruolo dal cookie di autenticazione
                FormsIdentity identity = HttpContext.Current.User.Identity as FormsIdentity;
                FormsAuthenticationTicket ticket = identity.Ticket;

                string ruolo = ticket.UserData;

                if (ruolo == "admin")
                {
                    //codice per redirect to dashboard
                }
            
                else if (ruolo == "user")
                {
                     Response.Redirect(FormsAuthentication.DefaultUrl);
                }
            }
        }




    }
}