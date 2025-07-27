using MySql.Data.MySqlClient;
using Restaurant_App.utils;

namespace Restaurant_App.database
{
    internal class DBConnection
    {
        private string server = "localhost";
        private string database = "restaurant_db";
        private string user = "developer";
        private string password = "developer";
        private string connectionString;
        private static MySqlConnection connection = null;

        public DBConnection()
        {
            connectionString = $"Server={server};Database={database};User ID={user};Password={password};";
        }

        public MySqlConnection GetConnection() {
            try
            {
                connection = new MySqlConnection(connectionString);
                connection.Open();
                return connection;
            }
            catch (Exception ex) { 
                MessageUtils.showErrorMessage("Error al conectar a la base de datos: " +  ex.Message);
                return null;
            }
        }

        public void closeConnection()
        {
            if (connection != null && connection.State == System.Data.ConnectionState.Open)
            {
                connection.Close();
            }
        }
    }
}
