using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Management_System
{
    public partial class Billing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProductGrid();
            }
        }

        private void BindProductGrid()
        {
            var productData = new List<Product>
            {
                new Product { ProductID = "P001", ProductName = "Laptop", Price = 800.00m },
                new Product { ProductID = "P002", ProductName = "Smartphone", Price = 500.00m },
                new Product { ProductID = "P003", ProductName = "Tablet", Price = 300.00m },
                new Product { ProductID = "P004", ProductName = "Monitor", Price = 200.00m },
                new Product { ProductID = "P005", ProductName = "Keyboard", Price = 50.00m }
            };

            ProductGrid.DataSource = productData;
            ProductGrid.DataBind();
        }
    }

    public class Product
    {
        public string ProductID { get; set; }
        public string ProductName { get; set; }
        public decimal Price { get; set; }
    }
}