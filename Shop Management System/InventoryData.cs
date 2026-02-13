using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Shop_Management_System
{
    public class InventoryData
    {
        static string connectionString = "Data Source=AHMAD\\SQLEXPRESS;Initial Catalog=SMS;Integrated Security=True;";
        //static SqlConnection connection = new SqlConnection(connectionString);

        public void InsertProduct(string proName, string proSupplier, string proCategory, string proSubCat, decimal proPricePerItem, int proQuantity, decimal proOrderPrice)
        {
            string query = @"INSERT INTO Invenotry (ProName, ProSupplier, ProCategory, ProSubCat, ProPricePerItem, ProQuantity, ProOrderPrice)
                            VALUES ( @ProName, @ProSupplier, @ProCategory, @ProSubCat, @ProPricePerItem, @ProQuantity, @ProOrderPrice)";

            //try
            //{
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    //connection.Open();
                    cmd.Parameters.AddWithValue("@ProName", proName);
                    cmd.Parameters.AddWithValue("@ProSupplier", proSupplier);
                    cmd.Parameters.AddWithValue("@ProCategory", proCategory);
                    cmd.Parameters.AddWithValue("@ProSubCat", proSubCat);
                    cmd.Parameters.AddWithValue("@ProPricePerItem", proPricePerItem);
                    cmd.Parameters.AddWithValue("@ProQuantity", proQuantity);
                    cmd.Parameters.AddWithValue("@ProOrderPrice", proOrderPrice);

                    cmd.ExecuteNonQuery();
                }
            }
                    
                //}
                //catch (SqlException ex)
                //{
                //    Console.WriteLine("An error occurred: " + ex.Message);
                //}
        }

        public DataTable getProducts()
        {
            DataTable dt = new DataTable();
            string query = "SELECT ProID, ProName, ProSupplier, ProCategory, ProPricePerItem, ProQuantity FROM Invenotry";
            //try
            // {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    //connection.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);

                    da.Fill(dt);
                }
            }
            
                //}
                //catch (SqlException ex)
                //{
                //    Console.WriteLine("An error occurred: " + ex.Message);
                //}
            return dt;
        }

        public DataTable getCategories()
        {
            DataTable catTable = new DataTable();
            string query = "SELECT DISTINCT CategoryName FROM SubCategories";
            using(SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    //connection.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(catTable);
                }
            }
            
            return catTable;
        }

        public DataTable getSubCategories()
        {
            DataTable subCatTable = new DataTable();
            string query = "SELECT DISTINCT SubCategoryName FROM SubCategories";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    //connection.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(subCatTable);
                }
            }
            
            return subCatTable;
        }
    }
}