using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Shop_Management_System
{
    public class SupplierData
    {
        static string connectionString = "Data Source=AHMAD\\SQLEXPRESS;Initial Catalog=SMS;Integrated Security=True;";
        //static SqlConnection connection = new SqlConnection(connectionString);

        public void insertSupplier(string name, string phoneNumber, string email, string address)
        {
            string query = @"INSERT INTO [Supplier] (supName, supPhone, supEmail, supAddress) VALUES (@supName, @supPhone, @supEmail, @supAddress)";
            using(SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    connection.Open();
                    cmd.Parameters.AddWithValue("supName", name);
                    cmd.Parameters.AddWithValue("supPhone", phoneNumber);
                    cmd.Parameters.AddWithValue("supEmail", email);
                    cmd.Parameters.AddWithValue("supAddress", address);

                    cmd.ExecuteNonQuery();
                }
            }
            
        }

        public DataTable getSuppliers()
        {
            DataTable catTable = new DataTable();
            string query = "SELECT * FROM Supplier";
            using (SqlConnection connection = new SqlConnection(connectionString))
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

        public DataTable getSuppliersName()
        {
            DataTable catTable = new DataTable();
            string query = "SELECT DISTINCT supName FROM Supplier";
            using (SqlConnection connection = new SqlConnection(connectionString))
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
    }
}