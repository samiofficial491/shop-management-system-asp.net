using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Management_System
{
	public partial class User_Inventory : System.Web.UI.Page
	{
        InventoryData inventoryData = new InventoryData();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InventoryGrid.DataSource = inventoryData.getProducts();
                InventoryGrid.DataBind();
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

        protected void EditProduct_Click(object sender, EventArgs e)
        {
            // Logic for editing the product
        }

        protected void DeleteProduct_Click(object sender, EventArgs e)
        {
            // Logic for deleting the product
        }
    }
}