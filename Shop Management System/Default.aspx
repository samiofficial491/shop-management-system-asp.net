<%@ Page Title="" Language="C#" MasterPageFile="~/MP-2.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Shop_Management_System.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Home</title>

    <link href="Default.css" rel="stylesheet" runat="server" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div class="hero-section">
            <h1 class="title">Shop Management System</h1>
            <p class="description">Lorem ipsum dolor sit amet consectetur adipisicing elit...</p>
            <asp:LinkButton ID="btnGetStarted" runat="server" CssClass="get-started" PostBackUrl="~/login.aspx" Text="Get Started" />
        </div>

        <div class="about-us">
            <h2 class="title-2">About Us</h2>
            <div class="about-us-section">
                <p class="description">We are a dedicated team committed to providing the best shop management solutions. Our system helps businesses streamline operations efficiently.</p>
            </div>
        </div>

    </div>

</asp:Content>
