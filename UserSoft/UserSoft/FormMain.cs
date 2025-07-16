using System.Data;
using UserSoft.database;
using UserSoft.models;
using UserSoft.utils;

namespace UserSoft
{
    public partial class FormMain : Form
    {
        private string selectedImagePath = "";
        private DataTable dataTable = new DataTable();

        private DBPerson dbPerson;
        public FormMain()
        {
            InitializeComponent();
            dbPerson = new DBPerson();
            fillTablePersons();
        }

        public void fillTablePersons()
        {
            dataTable = dbPerson.GetAllPersons();
            dataGridViewPersons.DataSource = dataTable;
            comboBoxStatus.SelectedIndex = 0;
        }

        private void pictureBoxSearchById_Click(object sender, EventArgs e)
        {
            bool validDocument = long.TryParse(textBoxSearchByDocument.Text, out long document);

            if (!validDocument)
            {
                MessageUtils.ShowErrorMessage("El documento debe ser un número válido.");
                return;
            }

            dataTable = dbPerson.GetPersonByDocument(document);
            dataGridViewPersons.DataSource = dataTable;

        }

        private void pictureBoxSearchByStatus_Click(object sender, EventArgs e)
        {
            dataTable = dbPerson.GetPersonByStatus(comboBoxStatus.SelectedItem.ToString());
            dataGridViewPersons.DataSource = dataTable;
        }

        public void clearFields()
        {
            textBoxDocument.Clear();
            textBoxFullname.Clear();
            dateTimePickerBirthdate.Value = DateTime.Now;
            pictureBoxUserPhoto.Image = null;
            textBoxAddress.Clear();
            textBoxPhone.Clear();
            textBoxEmail.Clear();
            comboBoxStatus.SelectedIndex = 0;
            textBoxSearchByDocument.Clear();
            buttonInsert.Enabled = true;
            buttonUploadImage.Enabled = true;
            dataGridViewPersons.ClearSelection();

            fillTablePersons();
        }

        private void buttonClear_Click(object sender, EventArgs e)
        {
            clearFields();
        }

        private void dataGridViewPersons_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0) return;

            // Obtener la fila seleccionada
            DataGridViewRow row = dataGridViewPersons.Rows[e.RowIndex];
            string imgRoute = row.Cells["Fotografia"].Value as string;

            if (!string.IsNullOrEmpty(imgRoute) && File.Exists(imgRoute))
            {
                pictureBoxUserPhoto.Image = Image.FromFile(imgRoute);
            } else
            {
                pictureBoxUserPhoto.Image = null;
            }

                // Asignar valores a los textbox y campos
                textBoxDocument.Text = row.Cells["Documento"].Value.ToString();
            textBoxFullname.Text = row.Cells["Nombre_completo"].Value.ToString();
            dateTimePickerBirthdate.Text = row.Cells["Fecha_nacimiento"].Value.ToString();

            textBoxAddress.Text = row.Cells["Dirección"].Value.ToString();
            textBoxPhone.Text = row.Cells["Teléfono"].Value.ToString();
            textBoxEmail.Text = row.Cells["Correo"].Value.ToString();
            comboBoxStatus.SelectedItem = row.Cells["Estado"].Value.ToString();
            buttonInsert.Enabled = false;
            buttonUploadImage.Enabled = false;
        }

        private void buttonInsert_Click(object sender, EventArgs e)
        {
            Person person = new Person();
            person.Document = (string.IsNullOrEmpty(textBoxDocument.Text) ? 0
                                                    : long.Parse(textBoxDocument.Text));
            person.Fullname = textBoxFullname.Text;
            person.Birthdate = dateTimePickerBirthdate.Value.ToString("yyyy-MM-dd");
            person.Photo = selectedImagePath;
            person.Address = textBoxAddress.Text;
            person.Phone = textBoxPhone.Text;
            person.Email = textBoxEmail.Text;
            person.Status = comboBoxStatus.SelectedItem.ToString();

            if (validatePerson(person))
            {
                if (!dbPerson.Insert(person))
                {
                    MessageUtils.ShowErrorMessage("Error al crear la persona");
                }
                else
                {
                    MessageUtils.ShowInfoMessage("Persona creada exitosamente");
                }

                clearFields();
                fillTablePersons();
            }
        }


        private bool validatePerson(Person person)
        {
            if (person == null)
            {
                MessageUtils.ShowErrorMessage("La persona no puede ser nula.");
                return false;
            }
            if (string.IsNullOrWhiteSpace(person.Fullname))
            {
                MessageUtils.ShowErrorMessage("El nombre completo no puede estar vacío.");
                return false;
            }
            if (string.IsNullOrWhiteSpace(person.Email) || !person.Email.Contains("@"))
            {
                MessageUtils.ShowErrorMessage("El correo electrónico no es válido.");
                return false;
            }
            if (string.IsNullOrWhiteSpace(person.Phone))
            {
                MessageUtils.ShowErrorMessage("El teléfono no puede estar vacío.");
                return false;
            }
            if (string.IsNullOrWhiteSpace(person.Address))
            {
                MessageUtils.ShowErrorMessage("La dirección no puede estar vacía.");
                return false;
            }
            if (string.IsNullOrWhiteSpace(person.Birthdate) || !DateTime.TryParse(person.Birthdate, out _))
            {
                MessageUtils.ShowErrorMessage("La fecha de nacimiento no es válida.");
                return false;
            }
            if (person.Document <= 0)
            {
                MessageUtils.ShowErrorMessage("El documento debe ser un número positivo.");
                return false;
            }
            if (string.IsNullOrWhiteSpace(person.Status))
            {
                MessageUtils.ShowErrorMessage("El estado no puede estar vacío.");
                return false;
            }

            return true;
        }

        private void buttonUploadImage_Click(object sender, EventArgs e)
        {
            using (OpenFileDialog openFileDialog = new OpenFileDialog())
            {
                openFileDialog.Title = "Seleccionar foto";
                openFileDialog.Filter = "Archivos de imagen|*.jpg;*.jpeg;*.png;";
                if (openFileDialog.ShowDialog() == DialogResult.OK)
                {
                    selectedImagePath = openFileDialog.FileName;
                    // Mostrar en el picture box
                    pictureBoxUserPhoto.Image = Image.FromFile(selectedImagePath);
                }
            }
        }
    }
}
