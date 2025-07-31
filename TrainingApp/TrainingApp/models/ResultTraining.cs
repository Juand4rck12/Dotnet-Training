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
        public DateTime EvaluationDate { get; set; }
        public decimal Result {  get; set; }

        public ResultTraining() { }

        public ResultTraining(long idResultTraining, long idCompetitor, Competitor? competitor, long idSkill, Skill? skill, DateTime evaluationDate, decimal result)
        {
            IdResultTraining = idResultTraining;
            IdCompetitor = idCompetitor;
            Competitor = competitor;
            IdSkill = idSkill;
            Skill = skill;
            EvaluationDate = evaluationDate;
            Result = result;
        }
    }
}
