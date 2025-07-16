namespace UserSoft
{
    partial class FormMain
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormMain));
            dataGridViewPersons = new DataGridView();
            buttonInsert = new Button();
            buttonClear = new Button();
            comboBoxStatus = new ComboBox();
            textBoxSearchByDocument = new TextBox();
            label1 = new Label();
            pictureBoxSearchByStatus = new PictureBox();
            pictureBoxSearchById = new PictureBox();
            textBoxDocument = new TextBox();
            textBoxAddress = new TextBox();
            textBoxEmail = new TextBox();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            label5 = new Label();
            label6 = new Label();
            label7 = new Label();
            label8 = new Label();
            dateTimePickerBirthdate = new DateTimePicker();
            pictureBoxUserPhoto = new PictureBox();
            textBoxFullname = new TextBox();
            textBoxPhone = new TextBox();
            buttonUploadImage = new Button();
            label9 = new Label();
            label10 = new Label();
            panel1 = new Panel();
            ((System.ComponentModel.ISupportInitialize)dataGridViewPersons).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBoxSearchByStatus).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBoxSearchById).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBoxUserPhoto).BeginInit();
            panel1.SuspendLayout();
            SuspendLayout();
            // 
            // dataGridViewPersons
            // 
            dataGridViewPersons.AllowUserToAddRows = false;
            dataGridViewPersons.AllowUserToDeleteRows = false;
            dataGridViewPersons.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewPersons.Location = new Point(26, 444);
            dataGridViewPersons.Name = "dataGridViewPersons";
            dataGridViewPersons.ReadOnly = true;
            dataGridViewPersons.RowHeadersWidth = 51;
            dataGridViewPersons.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dataGridViewPersons.Size = new Size(1026, 188);
            dataGridViewPersons.TabIndex = 0;
            dataGridViewPersons.CellContentClick += dataGridViewPersons_CellContentClick;
            // 
            // buttonInsert
            // 
            buttonInsert.Cursor = Cursors.Hand;
            buttonInsert.Location = new Point(26, 396);
            buttonInsert.Name = "buttonInsert";
            buttonInsert.Size = new Size(94, 29);
            buttonInsert.TabIndex = 1;
            buttonInsert.Text = "INSERTAR";
            buttonInsert.UseVisualStyleBackColor = true;
            buttonInsert.Click += buttonInsert_Click;
            // 
            // buttonClear
            // 
            buttonClear.Cursor = Cursors.Hand;
            buttonClear.Location = new Point(958, 395);
            buttonClear.Name = "buttonClear";
            buttonClear.Size = new Size(94, 29);
            buttonClear.TabIndex = 4;
            buttonClear.Text = "LIMPIAR";
            buttonClear.UseVisualStyleBackColor = true;
            buttonClear.Click += buttonClear_Click;
            // 
            // comboBoxStatus
            // 
            comboBoxStatus.DropDownStyle = ComboBoxStyle.DropDownList;
            comboBoxStatus.FormattingEnabled = true;
            comboBoxStatus.Items.AddRange(new object[] { "ACTIVO", "INACTIVO" });
            comboBoxStatus.Location = new Point(609, 395);
            comboBoxStatus.Name = "comboBoxStatus";
            comboBoxStatus.Size = new Size(160, 28);
            comboBoxStatus.TabIndex = 0;
            // 
            // textBoxSearchByDocument
            // 
            textBoxSearchByDocument.Location = new Point(253, 395);
            textBoxSearchByDocument.Name = "textBoxSearchByDocument";
            textBoxSearchByDocument.Size = new Size(245, 27);
            textBoxSearchByDocument.TabIndex = 6;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(253, 372);
            label1.Name = "label1";
            label1.Size = new Size(195, 20);
            label1.TabIndex = 7;
            label1.Text = "Consultar por identificación:";
            // 
            // pictureBoxSearchByStatus
            // 
            pictureBoxSearchByStatus.Cursor = Cursors.Hand;
            pictureBoxSearchByStatus.Image = (Image)resources.GetObject("pictureBoxSearchByStatus.Image");
            pictureBoxSearchByStatus.Location = new Point(793, 394);
            pictureBoxSearchByStatus.Name = "pictureBoxSearchByStatus";
            pictureBoxSearchByStatus.Size = new Size(30, 28);
            pictureBoxSearchByStatus.TabIndex = 8;
            pictureBoxSearchByStatus.TabStop = false;
            pictureBoxSearchByStatus.Click += pictureBoxSearchByStatus_Click;
            // 
            // pictureBoxSearchById
            // 
            pictureBoxSearchById.Cursor = Cursors.Hand;
            pictureBoxSearchById.Image = (Image)resources.GetObject("pictureBoxSearchById.Image");
            pictureBoxSearchById.Location = new Point(504, 395);
            pictureBoxSearchById.Name = "pictureBoxSearchById";
            pictureBoxSearchById.Size = new Size(30, 28);
            pictureBoxSearchById.TabIndex = 9;
            pictureBoxSearchById.TabStop = false;
            pictureBoxSearchById.Click += pictureBoxSearchById_Click;
            // 
            // textBoxDocument
            // 
            textBoxDocument.Location = new Point(26, 129);
            textBoxDocument.Name = "textBoxDocument";
            textBoxDocument.Size = new Size(171, 27);
            textBoxDocument.TabIndex = 10;
            // 
            // textBoxAddress
            // 
            textBoxAddress.Location = new Point(26, 280);
            textBoxAddress.Name = "textBoxAddress";
            textBoxAddress.Size = new Size(171, 27);
            textBoxAddress.TabIndex = 11;
            // 
            // textBoxEmail
            // 
            textBoxEmail.Location = new Point(556, 280);
            textBoxEmail.Name = "textBoxEmail";
            textBoxEmail.Size = new Size(250, 27);
            textBoxEmail.TabIndex = 12;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(26, 106);
            label2.Name = "label2";
            label2.Size = new Size(90, 20);
            label2.TabIndex = 17;
            label2.Text = "Documento:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(26, 257);
            label3.Name = "label3";
            label3.Size = new Size(75, 20);
            label3.TabIndex = 18;
            label3.Text = "Dirección:";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(275, 106);
            label4.Name = "label4";
            label4.Size = new Size(135, 20);
            label4.TabIndex = 19;
            label4.Text = "Nombre completo:";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(275, 257);
            label5.Name = "label5";
            label5.Size = new Size(70, 20);
            label5.TabIndex = 20;
            label5.Text = "Teléfono:";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(556, 106);
            label6.Name = "label6";
            label6.Size = new Size(149, 20);
            label6.TabIndex = 21;
            label6.Text = "Fecha de nacimiento:";
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(556, 257);
            label7.Name = "label7";
            label7.Size = new Size(57, 20);
            label7.TabIndex = 22;
            label7.Text = "Correo:";
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new Point(838, 106);
            label8.Name = "label8";
            label8.Size = new Size(81, 20);
            label8.TabIndex = 23;
            label8.Text = "Fotografia:";
            // 
            // dateTimePickerBirthdate
            // 
            dateTimePickerBirthdate.Location = new Point(556, 129);
            dateTimePickerBirthdate.Name = "dateTimePickerBirthdate";
            dateTimePickerBirthdate.Size = new Size(250, 27);
            dateTimePickerBirthdate.TabIndex = 24;
            // 
            // pictureBoxUserPhoto
            // 
            pictureBoxUserPhoto.Location = new Point(3, 3);
            pictureBoxUserPhoto.Name = "pictureBoxUserPhoto";
            pictureBoxUserPhoto.Size = new Size(183, 170);
            pictureBoxUserPhoto.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBoxUserPhoto.TabIndex = 25;
            pictureBoxUserPhoto.TabStop = false;
            // 
            // textBoxFullname
            // 
            textBoxFullname.Location = new Point(275, 129);
            textBoxFullname.Name = "textBoxFullname";
            textBoxFullname.Size = new Size(222, 27);
            textBoxFullname.TabIndex = 26;
            // 
            // textBoxPhone
            // 
            textBoxPhone.Location = new Point(275, 281);
            textBoxPhone.Name = "textBoxPhone";
            textBoxPhone.Size = new Size(222, 27);
            textBoxPhone.TabIndex = 27;
            // 
            // buttonUploadImage
            // 
            buttonUploadImage.Cursor = Cursors.Hand;
            buttonUploadImage.Location = new Point(878, 314);
            buttonUploadImage.Name = "buttonUploadImage";
            buttonUploadImage.Size = new Size(121, 29);
            buttonUploadImage.TabIndex = 28;
            buttonUploadImage.Text = "SUBIR IMAGEN";
            buttonUploadImage.UseVisualStyleBackColor = true;
            buttonUploadImage.Click += buttonUploadImage_Click;
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Font = new Font("Segoe UI", 13.8F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label9.Location = new Point(432, 36);
            label9.Name = "label9";
            label9.Size = new Size(236, 31);
            label9.TabIndex = 29;
            label9.Text = "Registro de personas";
            // 
            // label10
            // 
            label10.AutoSize = true;
            label10.Location = new Point(609, 371);
            label10.Name = "label10";
            label10.Size = new Size(199, 20);
            label10.TabIndex = 30;
            label10.Text = "Añadir | consulta por estado:";
            // 
            // panel1
            // 
            panel1.BackColor = Color.DarkSeaGreen;
            panel1.Controls.Add(pictureBoxUserPhoto);
            panel1.Location = new Point(838, 132);
            panel1.Name = "panel1";
            panel1.Size = new Size(189, 176);
            panel1.TabIndex = 31;
            // 
            // FormMain
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.LightGreen;
            ClientSize = new Size(1082, 653);
            Controls.Add(panel1);
            Controls.Add(label10);
            Controls.Add(label9);
            Controls.Add(buttonUploadImage);
            Controls.Add(textBoxPhone);
            Controls.Add(textBoxFullname);
            Controls.Add(dateTimePickerBirthdate);
            Controls.Add(label8);
            Controls.Add(label7);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(textBoxEmail);
            Controls.Add(textBoxAddress);
            Controls.Add(textBoxDocument);
            Controls.Add(pictureBoxSearchById);
            Controls.Add(pictureBoxSearchByStatus);
            Controls.Add(label1);
            Controls.Add(textBoxSearchByDocument);
            Controls.Add(comboBoxStatus);
            Controls.Add(buttonClear);
            Controls.Add(buttonInsert);
            Controls.Add(dataGridViewPersons);
            FormBorderStyle = FormBorderStyle.FixedSingle;
            MaximizeBox = false;
            Name = "FormMain";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Personas";
            ((System.ComponentModel.ISupportInitialize)dataGridViewPersons).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBoxSearchByStatus).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBoxSearchById).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBoxUserPhoto).EndInit();
            panel1.ResumeLayout(false);
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView dataGridViewPersons;
        private Button buttonInsert;
        private Button buttonClear;
        private ComboBox comboBoxStatus;
        private TextBox textBoxSearchByDocument;
        private Label label1;
        private PictureBox pictureBoxSearchByStatus;
        private PictureBox pictureBoxSearchById;
        private TextBox textBoxDocument;
        private TextBox textBoxAddress;
        private TextBox textBoxEmail;
        private Label label2;
        private Label label3;
        private Label label4;
        private Label label5;
        private Label label6;
        private Label label7;
        private Label label8;
        private DateTimePicker dateTimePickerBirthdate;
        private PictureBox pictureBoxUserPhoto;
        private TextBox textBoxFullname;
        private TextBox textBoxPhone;
        private Button buttonUploadImage;
        private Label label9;
        private Label label10;
        private Panel panel1;
    }
}
