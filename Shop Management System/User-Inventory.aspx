<%@ Page Title="" Language="C#" MasterPageFile="~/MP-3.Master" AutoEventWireup="true" CodeBehind="User-Inventory.aspx.cs" Inherits="Shop_Management_System.User_Inventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Inventory</title>

    <link href="User-Inventory.css" rel="stylesheet" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div>
            <h1 class="title">Inventory</h1>
            <hr class="hr" />

        </div>

        <main class="content">

            <div class="container">

                <div class="upper-section">

                    <div class="filter">
                        <asp:LinkButton ID="FilterButton" runat="server">
                        <ion-icon name="options-outline"></ion-icon>
                        </asp:LinkButton>

                        <asp:Panel ID="FilterPopUp" runat="server" CssClass="pop-up" Style="display: none;">

                            <div class="filter-menu-wrap">
                                <div class="filter-menu">
                                    <label for="category">Category:</label>
                                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="category">
                                        <asp:ListItem Value="tech" Text="Tech"></asp:ListItem>
                                        <asp:ListItem Value="grocery" Text="Grocery"></asp:ListItem>
                                        <asp:ListItem Value="stationary" Text="Stationary"></asp:ListItem>
                                    </asp:DropDownList>

                                    <div class="filter-menu-inputs">
                                        <div class="price-from-wrap">
                                            <label for="PriceFrom">Price Range:</label>
                                            <asp:TextBox ID="txtPriceFrom" runat="server" CssClass="price-from" placeholder="From"></asp:TextBox>
                                        </div>

                                        <div class="price-to-wrap">
                                            <label for="PriceTo">&nbsp;</label>
                                            <asp:TextBox ID="txtPriceTo" runat="server" CssClass="price-to" placeholder="To"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="buttons-filter">

                                        <asp:Button ID="ApplyFilter" runat="server" CssClass="filter-menu-button" Text="Apply" />
                                        <asp:Button ID="btnClose" runat="server" CssClass="filter-menu-button" Text="Close" />

                                    </div>

                                </div>
                            </div>

                        </asp:Panel>



                        <ajaxToolkit:ModalPopupExtender ID="FilterModal" runat="server"
                            TargetControlID="FilterButton"
                            PopupControlID="FilterPopUp"
                            BackgroundCssClass="modal-background"
                            CancelControlID="btnClose" />

                    </div>


                    <div class="add">
                        <asp:LinkButton ID="AddButton" runat="server">
                        <ion-icon name="add-outline"></ion-icon>
                        </asp:LinkButton>

                        <asp:Panel ID="AddPopUp" runat="server" CssClass="pop-up" Style="display: none;">

                            <div class="add-menu-wrap">

                                <div class="add-menu">
                                    <div class="section">
                                        <div class="add-section">
                                            <asp:Label ID="lblProductName" runat="server" AssociatedControlID="txtProductName" Text="Product Name:" />
                                            <asp:TextBox ID="txtProductName" runat="server" CssClass="product-name" Placeholder="Product Name"></asp:TextBox>

                                            <asp:Label ID="lblCategory" runat="server" AssociatedControlID="ddlCategory" Text="Category:" />
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="category">
                                                <asp:ListItem Value="tech">Tech</asp:ListItem>
                                                <asp:ListItem Value="grocery">Grocery</asp:ListItem>
                                                <asp:ListItem Value="stationary">Stationary</asp:ListItem>
                                            </asp:DropDownList>

                                            <asp:Label ID="lblSubCategory" runat="server" AssociatedControlID="ddlSubCategory" Text="Sub-Category:" />
                                            <asp:DropDownList ID="ddlSubCategory" runat="server" CssClass="sub-category">
                                                <asp:ListItem Value="hard-disk">Hard Disk</asp:ListItem>
                                                <asp:ListItem Value="cooking-oil">Cooking Oil</asp:ListItem>
                                                <asp:ListItem Value="pencil">Pencil</asp:ListItem>
                                            </asp:DropDownList>

                                            <div class="add-menu-inputs">
                                                <div class="price-wrap">
                                                    <asp:Label ID="lblPrice" runat="server" AssociatedControlID="txtPrice" Text="Price:" />
                                                    <asp:TextBox ID="txtPrice" runat="server" CssClass="price" Placeholder="Price" TextMode="Number"></asp:TextBox>
                                                </div>
                                                <div class="quantity-wrap">
                                                    <asp:Label ID="lblQuantity" runat="server" AssociatedControlID="txtQuantity" Text="Quantity:" />
                                                    <asp:TextBox ID="txtQuantity" runat="server" CssClass="quantity" Placeholder="Quantity" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="add-center">
                                            <hr class="add-hr" />
                                        </div>

                                        <div class="add-section">
                                            <asp:Label ID="lblSupplierID" runat="server" AssociatedControlID="txtSupplierID" Text="Supplier ID:" />
                                            <asp:TextBox ID="txtSupplierID" runat="server" CssClass="supplier-id" Placeholder="Supplier ID" TextMode="Number"></asp:TextBox>

                                            <asp:Label ID="lblSupplierName" runat="server" AssociatedControlID="txtSupplierName" Text="Supplier Name:" />
                                            <asp:TextBox ID="txtSupplierName" runat="server" CssClass="supplier-name" Placeholder="Supplier Name"></asp:TextBox>

                                            <div class="add-menu-inputs">
                                                <div class="phone-number-wrap">
                                                    <asp:Label ID="lblPhoneNumber" runat="server" AssociatedControlID="txtPhoneNumber" Text="Phone Number:" />
                                                    <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="phone-number" Placeholder="Phone Number" TextMode="Phone"></asp:TextBox>
                                                </div>
                                                <div class="email-wrap">
                                                    <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email:" />
                                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="email" Placeholder="Email" TextMode="Email"></asp:TextBox>
                                                </div>
                                            </div>

                                            <asp:Label ID="lblAddress" runat="server" AssociatedControlID="txtAddress" Text="Address:" />
                                            <asp:TextBox ID="txtAddress" runat="server" CssClass="address" Placeholder="Address"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="buttons">
                                        <asp:Button ID="btnAddProduct" runat="server" CssClass="add-menu-button" Text="Add" />
                                        <asp:Button ID="btnCancel" runat="server" CssClass="add-menu-button" Text="Close" />
                                    </div>
                                </div>

                            </div>

                        </asp:Panel>

                        <ajaxToolkit:ModalPopupExtender ID="AddModal" runat="server"
                            TargetControlID="AddButton"
                            PopupControlID="AddPopUp"
                            BackgroundCssClass="modal-background"
                            CancelControlID="btnClose" />

                    </div>



                    <div class="search-bar">
                        <ion-icon name="search-outline"></ion-icon>
                        <asp:TextBox ID="SearchInput" runat="server" CssClass="search-input" Placeholder="Search"></asp:TextBox>

                    </div>


                </div>

                <div class="lower-section">
                    <asp:GridView ID="InventoryGrid" runat="server" AutoGenerateColumns="False" CssClass="inventory-table">

                        <Columns>
                            <asp:BoundField DataField="ProID" HeaderText="Product ID" />
                            <asp:BoundField DataField="ProName" HeaderText="Product Name" />
                            <asp:BoundField DataField="ProSupplier" HeaderText="Supplier Name" />
                            <asp:BoundField DataField="ProCategory" HeaderText="Category" />
                            <asp:BoundField DataField="ProPricePerItem" HeaderText="Price" />
                            <asp:BoundField DataField="ProQuantity" HeaderText="Quantity" />
                            <asp:TemplateField HeaderText="">

                                <ItemTemplate>

                                    <div class="edit">
                                        <asp:UpdatePanel ID="EditButtonPanel" runat="server">
                                            <ContentTemplate>
                                                <asp:LinkButton ID="ToggleEditMenu" runat="server" CssClass="icon-button" OnClick="ToggleEditMenu_Click">
                                                <ion-icon name="ellipsis-vertical"></ion-icon>
                                                </asp:LinkButton>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                        <asp:UpdatePanel ID="EditPanel" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <asp:Panel ID="EditMenu" runat="server" CssClass="edit-menu-wrap" Visible="false">
                                                    <div class="edit-menu">
                                                        <asp:Button ID="EditProduct" runat="server" Text="Edit" CssClass="edit-menu-button" OnClick="EditProduct_Click" />
                                                        <hr />
                                                        <asp:Button ID="DeleteProduct" runat="server" Text="Delete" CssClass="delete-menu-button" OnClick="DeleteProduct_Click" />
                                                    </div>
                                                </asp:Panel>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="ToggleEditMenu" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </div>


                                </ItemTemplate>

                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>

                </div>

            </div>

        </main>

    </div>


</asp:Content>
