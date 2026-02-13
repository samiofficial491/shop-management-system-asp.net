<%@ Page Title="" Language="C#" MasterPageFile="~/MP-1.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="Shop_Management_System.Billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Billing</title>

    <link href="Billing.css" rel="stylesheet" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div>
            <h1 class="title">Billing</h1>
            <hr class="hr" />

        </div>

        <div class="content">

            <div class="container">

                <div class="upper-section">

                    <div class="search-bar">
                        <ion-icon name="search-outline"></ion-icon>
                        <asp:TextBox ID="SearchInput" runat="server" CssClass="search-input" Placeholder="Search"></asp:TextBox>

                    </div>

                    <div class="discount">
                        <asp:LinkButton ID="DiscountButton" runat="server" CssClass="icon-button">
                                <ion-icon id="discountIcon" name="pricetags-outline"></ion-icon>
                        </asp:LinkButton>

                        <asp:Panel ID="DiscountPopUp" runat="server" CssClass="pop-up" Style="display: none;">

                            <div class="discount-menu-wrap">
                                <div class="discount-menu">
                                    <label for="DiscountField">Discount:</label>
                                    <asp:TextBox ID="DiscountField" runat="server" CssClass="discount-field" TextMode="Number" Placeholder="Discount"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="DiscountRequiredValidator" runat="server"
                                        ControlToValidate="DiscountField" ErrorMessage="Fill in the field."
                                        CssClass="error-message" Display="Dynamic" ForeColor="Red">
                                    </asp:RequiredFieldValidator>

                                    <asp:RangeValidator
                                        ID="DiscountValidator" runat="server" ControlToValidate="DiscountField" MinimumValue="1" MaximumValue="100"
                                        Type="Integer" ErrorMessage="Enter a valid value(e.g. 1-100)." CssClass="error-message" Display="Dynamic" ForeColor="Red">
                                    </asp:RangeValidator>

                                    <div class="buttons">

                                        <asp:Button ID="ApplyFilter" runat="server" CssClass="discount-menu-button" Text="Apply" />
                                        <asp:Button ID="btnClose" runat="server" CssClass="discount-menu-button" Text="Close" />

                                    </div>
                                </div>
                            </div>

                        </asp:Panel>

                        <ajaxToolkit:ModalPopupExtender ID="DiscountModal" runat="server"
                            TargetControlID="DiscountButton"
                            PopupControlID="discountPopUp"
                            BackgroundCssClass="modal-background"
                            CancelControlID="btnClose" />

                    </div>




                    <div class="generate-report">
                        <asp:Button ID="GenerateReport" runat="server" Text="Generate Report" CssClass="generate-report-button" />

                    </div>

                </div>

                <div class="lower-section">

                    <div class="left">

                        <asp:GridView ID="ProductGrid" runat="server" AutoGenerateColumns="False" CssClass="product-table">
                            <Columns>
                                <asp:BoundField DataField="ProductID" HeaderText="ID" SortExpression="ProductID" />
                                <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                                <asp:BoundField DataField="Price" HeaderText="Price ($)" SortExpression="Price" DataFormatString="{0:C}" />
                            </Columns>
                        </asp:GridView>


                    </div>

                    <div class="right">
                        <div class="summary">

                            <h2>Summary</h2>
                            <div class="summary-item">
                                <label for="SubTotal">Sub-Total:</label>
                                <asp:TextBox ID="SubTotal" runat="server" CssClass="summary-field" TextMode="Number" Placeholder="Sub-Total"></asp:TextBox>
                            </div>
                            <div class="summary-item">
                                <label for="Tax">Tax:</label>
                                <asp:TextBox ID="Tax" runat="server" CssClass="summary-field" TextMode="Number" Placeholder="Tax"></asp:TextBox>
                            </div>
                            <hr class="summary-hr">
                            <div class="summary-item">
                                <label for="Discount">Discount:</label>
                                <asp:TextBox ID="Discount" runat="server" CssClass="summary-field" TextMode="Number" Placeholder="Discount"></asp:TextBox>
                            </div>
                            <hr class="summary-hr">
                            <div class="summary-item">
                                <label for="Total">Total:</label>
                                <asp:TextBox ID="Total" runat="server" CssClass="summary-field" TextMode="Number" Placeholder="Total"></asp:TextBox>
                                <button>Done</button>
                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

</asp:Content>
