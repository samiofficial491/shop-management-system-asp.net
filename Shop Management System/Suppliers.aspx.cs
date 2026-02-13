using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Management_System
{
	public partial class Suppliers : System.Web.UI.Page
	{
        SupplierData supplierData = new SupplierData();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SuppliersGrid.DataSource = supplierData.getSuppliers();
                SuppliersGrid.DataBind();
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

        protected void PaySupplier_Click(object sender, EventArgs e)
        {
            // Pay supplier logic here
        }
        protected void DeleteSupplier_Click(object sender, EventArgs e)
        {
            // Delete supplier logic here
        }


        protected void EditButton_Click(object sender, EventArgs e)
        {
            // Edit supplier logic here
        }

        protected void btnAddSupplier_Click(object sender, EventArgs e)
        {
            string ProSupplier = txtSupplierName.Text;
            string SupPhone = txtPhoneNumber.Text;
            string SupEmail = txtEmail.Text;
            string SupAddress = txtAddress.Text;

            supplierData.insertSupplier(ProSupplier, SupPhone, SupEmail, SupAddress);
        }
    }
}
