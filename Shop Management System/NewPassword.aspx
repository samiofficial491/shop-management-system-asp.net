<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPassword.aspx.cs" Inherits="Shop_Management_System.NewPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Password</title>

    <link href="NewPassword.css" rel="stylesheet" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="new-password-container">
            <h1 class="title">Set New Password</h1>

            <asp:TextBox ID="txtNewPassword" runat="server" CssClass="new-password" TextMode="Password"  placeholder="New Password"></asp:TextBox>

            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="confirm-password" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
            
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="confirm-button" OnClick="btnConfirm_Click" />

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="error-message"></asp:Label>

        </div>
    </form>
</body>
</html>
