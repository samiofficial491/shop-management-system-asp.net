using System;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Shop_Management_System
{
    public partial class SignUp : Page
    {
        AdminData adminData = new AdminData();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string imagePath = HttpContext.Current.Server.MapPath("~/Images/Accounts.png");

            // Read the image file into a byte array
            byte[] imageData = File.ReadAllBytes(imagePath);

            string name = txtName.Text;
            string username = txtUsername.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string confirm = txtConfirmPassword.Text;

            if (name == "" || username == "" || email == "" || password == "" || confirm == "")
            {
                lblMessage.Text = "Fill up all the fields.";
            }
            else
            {
                adminData.insertAdminData(imageData, name, username, email, password);
                Response.Redirect("Dashboard.aspx");
            }
        }
    }
}
