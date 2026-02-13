<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Shop_Management_System.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>

    <link href="SignUp.css" rel="stylesheet" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="signup-container">
            <h1 class="title">Sign Up</h1>

            <asp:TextBox ID="txtName" runat="server" CssClass="name" placeholder="Name"></asp:TextBox>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="username" placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="email" placeholder="Email" TextMode="Email"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="password" TextMode="Password" placeholder="Password"></asp:TextBox>
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="confirm-password" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>


            <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="signup-button" OnClick="btnSignUp_Click" />

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="error-message"></asp:Label>

            <p>Already have an account? <a href="Login.aspx">Login!</a></p>
        </div>
    </form>
</body>
</html>
