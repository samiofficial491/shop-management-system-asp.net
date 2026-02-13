using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Shop_Management_System
{
	public class AdminData
	{
		static string connectionString = "Data Source=AHMAD\\SQLEXPRESS;Initial Catalog=SMS;Integrated Security=True;";
		static SqlConnection connection = new SqlConnection(connectionString);

        public void insertAdminData(byte[] aImage, string aName, string aUsername, string aEmail, string aPassword)
        {

            string query = @"INSERT INTO adminData (aName, aUsername, aEmail, aPassword, aImage)
                            VALUES (@aName, @aUsername, @aEmail, @aPassword, @aImage)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@aName", aName);
                        cmd.Parameters.AddWithValue("@aUsername", aUsername);
                        cmd.Parameters.AddWithValue("@aEmail", aEmail);
                        cmd.Parameters.AddWithValue("@aPassword", aPassword);
                        cmd.Parameters.AddWithValue("@aImage", aImage ?? (object)DBNull.Value); // Handle null image

                        cmd.ExecuteNonQuery();
                    }
                }
                catch (SqlException ex)
                {
                    Console.WriteLine("An error occurred: " + ex.Message);
                }
            }
        }

        public void updateAdminData(byte[] aImage, string aName, string aUsername, string aEmail, string aPassword)
        {
            try
            {
                string query = @"UPDATE adminData SET aName = @aName, aUsername = @aUsername, aEmail = @aEmail, aPassword = @aPassword, aImage = @aImage WHERE aUsername = @currentUsername";

                connection.Open();
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@aName", aName);
                    cmd.Parameters.AddWithValue("@aUsername", aUsername);
                    cmd.Parameters.AddWithValue("@aEmail", aEmail);
                    cmd.Parameters.AddWithValue("@aPassword", aPassword);
                    cmd.Parameters.AddWithValue("@aImage", aImage); // Handle null image
                    cmd.Parameters.AddWithValue("@currentUsername", getAdminUsername()); // Use the current username for the WHERE clause
                    cmd.ExecuteNonQuery();
                }
                connection.Close();
        }
            catch (Exception ex)
            {
                Console.WriteLine("An error occurred: " + ex.Message);
            }
}

        public string getAdminName()
		{
			string adminName = "";
			try
			{
				connection.Open();
				string query = "SELECT aName FROM [adminData]";
				SqlCommand cmd = new SqlCommand(query, connection);
				SqlDataReader reader = cmd.ExecuteReader();
				if (reader.Read())
				{
					adminName = reader["aName"].ToString();
				}
				else
				{
					adminName = "No name found";
				}
                connection.Close();
            }
			catch
			{

			}
			return adminName;
		}

        public byte[] getAdminImage()
        {
            byte[] adminImage = null;
            try
            {
                connection.Open();
                string query = "SELECT aImage FROM [adminData]";
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    if (!reader.IsDBNull(reader.GetOrdinal("aImage")))
                    {
                        adminImage = (byte[])reader["aImage"];
                    }
                }
                connection.Close();
            }
            catch
            {

            }
            return adminImage;
        }

        public string getAdminUsername()
        {
            string adminUsername = "";
            try { 
                connection.Open();
                string query = "SELECT aUsername FROM [adminData]";
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    adminUsername = reader["aUsername"].ToString();
                }
                else
                {
                    adminUsername = "No Username found";
                }
                connection.Close();
            }
            catch
            {

            }
            return adminUsername;
        }

        public string getAdminEmail()
        {
            string adminEmail = "";
            try
            {
                connection.Open();
                string query = "SELECT aEmail FROM [adminData]";
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    adminEmail = reader["aEmail"].ToString();
                }
                else
                {
                    adminEmail = "No Email found";
                }
                connection.Close();
            }
            catch
            {

            }
            return adminEmail;
        }

        public string getAdminPassword()
        {
            string adminPassword = "";
            try { 
                connection.Open();
                string query = "SELECT aPassword FROM [adminData]";
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    adminPassword = reader["aPassword"].ToString();
                }
                else
                {
                    adminPassword = "No Password found";
                }
                connection.Close();
            }
            catch
            {

            }
            return adminPassword;
        }

        public void updatePassword(string newPassword, string email)
        {
            try
            {
                connection.Open();
                string query = "UPDATE [adminData] SET aPassword = '"+newPassword+"' WHERE aUsername = '"+email+"'";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.ExecuteNonQuery();
                connection.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error updating password: " + ex.Message);
            }
        }
    }
}