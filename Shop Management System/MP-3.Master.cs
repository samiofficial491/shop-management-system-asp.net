using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Management_System
{
	public partial class MP_3 : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void ToggleDashboardMenu_Click(object sender, EventArgs e)
        {
            Panel dashboardMenu = (Panel)FindControl("DashboardMenu");

            if (dashboardMenu != null)
            {
                dashboardMenu.Visible = !dashboardMenu.Visible;
            }
        }

        protected void Dashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}