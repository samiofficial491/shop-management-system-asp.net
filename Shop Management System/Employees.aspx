<%@ Page Title="" Language="C#" MasterPageFile="~/MP-1.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="Shop_Management_System.Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Employees</title>

    <link href="Employees.css" rel="stylesheet" />

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lexend:wght@100..900&display=swap" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body">
        <div>
            <h1 class="title">Employees</h1>
            <hr class="hr" />
        </div>

        <div class="content">
            <div class="container">
                <div class="upper-section">
                    <div class="filter">
                        <asp:LinkButton ID="FilterButton" runat="server">
                            <ion-icon name="options-outline"></ion-icon>
                        </asp:LinkButton>

                        <asp:Panel ID="FilterPopUp" runat="server" CssClass="pop-up" Style="display: none;">
                            <div class="filter-menu-wrap">
                                <div class="filter-menu">
                                    <label for="category">Job Title:</label>
                                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="category">
                                    <asp:ListItem Value="" Text="-- Select --" />
                                    <asp:ListItem Value="assistant-manager" Text="Assistant Manager" />
                                    <asp:ListItem Value="customer-support" Text="Customer Support" />
                                </asp:DropDownList>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"
                                    ControlToValidate="ddlCategory" ForeColor="Red"
                                    CssClass="error-message1"
                                    InitialValue=""
                                    ErrorMessage="Please select a Job Title!" />


                                    <div class="buttons">
                                        <asp:Button ID="ApplyFilter" runat="server" CssClass="filter-menu-button" Text="Apply" OnClick="ApplyFilter_Click"/>
                                        <asp:Button ID="btnClose1" runat="server" CssClass="filter-menu-button" Text="Close" />
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>

                        <ajaxToolkit:ModalPopupExtender ID="FilterModal" runat="server"
                            TargetControlID="FilterButton"
                            PopupControlID="FilterPopUp"
                            BackgroundCssClass="modal-background"
                            CancelControlID="btnClose1" />
                    </div>

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
                                    <label for="EmployeeImage">Employee Image:</label>
                                    <asp:FileUpload ID="EmployeeImage" runat="server" CssClass="employee-image" />

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                                        ControlToValidate="EmployeeImage" ForeColor="Red"
                                        CssClass="error-message"
                                        ErrorMessage="Employee Image is required!" />


                                    <label for="EmployeeName1">Employee Name:</label>
                                    <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="employee-name" Placeholder="Employee Name" />

                                    <asp:RequiredFieldValidator ID="rfvName" runat="server" Display="Dynamic"
                                        ControlToValidate="txtEmployeeName" ForeColor="Red"
                                        CssClass="error-message"
                                        ErrorMessage="Employee Name is required!" />


                                    <div class="add-menu-inputs">
                                        <div class="email-wrap">
                                            <label for="Email">Email:</label>
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="email" Placeholder="Email" TextMode="Email" />

                                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" Display="Dynamic"
                                                ControlToValidate="txtEmail" ForeColor="Red"
                                                CssClass="error-message"
                                                ErrorMessage="Email is required!" />
                                            <asp:RegularExpressionValidator ID="Email" runat="server" Display="Dynamic"
                                                ControlToValidate="txtEmail" ForeColor="Red"
                                                CssClass="error-message"
                                                ErrorMessage="Invalid email format!"
                                                ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$" />
                                        </div>

                                        <div class="phone-number-wrap">
                                            <label for="PhoneNumber">Phone Number:</label>
                                            <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="phone-number" Placeholder="Phone Number" TextMode="Number" />

                                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" Display="Dynamic"
                                                ControlToValidate="txtPhoneNumber" ForeColor="Red"
                                                CssClass="error-message"
                                                ErrorMessage="Phone Number is required!" />
                                            <asp:RegularExpressionValidator ID="revPhone" runat="server" Display="Dynamic"
                                                ControlToValidate="txtPhoneNumber" ForeColor="Red"
                                                CssClass="error-message"
                                                ErrorMessage="Invalid Phone Number!"
                                                ValidationExpression="^\d{11}$" />
                                        </div>
                                    </div>

                                    <div class="add-menu-inputs">
                                        <div class="job-title-wrap">
                                            <label for="catJobTitle">Job Title:</label>
                                            <asp:DropDownList ID="catJobTitle" runat="server" CssClass="job-title">
                                                <asp:ListItem Value="" Text="-- Select --" />
                                                <asp:ListItem Value="assistant-manager" Text="Assistant Manager" />
                                                <asp:ListItem Value="customer-support" Text="Customer Support" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                                                ControlToValidate="catJobTitle" ForeColor="Red"
                                                CssClass="error-message"
                                                InitialValue=""
                                                ErrorMessage="Please select a Job Title!" />

                                        </div>

                                        <div class="joining-date-wrap">
                                            <label for="JoiningDate">Joining Date:</label>
                                            <asp:TextBox ID="JoiningDate" runat="server" CssClass="joining-date" Placeholder="Joining Date" TextMode="Date" />

                                            <asp:RequiredFieldValidator ID="rfvJoiningDate" runat="server" Display="Dynamic"
                                                ControlToValidate="JoiningDate" ForeColor="Red"
                                                CssClass="error-message"
                                                ErrorMessage="Joining Date is required!" />

                                        </div>
                                    </div>

                                    <div class="add-menu-inputs">
                                        <div class="salary-wrap">
                                            <label for="Salary">Salary:</label>
                                            <asp:TextBox ID="Salary" runat="server" CssClass="salary" Placeholder="Salary" TextMode="Number" />

                                            <asp:RequiredFieldValidator ID="rfvSalary" runat="server" Display="Dynamic"
                                                ControlToValidate="Salary" ForeColor="Red"
                                                CssClass="error-message"
                                                ErrorMessage="Salary is required!" />
                                            <asp:RangeValidator ID="rvSalary" runat="server" Display="Dynamic"
                                                ControlToValidate="Salary" ForeColor="Red"
                                                CssClass="error-message"
                                                ErrorMessage="Salary must be between 10,000 and 500,000!"
                                                MinimumValue="10000" MaximumValue="500000" Type="Double" />

                                        </div>

                                        <div class="shift-wrap">
                                            <label for="Shift">Shift:</label>
                                            <asp:DropDownList ID="Shift" runat="server" CssClass="shift">
                                                <asp:ListItem Value="" Text="-- Select --" />
                                                <asp:ListItem Value="morning" Text="Morning" />
                                                <asp:ListItem Value="evening" Text="Evening" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvShift" runat="server" Display="Dynamic"
                                                ControlToValidate="Shift" ForeColor="Red"
                                                CssClass="error-message"
                                                InitialValue=""
                                                ErrorMessage="Please select a Shift!" />

                                        </div>
                                    </div>

                                    <div class="buttons">
                                        <asp:Button ID="btnAddEmployee" runat="server" CssClass="add-menu-button" Text="Add Employeesss" OnClick="btnAddEmployee_Click" />
                                        <asp:Button ID="btnAddEmp" runat="server" Text="Add krein" OnClick="btnAddEmployee_Click" />
                                        <asp:Button ID="btnClose2" runat="server" CssClass="add-menu-button" Text="Close" />
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>

                        <ajaxToolkit:ModalPopupExtender ID="AddModal" runat="server"
                            TargetControlID="AddButton"
                            PopupControlID="AddPopUp"
                            BackgroundCssClass="modal-background"
                            CancelControlID="btnClose2" />
                    </div>
                </div>

                <div class="lower-section">
                    <asp:GridView ID="EmployeesGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="id" CssClass="employees-table">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="Employee ID" />
                            <asp:BoundField DataField="eName" HeaderText="Employee Name" />
                            <asp:BoundField DataField="eEmail" HeaderText="Email" />
                            <asp:BoundField DataField="ePhone" HeaderText="Phone Number" />
                            <asp:BoundField DataField="eJobTitle" HeaderText="Job Title" />
                            <asp:BoundField DataField="eShift" HeaderText="Shift" />

                            <asp:TemplateField HeaderText="Attendance">
                            <ItemTemplate>

                                <div class="attendance">
                                    <label>
                                        <asp:RadioButton ID="rbPresent" runat="server" GroupName="Attendance" Text="Present" />
                                    </label>
                                    <label>
                                        <asp:RadioButton ID="rbAbsent" runat="server" GroupName="Attendance" Text="Absent" />
                                    </label>

                                </div>
                                
                            </ItemTemplate>
                        </asp:TemplateField>

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
                                                        <asp:Button ID="ViewEmployee" runat="server" Text="View" CssClass="view-menu-button" CommandArgument='<%# Eval("id") %>' OnClick="ViewEmployee_Click" />

                                                        <hr />
                                                        <asp:Button ID="PayEmployee" runat="server" Text="Pay" CssClass="pay-menu-button" />
                                                        <hr />
                                                        <asp:Button ID="DeleteEmployee" runat="server" Text="Delete" CssClass="delete-menu-button" OnClick="DeleteEmployee_Click" />
                                                    </div>
                                                </asp:Panel>




                                                <!-- View Employee Modal -->




                                                <asp:Panel ID="ViewEmployeePopUp" runat="server" CssClass="pop-up" Style="display: none;">
                                                    <div class="view-employee-wrap">
                                                        <div class="view-employee">
                                                            <asp:Image ID="imgEmployee" runat="server" CssClass="employee-picture" />
                                                            <asp:LinkButton ID="EditButton" runat="server" CssClass="icon-button" OnClick="EditButton_Click">
                                                                <ion-icon name="pencil"></ion-icon>
                                                            </asp:LinkButton>
                                                            <div>
                                                                <p>
                                                                    <strong>ID:</strong>
                                                                    <asp:Label ID="lblID" runat="server" />
                                                                </p>
                                                                <p>
                                                                    <strong>Name:</strong>
                                                                    <asp:Label ID="lblName" runat="server" />
                                                                </p>
                                                                <div class="view-employee-fields">
                                                                    <div class="email-wrap">
                                                                        <p>
                                                                            <strong>Email:</strong>
                                                                            <asp:Label ID="lblEmail" runat="server" />
                                                                        </p>
                                                                    </div>
                                                                    <div class="phone-number-wrap">
                                                                        <p>
                                                                            <strong>Phone Number:</strong>
                                                                            <asp:Label ID="lblPhoneNumber" runat="server" />
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                                <div class="view-employee-fields">
                                                                    <div class="job-title-wrap">
                                                                        <p>
                                                                            <strong>Job Title:</strong>
                                                                            <asp:Label ID="lblJobTitle" runat="server" />
                                                                        </p>
                                                                    </div>
                                                                    <div class="joining-date-wrap">
                                                                        <p>
                                                                            <strong>Joining Date:</strong>
                                                                            <asp:Label ID="lblJoiningDate" runat="server" />
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                                <div class="view-employee-fields">
                                                                    <div class="salary-wrap">
                                                                        <p>
                                                                            <strong>Salary:</strong>
                                                                            <asp:Label ID="lblSalary" runat="server" />
                                                                        </p>
                                                                    </div>
                                                                    <div class="shift-wrap">
                                                                        <p>
                                                                            <strong>Shift:</strong>
                                                                            <asp:Label ID="lblShift" runat="server" />
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <asp:Button ID="btnClose3" runat="server" CssClass="view-employee-button" Text="Close" />
                                                        </div>
                                                    </div>
                                                </asp:Panel>

                                                <ajaxToolkit:ModalPopupExtender ID="ViewEmployeeModal" runat="server"
                                                    TargetControlID="ViewEmployee"
                                                    PopupControlID="ViewEmployeePopUp"
                                                    BackgroundCssClass="modal-background"
                                                    CancelControlID="btnClose3" />




                                                <!-- Pay Employee Modal -->




                                                <asp:Panel ID="PayEmployeePopUp" runat="server" CssClass="pop-up" Style="display: none;">
                                                    <div class="pay-menu-wrap">
                                                        <div class="pay-menu">
                                                            <label for="EmployeeID">Employee ID:</label>
                                                            <asp:TextBox ID="EmployeeID" runat="server" CssClass="employee-id" Placeholder="Employee ID" TextMode="Number" />

                                                            <asp:RequiredFieldValidator ID="rfvEmployeeID" runat="server" Display="Dynamic"
                                                                ControlToValidate="EmployeeID" ForeColor="Red"
                                                                CssClass="error-message"
                                                                ErrorMessage="Employee ID is required!" />

                                                            <label for="EmployeeName2">Employee Name:</label>
                                                            <asp:TextBox ID="EmployeeName2" runat="server" CssClass="employee-name" Placeholder="Employee Name" />

                                                            <asp:RequiredFieldValidator ID="rfvEmployeeName" runat="server" Display="Dynamic"
                                                                ControlToValidate="EmployeeName2" ForeColor="Red"
                                                                CssClass="error-message"
                                                                ErrorMessage="Employee Name is required!" />

                                                            <label for="BaseSalary">Base Salary:</label>
                                                            <asp:TextBox ID="BaseSalary" runat="server" CssClass="base-salary" Placeholder="Base Salary" TextMode="Number" />

                                                            <asp:RequiredFieldValidator ID="rfvBaseSalary" runat="server" Display="Dynamic"
                                                                ControlToValidate="BaseSalary" ForeColor="Red"
                                                                CssClass="error-message"
                                                                ErrorMessage="Base Salary is required!" />
                                                            <asp:RangeValidator ID="rvBaseSalary" runat="server" Display="Dynamic"
                                                                ControlToValidate="BaseSalary" ForeColor="Red"
                                                                CssClass="error-message"
                                                                ErrorMessage="Salary must be between 10,000 and 500,000!"
                                                                MinimumValue="10000" MaximumValue="500000" Type="Double" />

                                                            <div class="pay-menu-inputs">
                                                                <div class="overtime-wrap">
                                                                    <label for="OverTime">OverTime:</label>
                                                                    <asp:TextBox ID="OverTime" runat="server" CssClass="overtime" Placeholder="OverTime" TextMode="Number" />

                                                                    <asp:RangeValidator ID="rvOverTime" runat="server" Display="Dynamic"
                                                                        ControlToValidate="OverTime" ForeColor="Red"
                                                                        CssClass="error-message"
                                                                        ErrorMessage="Overtime must be between 0 and 100 hours!"
                                                                        MinimumValue="0" MaximumValue="100" Type="Integer" />

                                                                </div>
                                                                <div class="bonus-wrap">
                                                                    <label for="Bonus">Bonus:</label>
                                                                    <asp:TextBox ID="Bonus" runat="server" CssClass="bonus" Placeholder="Bonus" TextMode="Number" />

                                                                    <asp:RangeValidator ID="rvBonus" runat="server" Display="Dynamic"
                                                                        ControlToValidate="Bonus" ForeColor="Red"
                                                                        CssClass="error-message"
                                                                        ErrorMessage="Bonus must be between 0 and 100,000!"
                                                                        MinimumValue="0" MaximumValue="100000" Type="Double" />

                                                                </div>
                                                            </div>
                                                            <div class="pay-menu-inputs">
                                                                <div class="deduction-wrap">
                                                                    <label for="Deduction">Deduction:</label>
                                                                    <asp:TextBox ID="Deduction" runat="server" CssClass="deduction" Placeholder="Deduction" TextMode="Number" />

                                                                    <asp:RangeValidator ID="rvDeduction" runat="server" Display="Dynamic"
                                                                        ControlToValidate="Deduction" ForeColor="Red"
                                                                        CssClass="error-message"
                                                                        ErrorMessage="Deduction must be between 0 and 50,000!"
                                                                        MinimumValue="0" MaximumValue="50000" Type="Double" />

                                                                </div>
                                                                <div class="date-wrap">
                                                                    <label for="Date">Date:</label>
                                                                    <asp:TextBox ID="Date" runat="server" CssClass="date" Placeholder="Date" TextMode="Date" />

                                                                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" Display="Dynamic"
                                                                        ControlToValidate="Date" ForeColor="Red"
                                                                        CssClass="error-message"
                                                                        ErrorMessage="Date is required!" />

                                                                </div>
                                                            </div>
                                                            <label for="NetSalary">Net Salary:</label>
                                                            <asp:TextBox ID="NetSalary" runat="server" CssClass="net-salary" Placeholder="Net Salary" TextMode="Number" ReadOnly="true" />
                                                            <div class="buttons">
                                                                <asp:Button ID="PayEmployeeButton" runat="server" CssClass="pay-employee-menu-button" Text="Pay" OnClick="PayEmployeeButton_Click" />
                                                                <asp:Button ID="btnClose4" runat="server" CssClass="pay-employee-menu-button" Text="Close" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </asp:Panel>

                                                <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
                                                    TargetControlID="PayEmployee"
                                                    PopupControlID="PayEmployeePopUp"
                                                    BackgroundCssClass="modal-background"
                                                    CancelControlID="btnClose4" />
                                            </ContentTemplate>


                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="ToggleEditMenu" EventName="Click" />
                                                <asp:AsyncPostBackTrigger ControlID="DeleteEmployee" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:Button ID="btnSaveAttendance" runat="server" Text="Save Attendance" CssClass="save-attendance-btn" />
                </div>
            </div>
            
        </div>
    </div>
</asp:Content>