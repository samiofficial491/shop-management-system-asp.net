<%@ Page Title="" Language="C#" MasterPageFile="~/MP-1.Master" AutoEventWireup="true" CodeBehind="Suppliers.aspx.cs" Inherits="Shop_Management_System.Suppliers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Suppliers</title>

    <link href="Suppliers.css" " rel="stylesheet" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div>
            <h1 class="title">Suppliers</h1>
            <hr class="hr" />

        </div>

        <div class="content">

            <div class="container">

                <div class="upper-section">

                    <div class="search-bar">
                        <ion-icon name="search-outline"></ion-icon>
                        <asp:TextBox ID="SearchInput" runat="server" CssClass="search-input" Placeholder="Search" TextMode="Search"></asp:TextBox>

                    </div>

                    <div class="add">
                        <asp:LinkButton ID="AddButton" runat="server">
                            <ion-icon name="add-outline"></ion-icon>
                        </asp:LinkButton>

                        <asp:Panel ID="AddPopUp" runat="server" CssClass="pop-up" Style="display: none;">

                            <div class="add-menu-wrap">

                                <div class="add-menu">

                                    <asp:Label ID="lblSupplierID" runat="server" AssociatedControlID="txtSupplierID" Text="Supplier ID:" />
                                    <asp:TextBox ID="txtSupplierID" runat="server" CssClass="supplier-id" Placeholder="Supplier ID" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvSupplierID" runat="server" ControlToValidate="txtSupplierID" ErrorMessage="Supplier ID is required" CssClass="error-message" Display="Dynamic" ForeColor="Red" />

                                    <asp:Label ID="lblSupplierName" runat="server" AssociatedControlID="txtSupplierName" Text="Supplier Name:" />
                                    <asp:TextBox ID="txtSupplierName" runat="server" CssClass="supplier-name" Placeholder="Supplier Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvSupplierName" runat="server" ControlToValidate="txtSupplierName" ErrorMessage="Supplier Name is required" CssClass="error-message" Display="Dynamic" ForeColor="Red" />

                                    <div class="add-menu-inputs">
                                        <div class="phone-number-wrap">
                                            <asp:Label ID="lblPhoneNumberAdd" runat="server" AssociatedControlID="txtPhoneNumber" Text="Phone Number:" />
                                            <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="phone-number" Placeholder="Phone Number" TextMode="Phone"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Phone Number is required" CssClass="error-message" Display="Dynamic" ForeColor="Red" />
                                            <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" ValidationExpression="^\d{10}$" ErrorMessage="Enter a valid 10-digit phone number" CssClass="error-message" Display="Dynamic" ForeColor="Red" />
                                        </div>
                                        <div class="email-wrap">
                                            <asp:Label ID="lblEmailAdd" runat="server" AssociatedControlID="txtEmail" Text="Email:" />
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="email" Placeholder="Email" TextMode="Email"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="error-message" Display="Dynamic" ForeColor="Red" />
                                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^\s@]+@[^\s@]+\.[^\s@]+$" ErrorMessage="Enter a valid email address" CssClass="error-message" Display="Dynamic" ForeColor="Red" />
                                        </div>
                                    </div>

                                    <asp:Label ID="lblAddressAdd" runat="server" AssociatedControlID="txtAddress" Text="Address:" />
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="address" Placeholder="Address"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required" CssClass="error-message" Display="Dynamic" ForeColor="Red" />

                                    <div class="buttons">
                                        <asp:Button ID="btnAddSupplier" runat="server" CssClass="add-menu-button" Text="Add Supplier" OnClick="btnAddSupplier_Click" />
                                        <asp:Button ID="btnClose1" runat="server" CssClass="add-menu-button" Text="Close" />
                                    </div>

                                </div>

                            </div>

                        </asp:Panel>

                        <ajaxToolkit:ModalPopupExtender ID="AddModal" runat="server"
                            TargetControlID="AddButton"
                            PopupControlID="AddPopUp"
                            BackgroundCssClass="modal-background"
                            CancelControlID="btnClose1" />

                    </div>

                

                <div class="generate-report">
                    <asp:Button ID="GenerateReport" runat="server" Text="Generate Report" CssClass="generate-report-button" />

                </div>

            </div>

            <div class="lower-section">
                <asp:GridView ID="SuppliersGrid" runat="server" AutoGenerateColumns="False" CssClass="suppliers-table">
                    <Columns>
                        <asp:BoundField DataField="SupID" HeaderText="Supplier ID" />
                        <asp:BoundField DataField="SupName" HeaderText="Supplier Name" />
                        <asp:BoundField DataField="SupEmail" HeaderText="Email" />
                        <asp:BoundField DataField="SupPhone" HeaderText="Phone Number" />
                       <!-- <asp:BoundField DataField="OutstandingBalance" HeaderText="Outstanding Balance" /> -->

                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <div class="edit">
                                    <asp:UpdatePanel ID="EditButtonPanel" runat="server">
                                        <ContentTemplate>
                                            <asp:LinkButton ID="ToggleEditMenu" runat="server" CssClass="icon-button" OnClick="ToggleEditMenu_Click" CausesValidation="false" >
                                                    <ion-icon name="ellipsis-vertical"></ion-icon>
                                            </asp:LinkButton>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>

                                    <asp:UpdatePanel ID="EditPanel" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:Panel ID="EditMenu" runat="server" CssClass="edit-menu-wrap" Visible="false">
                                                <div class="edit-menu">
                                                    <asp:Button ID="ViewSupplier" runat="server" Text="View" CssClass="view-menu-button" />
                                                    <hr />
                                                    <asp:Button ID="PaySupplier" runat="server" Text="Pay" CssClass="pay-menu-button" OnClick="PaySupplier_Click" />
                                                    <hr />
                                                    <asp:Button ID="DeleteSupplier" runat="server" Text="Delete" CssClass="delete-menu-button" OnClick="DeleteSupplier_Click" />

                                                </div>
                                            </asp:Panel>




                                            <!-- View Supplier Modal -->

                                            <asp:Panel ID="ViewSupplierPopUp" runat="server" CssClass="pop-up" Style="display: none;">
                                                <div class="view-supplier-wrap">

                                                    <div class="view-supplier">

                                                        <div>

                                                            <asp:LinkButton ID="EditButton" runat="server" CssClass="icon-button" OnClick="EditButton_Click">
                                                            <ion-icon name="pencil"></ion-icon>
                                                            </asp:LinkButton>

                                                            <p>
                                                                <strong>ID:</strong>
                                                                <asp:Label ID="lblID" runat="server" />
                                                            </p>
                                                            <p>
                                                                <strong>Name:</strong>
                                                                <asp:Label ID="lblName" runat="server" />
                                                            </p>

                                                            <div class="view-supplier-fields">
                                                                <div class="email-wrap">
                                                                    <p>
                                                                        <strong>Email:</strong>
                                                                        <asp:Label ID="lblEmailView" runat="server" />
                                                                    </p>
                                                                </div>

                                                                <div class="phone-number-wrap">
                                                                    <p>
                                                                        <strong>Phone Number:</strong>
                                                                        <asp:Label ID="lblPhoneNumberView" runat="server" />
                                                                    </p>
                                                                </div>

                                                            </div>

                                                            <p>
                                                                <strong>Address:</strong>
                                                                <asp:Label ID="lblAddressView" runat="server" />
                                                            </p>

                                                        </div>
                                                        <asp:Button ID="btnClose2" runat="server" CssClass="view-supplier-button" Text="Close" />

                                                    </div>
                                                </div>
                                            </asp:Panel>

                                            <ajaxToolkit:ModalPopupExtender ID="ViewSupplierModal" runat="server"
                                                TargetControlID="ViewSupplier"
                                                PopupControlID="ViewSupplierPopUp"
                                                BackgroundCssClass="modal-background"
                                                CancelControlID="btnClose2" />

                                            <!-- View Employee Modal -->





                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="ToggleEditMenu" EventName="Click" />
                                            <asp:AsyncPostBackTrigger ControlID="DeleteSupplier" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </div>

            </div>

          </div>

        </div>

</asp:Content>
