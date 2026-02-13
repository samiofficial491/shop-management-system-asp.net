<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Shop_Management_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <link href="Login.css" rel="stylesheet" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager runat="server" />

        <div class="login-container">
            <h1 class="title-1">Login</h1>

            <asp:TextBox ID="txtUsername" runat="server" CssClass="username" placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="password" TextMode="Password" placeholder="Password"></asp:TextBox>

            <div class="forgot-password-section">

                <asp:Button ID="btnForgotPassword" runat="server" Text="Forgot Password?" CssClass="forgot-password" />

                <asp:Panel ID="ForgotPasswordPopUp" runat="server" CssClass="pop-up" Style="display: none;">

                    <div class="forgot-password-container">

                        <h1 class="title-2">Forgot Password</h1>

                        <div class="note-wrap">

                            <p class="note">
                                <span>*Note:</span> Enter your email below, and we’ll send you a message with your OTP to reset your password.
                            </p>

                        </div>

                        <asp:TextBox ID="txtEmail" runat="server" CssClass="email" placeholder="Email"></asp:TextBox>

                        <div class="forgot-password-wrap">

                            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="confirm-button" OnClick="btnConfirm_Click" />

                            <asp:Button ID="btnClose" runat="server" CssClass="close-button" Text="Close" />

                        </div>

                        <asp:Label ID="Label" runat="server" ForeColor="Green" CssClass="message"></asp:Label>


                    </div>

                </asp:Panel>

                <ajaxToolkit:ModalPopupExtender ID="ForgotPassowrdModal" runat="server"
                    TargetControlID="btnForgotPassword"
                    PopupControlID="ForgotPasswordPopUp"
                    BackgroundCssClass="modal-background"
                    CancelControlID="btnClose" />

            </div>


            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-button" OnClick="btnLogin_Click" />

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="error-message"></asp:Label>

            <p>
                Don't have an account? <a href="SignUp.aspx">Sign Up!</a>
            </p>

        </div>
    </form>
</body>
</html>
