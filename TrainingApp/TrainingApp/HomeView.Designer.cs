namespace TrainingApp
{
    partial class HomeView
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
            label1 = new Label();
            buttonCompetitors = new Button();
            buttonSkills = new Button();
            buttonTrainingPlans = new Button();
            buttonTrainingResults = new Button();
            label2 = new Label();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 13.8F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.Location = new Point(351, 46);
            label1.Name = "label1";
            label1.Size = new Size(83, 31);
            label1.TabIndex = 0;
            label1.Text = "MENU";
            // 
            // buttonCompetitors
            // 
            buttonCompetitors.Font = new Font("Segoe UI", 12F, FontStyle.Bold);
            buttonCompetitors.Location = new Point(36, 199);
            buttonCompetitors.Name = "buttonCompetitors";
            buttonCompetitors.Size = new Size(294, 70);
            buttonCompetitors.TabIndex = 1;
            buttonCompetitors.Text = "COMPETIDORES";
            buttonCompetitors.UseVisualStyleBackColor = true;
            buttonCompetitors.Click += buttonCompetitors_Click;
            // 
            // buttonSkills
            // 
            buttonSkills.Font = new Font("Segoe UI", 12F, FontStyle.Bold);
            buttonSkills.Location = new Point(453, 199);
            buttonSkills.Name = "buttonSkills";
            buttonSkills.Size = new Size(294, 70);
            buttonSkills.TabIndex = 2;
            buttonSkills.Text = "HABILIDADES";
            buttonSkills.UseVisualStyleBackColor = true;
            buttonSkills.Click += buttonSkills_Click;
            // 
            // buttonTrainingPlans
            // 
            buttonTrainingPlans.Font = new Font("Segoe UI", 12F, FontStyle.Bold);
            buttonTrainingPlans.Location = new Point(453, 310);
            buttonTrainingPlans.Name = "buttonTrainingPlans";
            buttonTrainingPlans.Size = new Size(294, 70);
            buttonTrainingPlans.TabIndex = 3;
            buttonTrainingPlans.Text = "PLANES DE ENTRENAMIENTO";
            buttonTrainingPlans.UseVisualStyleBackColor = true;
            buttonTrainingPlans.Click += buttonTrainingPlans_Click;
            // 
            // buttonTrainingResults
            // 
            buttonTrainingResults.Font = new Font("Segoe UI", 12F, FontStyle.Bold);
            buttonTrainingResults.Location = new Point(36, 310);
            buttonTrainingResults.Name = "buttonTrainingResults";
            buttonTrainingResults.Size = new Size(294, 70);
            buttonTrainingResults.TabIndex = 4;
            buttonTrainingResults.Text = "RESULTADOS DE ENTRENAMIENTOS";
            buttonTrainingResults.UseVisualStyleBackColor = true;
            buttonTrainingResults.Click += buttonTrainingResults_Click;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(36, 116);
            label2.Name = "label2";
            label2.Size = new Size(269, 20);
            label2.TabIndex = 5;
            label2.Text = "Seleccione la vista que desea consultar:";
            // 
            // HomeView
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(label2);
            Controls.Add(buttonTrainingResults);
            Controls.Add(buttonTrainingPlans);
            Controls.Add(buttonSkills);
            Controls.Add(buttonCompetitors);
            Controls.Add(label1);
            Name = "HomeView";
            Text = "Form1";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Button buttonCompetitors;
        private Button buttonSkills;
        private Button buttonTrainingPlans;
        private Button buttonTrainingResults;
        private Label label2;
    }
}
