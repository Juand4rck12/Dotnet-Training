using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingApp.models
{
    internal class Skill    
    {
        public long IdSkill {  get; set; }
        public string Code { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

        public Skill() { }

        public Skill(long idSkill, string code, string name, string description)
        {
            IdSkill = idSkill;
            Code = code;
            Name = name;
            Description = description;
        }
    }
}
