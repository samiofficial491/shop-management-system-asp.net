using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace Shop_Management_System
{
    public partial class Employees : System.Web.UI.Page
    {
        EmployeeData empData = new EmployeeData();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                EmployeesGrid.DataSource = empData.getEmployeesData();
                EmployeesGrid.DataBind();
            }
        }
        protected void ToggleEditMenu_Click(object sender, EventArgs e)
        {
            GridViewRow row = (GridViewRow)((Control)sender).NamingContainer;

            Panel editMenu = (Panel)row.FindControl("EditMenu");

            if (editMenu != null)
            {
                editMenu.Visible = !editMenu.Visible;
            }
        }
        protected void DeleteEmployee_Click(object sender, EventArgs e)
        {
        }

        protected void ViewEmployee_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;  // Find the row

            // Find the labels inside the popup
            Label lblID = (Label)row.FindControl("lblID");
            Label lblName = (Label)row.FindControl("lblName");
            Label lblEmail = (Label)row.FindControl("lblEmail");
            Label lblPhoneNumber = (Label)row.FindControl("lblPhoneNumber");
            Label lblJobTitle = (Label)row.FindControl("lblJobTitle");
            Label lblJoiningDate = (Label)row.FindControl("lblJoiningDate");
            Label lblSalary = (Label)row.FindControl("lblSalary");
            Label lblShift = (Label)row.FindControl("lblShift");

            if (lblID != null && lblName != null)
            {
                lblID.Text = row.Cells[0].Text;  // Assuming Employee ID is in first column
                lblName.Text = row.Cells[1].Text;
                lblEmail.Text = row.Cells[2].Text;
                lblPhoneNumber.Text = row.Cells[3].Text;
                lblJobTitle.Text = row.Cells[4].Text;
                lblJoiningDate.Text = row.Cells[5].Text;
                lblSalary.Text = row.Cells[6].Text;
                lblShift.Text = row.Cells[7].Text;

                // Find the ModalPopupExtender
                AjaxControlToolkit.ModalPopupExtender modalPopup = (AjaxControlToolkit.ModalPopupExtender)FindControl("ViewEmployeeModal");

                if (modalPopup != null)
                {
                    modalPopup.Show(); // Show the modal popup
                }
                else
                {
                    // Debugging: Ensure the modal exists
                    System.Diagnostics.Debug.WriteLine("ModalPopupExtender not found.");
                }
            }
            else
            {
                lblID.Text = "Name"; // Assuming Employee ID is in first column
                lblName.Text = "neme";
                lblEmail.Text = "Name";
                lblPhoneNumber.Text = "Name";
                lblJobTitle.Text = "Name";
                lblJoiningDate.Text = "Name";
                lblSalary.Text = "Name";
                lblShift.Text = "Name";
            }
        }


        protected void EditButton_Click(object sender, EventArgs e)
        {
            
        }
        
        


        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            byte[] imgUpload = EmployeeImage.FileBytes;
            string empName = txtEmployeeName.Text;
            string empEmail = txtEmail.Text;
            string empPhNo = txtPhoneNumber.Text;
            string empJobTitle = catJobTitle.SelectedItem.Text;
            DateTime empJoinDate = DateTime.Parse(JoiningDate.Text);
            Decimal empSalary = Decimal.Parse(Salary.Text);
            string empShift = Shift.SelectedItem.Text;

            empData.insertEmpData(imgUpload, empName, empEmail,empPhNo, empJobTitle, empJoinDate, empSalary, empShift);
            Response.Redirect("Employees.aspx");
        }

        protected void ApplyFilter_Click(object sender, EventArgs e)
        {
            string empFilterCat = ddlCategory.SelectedItem.Text;
            EmployeesGrid.DataSource = empData.getEmployeesFilterData(empFilterCat);
            EmployeesGrid.DataBind();
        }

        protected void PayEmployeeButton_Click(object sender, EventArgs e)
        {

        }
    }
}