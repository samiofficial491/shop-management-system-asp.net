<%@ Page Title="" Language="C#" MasterPageFile="~/MP-2.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Shop_Management_System.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Contact Us</title>

    <link href="ContactUs.css" rel="stylesheet" runat="server" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div class="section">

            <h1 class="title">Contact Us</h1>
            <hr class="hr"/>

            <div class="contact-us">

                <div class="contact-us-section">
                    <asp:Image ID="Image1" runat="server" CssClass="picture" ImageUrl="~/Images/Picture.jpg" />
                    <p class="contact">
                        John Doe<br>
                        johndoe@example.com<br>
                        +123-456-7890
                    </p>
                </div>
                <div class="contact-us-section">
                    <asp:Image ID="Image2" runat="server" CssClass="picture" ImageUrl="~/Images/Picture.jpg" />
                    <p class="contact">
                        Jane Smith<br>
                        janesmith@example.com<br>
                        +987-654-3210
                    </p>
                </div>
                <div class="contact-us-section">
                    <asp:Image ID="Image3" runat="server" CssClass="picture" ImageUrl="~/Images/Picture.jpg" />
                    <p class="contact">
                        John Doe<br>
                        johndoe@example.com<br>
                        +123-456-7890
                    </p>
                </div>
                <div class="contact-us-section">
                    <asp:Image ID="Image4" runat="server" CssClass="picture" ImageUrl="~/Images/Picture.jpg" />
                    <p class="contact">
                        Jane Smith<br>
                        janesmith@example.com<br>
                        +987-654-3210
                    </p>
                </div>
                <div class="contact-us-section">
                    <asp:Image ID="Image5" runat="server" CssClass="picture" ImageUrl="~/Images/Picture.jpg" />
                    <p class="contact">
                        John Doe<br>
                        johndoe@example.com<br>
                        +123-456-7890
                    </p>
                </div>
                <div class="contact-us-section">
                    <asp:Image ID="Image6" runat="server" CssClass="picture" ImageUrl="~/Images/Picture.jpg" />
                    <p class="contact">
                        Jane Smith<br>
                        janesmith@example.com<br>
                        +987-654-3210
                    </p>
                </div>
            </div>

        </div>

    </div>

</asp:Content>
