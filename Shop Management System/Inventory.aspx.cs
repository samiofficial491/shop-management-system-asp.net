using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Management_System
{
    public partial class Inventory : System.Web.UI.Page
    {
        InventoryData inventoryData = new InventoryData();
        SupplierData supplierData = new SupplierData();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InventoryGrid.DataSource = inventoryData.getProducts();
                InventoryGrid.DataBind();

                ddlCategory.DataSource = inventoryData.getCategories();
                ddlCategory.DataBind();

                ddlSubCategory.DataSource = inventoryData.getSubCategories();
                ddlSubCategory.DataBind();

                ddlExistingSupplier.DataSource = supplierData.getSuppliers();
                ddlExistingSupplier.DataBind();
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

        protected void rblSupplierType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblSupplierType.SelectedValue == "New")
            {
                pnlNewSupplier.Visible = true;
                pnlExistingSupplier.Visible = false;
            }
            else if (rblSupplierType.SelectedValue == "Existing")
            {
                pnlNewSupplier.Visible = false;
                pnlExistingSupplier.Visible = true;
            }
        }

        protected void EditProduct_Click(object sender, EventArgs e)
        {
            // Logic for editing the product
        }

        protected void DeleteProduct_Click(object sender, EventArgs e)
        {
            // Logic for deleting the product
        }

        

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            if(rblSupplierType.SelectedValue == "New") 
            {
                
                string ProSupplier = txtSupplierName.Text;
                string SupPhone = txtSupPhoneNumber.Text;
                string SupEmail = txtEmail.Text;
                string SupAddress = txtAddress.Text;

                // Product Table
                string ProName = txtProductName.Text;
                string ProCat = ddlCategory.SelectedItem.Text;
                string ProsubCat = ddlSubCategory.SelectedItem.Text;
                decimal ProPrice = Convert.ToDecimal(txtPrice.Text);
                int ProQuantity = Convert.ToInt32(txtQuantity.Text);
                decimal ProPricePerOrder = ProPrice * ProQuantity;

                inventoryData.InsertProduct(ProName, ProSupplier, ProCat, ProsubCat, ProPrice, ProQuantity, ProPricePerOrder);
                supplierData.insertSupplier(ProSupplier, SupPhone, SupEmail, SupAddress);
            }

            else if(rblSupplierType.SelectedValue == "Existing")
            {
                string ProSupplier = ddlExistingSupplier.SelectedItem.Text;

                string ProName = txtProductName.Text;
                string ProCat = ddlCategory.SelectedItem.Text;
                string ProsubCat = ddlSubCategory.SelectedItem.Text;
                decimal ProPrice = Convert.ToDecimal(txtPrice.Text);
                int ProQuantity = Convert.ToInt32(txtQuantity.Text);
                decimal ProPricePerOrder = ProPrice * ProQuantity;

                inventoryData.InsertProduct(ProName, ProSupplier, ProCat, ProsubCat, ProPrice, ProQuantity, ProPricePerOrder);

            }

        }
    }
}