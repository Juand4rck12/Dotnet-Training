using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserSoft.models;
using UserSoft.utils;

namespace UserSoft.database
{
    internal class DBPerson : DBConnection
    {
        public DBPerson() : base()
        {
            // Constructor de la clase DBPerson que hereda de DBConnection
        }

        // Consulta todas las personas
        public DataTable GetAllPersons()
        {
            DataTable dataTable = null;
            try
            {
                string query = "SELECT document AS Documento," +
                    " fullname AS Nombre_completo," +
                    " birthdate AS Fecha_nacimiento," +
                    " photo AS Fotografia," +
                    " address AS Dirección," +
                    " phone AS Teléfono," +
                    " email AS Correo," +
                    " `status` AS Estado FROM person ORDER BY document;";
                MySqlCommand command = new MySqlCommand(query, GetConnection());
                MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                dataTable = new DataTable();
                adapter.Fill(dataTable);
                adapter.Dispose();
                dataTable.Dispose();
            }
            catch (Exception ex)
            {
                MessageUtils.ShowErrorMessage("Error al obtener los datos de las personas: " + ex.Message);
            }
            finally
            {
                CloseConnection();
            }

            return dataTable;
        }

        // Consulta una persona por su documento
        public DataTable GetPersonByDocument(long document)
        {
            DataTable dataTable = null;
            try
            {
                string query = "SELECT document AS Documento," +
                    " fullname AS Nombre_completo," +
                    " birthdate AS Fecha_nacimiento," +
                    " photo AS Fotografia," +
                    " address AS Dirección," +
                    " phone AS Teléfono," +
                    " email AS Correo," +
                    " `status` AS Estado FROM person WHERE document = @document";
                MySqlCommand command = new MySqlCommand(query, GetConnection());
                command.Parameters.AddWithValue("@document", document);
                MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                dataTable = new DataTable();
                adapter.Fill(dataTable);
                adapter.Dispose();
                dataTable.Dispose();
            }
            catch (Exception ex)
            {
                MessageUtils.ShowErrorMessage("Error al obtener la persona: " + ex.Message);
            }
            finally
            {
                CloseConnection();
            }

            return dataTable;
        }


        // Consultar una persona por su estado
        public DataTable GetPersonByStatus(string status)
        {
            DataTable dataTable = null;
            try
            {
                string query = "SELECT document AS Documento," +
                    " fullname AS Nombre_completo," +
                    " birthdate AS Fecha_nacimiento," +
                    " photo AS Fotografia," +
                    " address AS Dirección," +
                    " phone AS Teléfono," +
                    " email AS Correo," +
                    " `status` AS Estado FROM person WHERE `status` = @status";
                MySqlCommand command = new MySqlCommand(query, GetConnection());
                command.Parameters.AddWithValue("@status", status);
                MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                dataTable = new DataTable();
                adapter.Fill(dataTable);
                adapter.Dispose();
                dataTable.Dispose();
            }
            catch (Exception ex)
            {
                MessageUtils.ShowErrorMessage("Error al obtener las personas por estado: " + ex.Message);
            }
            finally
            {
                CloseConnection();
            }
            return dataTable;
        }


        // Inserta una nueva persona en la base de datos
        public bool Insert(Person person)
        {
            bool result = false;
            string route = @"C:\Users\victus\OneDrive\Documentos\repos\Dotnet-Training\UserSoft\UserSoft\images\";
            try
            {
                string query = "INSERT INTO person (document, fullname, birthdate, photo, address, phone, email, `status`) " +
                               "VALUES (@document, @fullname, @birthdate, @photo, @address, @phone, @email, @status)";
                MySqlCommand command = new MySqlCommand(query, GetConnection());
                command.Parameters.AddWithValue("@document", person.Document);
                command.Parameters.AddWithValue("@fullname", person.Fullname);
                command.Parameters.AddWithValue("@birthdate", person.Birthdate);
                command.Parameters.AddWithValue("@photo", person.Photo);
                command.Parameters.AddWithValue("@address", person.Address);
                command.Parameters.AddWithValue("@phone", person.Phone);
                command.Parameters.AddWithValue("@email", person.Email);
                command.Parameters.AddWithValue("@status", person.Status);
                command.ExecuteNonQuery();
                result = true;
            }
            catch (Exception ex)
            {
                MessageUtils.ShowErrorMessage("Error al insertar la persona: " + ex.Message);
            }
            finally
            {
                CloseConnection();
            }

            return result;
        }
    }
}
