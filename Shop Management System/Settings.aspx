<%@ Page Title="" Language="C#" MasterPageFile="~/MP-1.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Shop_Management_System.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Settings</title>
    <link href="Settings.css" rel="stylesheet" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div class="image-section">

            <asp:Image ID="imgProfileImage" runat="server" CssClass="profile-image" AlternateText="Profile PIcture" />

            <asp:FileUpload ID="adminImage" runat="server" AutoPostBack="true" CssClass="upload-button" />

          <!--  <label for="btnUpload" class="upload-icon">
                <ion-icon name="camera"></ion-icon>
            </label>
           -->
        </div>

        <div class="info-section">

            <label>Name:</label>
            <asp:TextBox ID="txtName" runat="server" OnTextChanged="Field_Changed" CssClass="form-control"></asp:TextBox>

            <label>Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" OnTextChanged="Field_Changed" CssClass="form-control"></asp:TextBox>

            <label>Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="Field_Changed" CssClass="form-control"></asp:TextBox>

            <div class="password-section">

                <div class="section-1">

                    <label>Password:</label>
                    <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="ShowChangePasswordButton" CssClass="password-control"></asp:TextBox>

                </div>

                <div class="section-2">

                    <asp:Button ID="ChangePassword" runat="server" Text="Change Password" CssClass="change-password" />

                </div>

            </div>

            <hr class="hr" />

            <div class="hidden-section">

                <asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" CssClass="hidden" OnClick="btnSaveChanges_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="hidden" />

            </div>

            <asp:Panel ID="ChangePasswordPopUp" runat="server" CssClass="pop-up" Style="display: none;">

                <div class="change-section">

                    <div class="change-section-1">

                        <h1 class="title">Change Password</h1>
                        <label>Current Password:</label>
                        <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password" CssClass="change-control" Placeholder="Current Password" ></asp:TextBox>

                        <label>New Password:</label>
                        <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="change-control" Placeholder="New Password"></asp:TextBox>

                        <label>Confirm Password:</label>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="change-control" Placeholder="Confirm Password"></asp:TextBox>

                    </div>

                    <div class="change-section-2">

                        <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" CssClass="hidden" OnClick="btnChangePassword_Click" />
                        <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="hidden" />

                    </div>

                </div>

            </asp:Panel>

            <ajaxToolkit:ModalPopupExtender ID="ChangePasswordModal" runat="server"
                TargetControlID="ChangePassword"
                PopupControlID="ChangePasswordPopUp"
                BackgroundCssClass="modal-background"
                CancelControlID="btnClose" />

        </div>

    </div>

</asp:Content>
