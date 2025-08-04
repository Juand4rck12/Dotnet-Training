using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingApp.models
{
    internal class ResultTraining
    {
        public long IdResultTraining { get; set; }
        public long IdCompetitor { get; set; }
        public Competitor? Competitor { get; set; }
        public long IdSkill { get; set; }
        public Skill? Skill { get; set; }
        public long IdTrainingPLan { get; set; }
        public TrainingPlan? TrainingPlan { get; set; } 
        public DateTime EvaluationDate { get; set; }
        public decimal Result {  get; set; }

        public ResultTraining() { }

        public ResultTraining(long idResultTraining, long idCompetitor, Competitor? competitor, long idSkill, Skill? skill, long idTrainingPLan, TrainingPlan? trainingPlan, DateTime evaluationDate, decimal result)
        {
            IdResultTraining = idResultTraining;
            IdCompetitor = idCompetitor;
            Competitor = competitor;
            IdSkill = idSkill;
            Skill = skill;
            IdTrainingPLan = idTrainingPLan;
            TrainingPlan = trainingPlan;
            EvaluationDate = evaluationDate;
            Result = result;
        }
    }
}
