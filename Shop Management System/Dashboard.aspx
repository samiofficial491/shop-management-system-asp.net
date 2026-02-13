<%@ Page Title="" Language="C#" MasterPageFile="~/MP-1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Shop_Management_System.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Dashboard</title>

    <link href="Dashboard.css" rel="stylesheet" runat="server" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div class="content">

            <div>
                <h1 class="title">Sales</h1>
                <hr class="hr" />
            </div>

            <div class="container"></div>

            <div>
                <h1 class="title">Employee's Attendance</h1>
                <hr class="hr" />
            </div>

            <div class="container"></div>

            <div>
                <h1 class="title">Inventory Status</h1>
                <hr class="hr" />
            </div>

            <div class="container"></div>

            <div>
                <h1 class="title">Salaries</h1>
                <hr class="hr" />
            </div>

            <div class="container"></div>

        </div>

    </div>

</asp:Content>
