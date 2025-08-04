using TrainingApp.views;

namespace TrainingApp
{
    public partial class HomeView : Form
    {
        private CompetitorView CompetitorView = new CompetitorView();
        private SkillView SkillView = new SkillView();
        private ResultTrainingView ResultTrainingView = new ResultTrainingView();
        private TrainingPlanView TrainingPlanView = new TrainingPlanView();
        public HomeView()
        {
            InitializeComponent();
        }

        private void buttonCompetitors_Click(object sender, EventArgs e)
        {
            CompetitorView.Show();
            Dispose();
        }

        private void buttonSkills_Click(object sender, EventArgs e)
        {
            SkillView.Show();
            Dispose();
        }

        private void buttonTrainingResults_Click(object sender, EventArgs e)
        {
            ResultTrainingView.Show();
            Dispose();
        }

        private void buttonTrainingPlans_Click(object sender, EventArgs e)
        {
            TrainingPlanView.Show();
            Dispose();
        }
    }
}
