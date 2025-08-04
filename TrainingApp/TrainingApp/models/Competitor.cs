using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingApp.models
{
    internal class Competitor
    {
        public long IdCompetitor {  get; set; }
        public long Document {  get; set; }
        public string Fullname { get; set; }
        public string ImagePath { get; set; }
        public DateTime Birthdate { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public Status Status { get; set; } 

        public Competitor () { }

        public Competitor(long idCompetitor, long document, string fullname, string imagePath, DateTime birthdate, string address, string phone, string email, Status status)
        {
            IdCompetitor = idCompetitor;
            Document = document;
            Fullname = fullname;
            ImagePath = imagePath;
            Birthdate = birthdate;
            Address = address;
            Phone = phone;
            Email = email;
            Status = status;
        }
    }

    public enum Status
    {
        ACTIVO,
        INACTIVO
    }
}
