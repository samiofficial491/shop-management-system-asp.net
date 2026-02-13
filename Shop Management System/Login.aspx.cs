using System;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Management_System
{
    public partial class Login : Page
    {
        AdminData adminData = new AdminData();
        static string otp;
        string recieverEmail;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if (username == adminData.getAdminUsername() && password == adminData.getAdminPassword())
            {
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
            }
        }

        
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            recieverEmail = txtEmail.Text;
            if(recieverEmail == adminData.getAdminEmail())
            {
                otp = GenrateOTP();
                //Application["OTP"] = otp;
                if (!(string.IsNullOrEmpty(otp) || string.IsNullOrEmpty(recieverEmail)))
                {
                    SendOTP(recieverEmail, otp);
                    Server.Transfer("CheckOTP.aspx");
                }

                txtEmail.Text = "";
            }
            
        }

        public string getOTP()
        {
            return otp;
        }

        public string getRecieverEmail()
        {
            return recieverEmail;
        }

        public string GenrateOTP()
        {
            Random random = new Random();
            int otp = random.Next(1000, 9999);
            return otp.ToString();
        }
        public void SendOTP(string recieverEmail, string otp)
        {
            try
            {
                string senderEmail = "im.7249000@gmail.com";
                string senderPassword = "lxif gyoh hwdx sflt ";

                MailMessage mail = new MailMessage();
                mail.Subject = "OTP for Shop Management System";
                mail.From = new MailAddress(senderEmail);
                mail.Body = "Here is your OTP: " + otp;
                mail.To.Add(txtEmail.Text);

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com")
                {
                    Port = 587,
                    Credentials = new NetworkCredential(senderEmail, senderPassword),
                    EnableSsl = true
                };
                smtpClient.Send(mail);
                lblMessage.Text = "Message sent!";
            }

            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }

        }
    }
}
