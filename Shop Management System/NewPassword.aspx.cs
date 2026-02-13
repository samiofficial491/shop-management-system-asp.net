using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Management_System
{
    public partial class NewPassword : System.Web.UI.Page
    {
        AdminData adminData = new AdminData();
        Login lg = new Login();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if(txtNewPassword.Text == txtConfirmPassword.Text)
            {
                adminData.updatePassword(txtNewPassword.Text, lg.getRecieverEmail());
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblMessage.Text = "Passwords do not match.";
            }
            Response.Redirect("Login.aspx");
        }
    }
}