using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingApp.models
{
    internal class TrainingPlanSkill
    {
        public long IdTrainingPlan { get; set; }
        public TrainingPlan? TrainingPlan { get; set; }
        public long IdSkill { get; set; }
        public Skill? Skill { get; set; }

        public TrainingPlanSkill() { }

        public TrainingPlanSkill(long idTrainingPlan, TrainingPlan? trainingPlan, long idSkill, Skill? skill)
        {
            IdTrainingPlan = idTrainingPlan;
            TrainingPlan = trainingPlan;
            IdSkill = idSkill;
            Skill = skill;
        }
    }
}
