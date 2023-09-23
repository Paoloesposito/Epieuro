using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Epieuro.UserAuth
{
    public partial class TuttiGliArticoli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack)
            {
                bool admin = Db.isAdmin();
                if (!admin)
                {
                    Response.Redirect("../Default.aspx");
                }
            }
            
            
            
            
            tbody.InnerHtml = Db.PopulateDashboard();
        }
    }
}