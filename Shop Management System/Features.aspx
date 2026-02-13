<%@ Page Title="" Language="C#" MasterPageFile="~/MP-2.Master" AutoEventWireup="true" CodeBehind="Features.aspx.cs" Inherits="Shop_Management_System.Features" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Features</title>

    <link href="Features.css" " rel="stylesheet" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div class="features">
            <h1 class="title">Features</h1>
            <hr />
            <div class="feature-list">
                <div class="feature-list-item">
                    <h3 class="title-2">Employees Management</h3>
                    <p class="description">Manage employee records, attendance, and payroll efficiently.</p>
                </div>
                <div class="feature-list-item">
                    <h3 class="title-2">Inventory Tracking</h3>
                    <p class="description">Track product stock levels, orders, and supply chain in real-time.</p>
                </div>
                <div class="feature-list-item">
                    <h3 class="title-2">Billing System</h3>
                    <p class="description">Automate billing processes, generate invoices, and manage payments.</p>
                </div>
                <div class="feature-list-item">
                    <h3 class="title-2">Employees Management</h3>
                    <p class="description">Manage employee records, attendance, and payroll efficiently.</p>
                </div>
                <div class="feature-list-item">
                    <h3 class="title-2">Inventory Tracking</h3>
                    <p class="description">Track product stock levels, orders, and supply chain in real-time.</p>
                </div>
                <div class="feature-list-item">
                    <h3 class="title-2">Billing System</h3>
                    <p class="description">Automate billing processes, generate invoices, and manage payments.</p>
                </div>
            </div>
            <asp:LinkButton ID="btnGetStarted" runat="server" CssClass="get-started" PostBackUrl="~/login.aspx" Text="Get Started" />
        </div>

    </div>

</asp:Content>
