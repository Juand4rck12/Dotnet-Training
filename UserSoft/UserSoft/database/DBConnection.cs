using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserSoft.utils;

namespace UserSoft.database
{
    internal class DBConnection
    {
        private string server = "localhost";
        private string database = "it_users";
        private string user = "developer";
        private string password = "developer";
        private string connectionString;
        private static MySqlConnection connection = null;

        public DBConnection()
        {
            connectionString = $"Server={server};Database={database};User ID={user};Password={password};";
        }

        public MySqlConnection GetConnection()
        {
            try
            {
                connection = new MySqlConnection(connectionString);
                connection.Open();
                return connection;
            }
            catch (Exception ex)
            {
                MessageUtils.ShowErrorMessage("Error al conectar a la base de datos: " + ex.Message);
                return null;
            }
        }

        public void CloseConnection()
        {
            if (connection != null && connection.State == System.Data.ConnectionState.Open)
            {
                connection.Close();
            }
        }
    }
}
