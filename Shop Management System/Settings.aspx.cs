using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Shop_Management_System
{
    public partial class Settings : System.Web.UI.Page
    {
        AdminData adminData = new AdminData();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                byte[] imageData = adminData.getAdminImage();
                if (imageData != null && imageData.Length > 0)
                {
                    // Convert the byte array to a Base64 string
                    string base64Image = Convert.ToBase64String(imageData);

                    // Set the ImageUrl property to a Base64 data URL
                    imgProfileImage.ImageUrl = $"data:image/jpeg;base64,{base64Image}";
                }

                txtName.Text = adminData.getAdminName();
                txtUsername.Text = adminData.getAdminUsername();
                txtEmail.Text = adminData.getAdminEmail();
                txtPassword.Text = adminData.getAdminPassword();
            }
        }

        protected void Field_Changed(object sender, EventArgs e)
        {
            btnSaveChanges.CssClass = "";
            btnCancel.CssClass = "";
        }

        protected void ShowChangePasswordButton(object sender, EventArgs e)
        {
            btnChangePassword.CssClass = "";
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            if(txtNewPassword.Text == txtConfirmPassword.Text)
            {
                txtPassword.Text = txtNewPassword.Text;
            }
            else
            {
              //  lblPasswordError.Text = "Passwords do not match!";
            }
        }

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            byte[] imgUpload = adminImage.FileBytes;
            string adminNewName = txtName.Text;
            string adminNewUsername = txtUsername.Text;
            string adminNewEmail = txtEmail.Text;
            string adminNewPassword = txtPassword.Text;

            adminData.updateAdminData(imgUpload, adminNewName, adminNewUsername, adminNewEmail, adminNewPassword);
        }
    }
}