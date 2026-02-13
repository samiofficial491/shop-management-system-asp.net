<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOTP.aspx.cs" Inherits="Shop_Management_System.CheckOTP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check OTP</title>

    <link href="CheckOTP.css" rel="stylesheet" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="otp-container">
            <h1 class="title">Check your Inbox</h1>

            <asp:TextBox ID="txtOTP" runat="server" CssClass="otp"  placeholder="Enter OTP"></asp:TextBox>
            
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="confirm-button" OnClick="btnConfirm_Click" />

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="error-message"></asp:Label>

        </div>
    </form>
</body>
</html>
