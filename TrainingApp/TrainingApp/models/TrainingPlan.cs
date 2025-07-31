using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingApp.models
{
    internal class TrainingPlan
    {
        public long IdTrainingPlan { get; set; }
        public string Code {  get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public long IdCompetitor { get; set; }
        public Competitor? Competitor { get; set; }
        public long IdSkill { get; set; }
        public Skill? Skill { get; set; }

        public TrainingPlan() { }

        public TrainingPlan(long idTrainingPlan, string code, DateTime startDate, DateTime endDate, long idCompetitor, Competitor? competitor, long idSkill, Skill? skill)
        {
            IdTrainingPlan = idTrainingPlan;
            Code = code;
            StartDate = startDate;
            EndDate = endDate;
            IdCompetitor = idCompetitor;
            Competitor = competitor;
            IdSkill = idSkill;
            Skill = skill;
        }
    }
}
