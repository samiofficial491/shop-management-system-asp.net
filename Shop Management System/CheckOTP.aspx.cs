using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Management_System
{
    public partial class CheckOTP : System.Web.UI.Page
    {
        Login lg = new Login();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (txtOTP.Text.Trim() == lg.getOTP())
            {
                Response.Redirect("NewPassword.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid OTP.";
            }
        }
    }
}