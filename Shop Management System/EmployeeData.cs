using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Shop_Management_System
{
    public class EmployeeData
    {
        static string connectionString = "Data Source=AHMAD\\SQLEXPRESS;Initial Catalog=SMS;Integrated Security=True;";
        //static SqlConnection connection = new SqlConnection(connectionString);

        public void insertEmpData(byte[] imgUpload, string empName, string empEmail, string empPhNo, string empJobTitle, DateTime empJoinDate, decimal empSalary, string empShift)
        {
            //try
            //{
                //connection.Open();

            string query = "INSERT INTO [EmployeeData] (aImage, eName, eEmail, ePhone, eJobTitle, eJoinDate, eSalary, eShift) VALUES (@Image, @Name, @Email, @Phone, @JobTitle, @JoinDate, @Salary, @Shift)";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@Image", imgUpload);
                    cmd.Parameters.AddWithValue("@Name", empName);
                    cmd.Parameters.AddWithValue("@Email", empEmail);
                    cmd.Parameters.AddWithValue("@Phone", empPhNo);
                    cmd.Parameters.AddWithValue("@JobTitle", empJobTitle);
                    cmd.Parameters.AddWithValue("@JoinDate", empJoinDate);
                    cmd.Parameters.AddWithValue("@Salary", empSalary);
                    cmd.Parameters.AddWithValue("@Shift", empShift);

                    cmd.ExecuteNonQuery();
                }
            }
        //}
        //    catch (Exception ex)
        //    {
        //        Console.WriteLine("Error: " + ex.Message);
        //    }
}


        public DataTable getEmployeesData()
        {
            DataTable employeeTable = new DataTable();
            //try
            //{
                //connection.Open();
                string query = "SELECT id, eName, eEmail, ePhone, eJobTitle, eShift FROM EmployeeData";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(employeeTable);
                }
            }
                
            //}
            //catch (Exception ex)
            //{
            //    Console.WriteLine("Error: " + ex.Message);
            //}
            return employeeTable;
        }

        public DataTable getEmployeesFilterData(string filter)
        {
            DataTable employeeTable = new DataTable();
                
                string query = "SELECT id, eName, eEmail, ePhone, eJobTitle, eShift FROM EmployeeData WHERE eJobTitle = '"+filter+"'";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(employeeTable);
                }     
            }
            return employeeTable;
        }

        public DataTable GetEmployeeByID(string employeeID)
        {
            DataTable dt = new DataTable();
            string query = "SELECT * FROM [employeeData] WHERE id = @EmployeeID";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@EmployeeID", employeeID);
                    connection.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                }
            }

            return dt;
        }

        public void DeleteEmployeeFromDatabase(int employeeID)
        {
            string query = "DELETE FROM [employeeData] WHERE id = @EmployeeID";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@EmployeeID", employeeID);
                    connection.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

    }
}